#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "ast.h"
#include "vars_interp.h"

typedef struct
{
  char *id;
  val_t val;
  int type;
  int flags;
} stackval_t;

typedef struct
{
  stackval_t *vals;
  int size;
} stack_t;

static stack_t vars, globals;

void s_push(stack_t *stack, stackval_t val)
{
  stack->vals = realloc(stack->vals, (stack->size + 1) * sizeof(stackval_t));
  assert(stack->vals != NULL);
  stack->vals[stack->size++] = val;
}

#define VAR_BORDER_FUNC 2
#define VAR_BORDER_BLOCK 1

static stackval_t *var_lookup(char *id, int border)
{
  for (int i = vars.size - 1; i >= 0; i--)
  {
    // printf("DEBUG: Checking var %s with flag %d\n", vars.vals[i].id, vars.vals[i].flags);
    if (vars.vals[i].flags >= border)
      break;
    // printf("DEBUG: Checking var behind border check %s\n", vars.vals[i].id);
    if (strcmp(vars.vals[i].id, id) == 0)
      return &vars.vals[i];
  }

  if (border == VAR_BORDER_BLOCK)
    return NULL;

  for (int i = globals.size - 1; i >= 0; i--)
  {
    if (strcmp(globals.vals[i].id, id) == 0)
      return &globals.vals[i];
  }

  return NULL;
}

void var_declare_global(char *id, void *val, int type)
{
  // printf("DEBUG: Declaring global variable %s, type %d\n", id, type);
  stackval_t *s = var_lookup(id, VAR_BORDER_BLOCK);
  if (s)
  {
    // Handle multiple declaration in same block
    printf("ERROR: Global variable '%s' has already been declared!\n", id);
    exit(1);
  }
  else
  {

    stackval_t new_val;
    new_val.id = strdup(id);
    new_val.type = type;
    new_val.flags = 0;

    switch (type)
    {

    case AST_INT_T:
      new_val.val.num = *(int *)val;
      break;

    case AST_DOUBLE_T:
      new_val.val.real = *(double *)val;
      break;

    case AST_STR_T:
      new_val.val.str = strdup((char *)val);
      break;

    case AST_CHAR_T:
      new_val.val.chr = *(char *)val;
      break;

    case AST_NONE_T:
      break;

    default:
      printf("ERROR: Unkown type passed to var_declare\n");
      exit(1);
    }
    s_push(&globals, new_val);
  }
}

void var_declare(char *id, void *val, int type)
{
  // printf("DEBUG: Declaring variable %s\n", id);
  stackval_t *s = var_lookup(id, VAR_BORDER_BLOCK);
  if (s)
  {
    // Handle multiple declaration in same block
    printf("ERROR: Local variable '%s' has already been declared!\n", id);
    exit(1);
  }
  else
  {

    stackval_t new_val;
    new_val.id = strdup(id);
    new_val.type = type;
    new_val.flags = 0;

    switch (type)
    {

    case AST_INT_T:
      new_val.val.num = *(int *)val;
      break;

    case AST_DOUBLE_T:
      new_val.val.real = *(double *)val;
      break;

    case AST_STR_T:
      new_val.val.str = strdup((char *)val);
      break;

    case AST_CHAR_T:
      new_val.val.chr = *(char *)val;
      break;

    case AST_NONE_T:
      break;

    default:
      printf("ERROR: Unkown type passed to var_declare\n");
      exit(1);
    }
    s_push(&vars, new_val);
    // var_dump(); // DEBUG
  }
}

void var_set(char *id, void *val, int type)
{
  stackval_t *s = var_lookup(id, VAR_BORDER_FUNC);
  if (s)
  {
    if (s->type != type)
    {
      printf("ERROR: Type mismatch in variable '%s'.\n", id);
      exit(1);
    }

    switch (type)
    {

    case AST_INT_T:
      s->val.num = *(int *)val;
      break;

    case AST_DOUBLE_T:
      s->val.real = *(double *)val;
      break;

    case AST_STR_T:
      if (s->val.str != NULL)
        free(s->val.str);
      s->val.str = strdup((char *)val);
      break;

    case AST_CHAR_T:
      s->val.chr = *(char *)val;
      break;

    case AST_NONE_T:
      break;

    default:
      printf("ERROR: Unkown type passed to var_set\n");
      exit(1);
    }
  }
  else
  {
    // Handle usage of undeclared variable
    printf("ERROR: Unable to set variable '%s'. Variable has not been declared yet!\n", id);
    exit(1);
  }
}

void *var_get(char *id, int *type)
{
  stackval_t *s = var_lookup(id, VAR_BORDER_FUNC);
  if (s)
  {

    *type = s->type;
    switch (s->type)
    {

    case AST_INT_T:
      return &s->val.num;
      break;

    case AST_DOUBLE_T:
      return &s->val.real;
      break;

    case AST_STR_T:
      return s->val.str;
      break;

    case AST_NONE_T:
      return NULL;
      break;

    default:
      printf("ERROR: Unkown type passed to var_get\n");
      exit(1);
    }
  }
  else
  {
    // Handle usage of undeclared variable
    printf("ERROR: Unable to get variable '%s'. Variable has not been declared yet!\n", id);
    exit(1);

    return 0;
  }
}

void var_enter_block(void)
{
  s_push(&vars, (stackval_t){.flags = VAR_BORDER_BLOCK, .id = ""});
}

void var_leave_block(void)
{
  int i;
  for (i = vars.size - 1; i >= 0; i--)
  {
    if (vars.vals[i].flags == VAR_BORDER_BLOCK)
      break;
  }
  vars.size = i;
}

void var_enter_func(void)
{
  s_push(&vars, (stackval_t){.flags = VAR_BORDER_FUNC, .id = ""});
}

void var_leave_func(void)
{
  int i;
  for (i = vars.size - 1; i >= 0; i--)
  {
    if (vars.vals[i].flags == VAR_BORDER_FUNC)
      break;
  }
  vars.size = i;
}

void var_dump(void)
{
  printf("-- TOP --\n");
  for (int i = vars.size - 1; i >= 0; i--)
  {
    if (vars.vals[i].flags == VAR_BORDER_FUNC)
    {
      printf("FUNCTION\n");
    }
    else if (vars.vals[i].flags == VAR_BORDER_BLOCK)
    {
      printf("BLOCK\n");
    }
    else
    {

      switch (vars.vals[i].type)
      {

      case AST_INT_T:
        printf("%s : %d\n", vars.vals[i].id, vars.vals[i].val.num);
        break;

      case AST_DOUBLE_T:
        printf("%s : %f\n", vars.vals[i].id, vars.vals[i].val.real);
        break;

      case AST_STR_T:
        printf("%s : %s\n", vars.vals[i].id, vars.vals[i].val.str);
        break;

      case AST_CHAR_T:
        printf("%s : %c\n", vars.vals[i].id, vars.vals[i].val.chr);
        break;

      case AST_NONE_T:
        printf("%s : NULL\n", vars.vals[i].id);
        break;

      default:
        printf("ERROR: Unkown type passed to var_dump\n");
      }
    }
  }
  printf("-- BOTTOM --\n");
  for (int i = globals.size - 1; i >= 0; i--)
  {
    switch (globals.vals[i].type)
    {
    case AST_INT_T:
      printf("%s : %d\n", globals.vals[i].id, globals.vals[i].val.num);
      break;

    case AST_DOUBLE_T:
      printf("%s : %f\n", globals.vals[i].id, globals.vals[i].val.real);
      break;

    case AST_STR_T:
      printf("%s : %s\n", globals.vals[i].id, globals.vals[i].val.str);
      break;

    case AST_CHAR_T:
      printf("%s : %c\n", globals.vals[i].id, globals.vals[i].val.chr);
      break;

    case AST_NONE_T:
      printf("%s : NULL\n", globals.vals[i].id);
      break;

    default:
      printf("ERROR: Unkown type passed to var_dump\n");
    }
  }
  printf("-- GLOBALS --\n\n");
}

#ifdef TEST
int main(void)
{
  var_enter_func();
  var_dump();
  var_declare_global("a", 2121);
  var_declare("a", 100);
  var_dump();
  var_declare("b", 200);
  var_dump();
  printf("%d\n", var_get("a"));
  var_enter_func();
  var_dump();
  printf("%d\n", var_get("a"));
  var_declare("a", 42);
  var_dump();
  var_declare("x", 432);
  var_dump();
  printf("%d\n", var_get("a"));
  var_enter_block();
  var_dump();
  var_declare("a", 9999);
  var_dump();
  var_set("x", 10000);
  var_dump();
  printf("%d\n", var_get("a"));
  printf("%d\n", var_get("x"));
  var_leave_func();
  var_dump();
  var_leave_func();
  var_dump();
  printf("%d\n", var_get("a"));
}

#endif
