#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "vars_interp.h"


typedef struct {
  char *id;
  int val;
  int flags;
} stackval_t;

typedef struct {
  stackval_t *vals;
  int size;
} stack_t;

static stack_t vars, globals;

void s_push (stack_t *stack, stackval_t val) {
  stack->vals = realloc(stack->vals, (stack->size + 1) * sizeof (stackval_t));
  assert(stack->vals != NULL);
  stack->vals[stack->size++] = val;
}

#define VAR_BORDER_FUNC 2
#define VAR_BORDER_BLOCK 1

static stackval_t *var_lookup (char *id, int border) {
  for (int i = vars.size-1; i >= 0; i--) {
    if (vars.vals[i].flags >= border)
      break;
    if (strcmp(vars.vals[i].id, id) == 0)
      return &vars.vals[i];
  }

  if (border == VAR_BORDER_BLOCK)
    return NULL;

  for (int i = globals.size-1; i >= 0; i--) {
    if (strcmp(globals.vals[i].id, id) == 0)
      return &globals.vals[i];
  }

  return NULL;
}



int var_declare_global (char *id, int val) {
  stackval_t *s = var_lookup (id, 0);
  if (s) {
    // Handle multiple declaration in same block
    printf("ERROR: GlobaL variable '%s' has already been declared!\n", id);
    exit(1);
  } else {
    s_push(&globals, (stackval_t) { .val = val, .id = strdup(id) });
  }

  return val;
}

int var_declare (char *id, int val) {
  stackval_t *s = var_lookup (id, VAR_BORDER_BLOCK);
  if (s) {
    // Handle multiple declaration in same block
    printf("ERROR: Local variable '%s' has already been declared!\n", id);
    exit(1);
  } else {
    s_push(&vars, (stackval_t) { .val = val, .id = strdup(id) });
  }

  return val;
}

int var_set (char *id, int val) {
  stackval_t *s = var_lookup (id, VAR_BORDER_FUNC);
  if (s)
    s->val = val;
  else {
    // Handle usage of undeclared variable
    printf("ERROR: Unable to set variable '%s'. Variable has not been declared yet!\n", id);
    exit(1);
  }

  return val;
}

int var_get (char *id) {
  stackval_t *s = var_lookup (id, VAR_BORDER_FUNC);
  if (s)
    return s->val;
  else {
    // Handle usage of undeclared variable
    printf("ERROR: Unable to get variable '%s'. Variable has not been declared yet!\n", id);
    exit(1);
    
    return 0;
  }
}

void var_enter_block (void) {
  s_push(&vars, (stackval_t) { .flags = VAR_BORDER_BLOCK, .id = "" });
}

void var_leave_block (void) {
  int i;
  for (i = vars.size-1; i >= 0; i--) {
    if (vars.vals[i].flags == VAR_BORDER_BLOCK)
      break;
  }
  vars.size = i;
}

void var_enter_func (void) {
  s_push(&vars, (stackval_t) { .flags = VAR_BORDER_FUNC, .id = "" });
}

void var_leave_func (void) {
  int i;
  for (i = vars.size-1; i >= 0; i--) {
    if (vars.vals[i].flags == VAR_BORDER_FUNC)
      break;
  }
  vars.size = i;
}

void var_dump (void) {
  printf("-- TOP --\n");
  for (int i = vars.size-1; i >= 0; i--) {
    if (vars.vals[i].flags == VAR_BORDER_FUNC) {
      printf("FUNCTION\n");
    } else if (vars.vals[i].flags == VAR_BORDER_BLOCK) {
      printf("BLOCK\n");
    } else {
      printf("%s : %d\n", vars.vals[i].id, vars.vals[i].val);
    }
  }
  printf("-- BOTTOM --\n");
  for (int i = globals.size-1; i >= 0; i--) {
      printf("%s : %d (global)\n", globals.vals[i].id, globals.vals[i].val);
  }
  printf("-- GLOBALS --\n\n");
}

#ifdef TEST
int main (void) {
  var_enter_func(); var_dump();
  var_declare_global("a", 2121);
  var_declare("a", 100); var_dump();
  var_declare("b", 200); var_dump();
  printf("%d\n", var_get("a"));
  var_enter_func(); var_dump();
  printf("%d\n", var_get("a"));
  var_declare("a", 42); var_dump();
  var_declare("x", 432); var_dump();
  printf("%d\n", var_get("a"));
  var_enter_block(); var_dump();
  var_declare("a", 9999); var_dump();
  var_set("x", 10000); var_dump();
  printf("%d\n", var_get("a"));
  printf("%d\n", var_get("x"));
  var_leave_func(); var_dump();
  var_leave_func(); var_dump();
  printf("%d\n", var_get("a"));
}

#endif

