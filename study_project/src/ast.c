#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "../build/styx.tab.h"
#include "vars_interp.h"
#include "ast.h"

struct funclist *funclist = NULL;
struct paramlist *paramlist = NULL;

// Add function to list
void add_function(char *name, astnode_t *node)
{
    struct funclist *new = malloc(sizeof *new);
    new->name = strdup(name);
    new->node = node;
    new->next = funclist;
    funclist = new;
}

// Add parameter to queue
void add_param(struct paramlist **list, int val)
{
    struct paramlist *new = malloc(sizeof *new);
    new->val = val;
    new->next = *list;
    *list = new;
}

// Get parameter from queue
int get_param(struct paramlist **list)
{

    if (*list == NULL)
    {
        printf("Error: No parameters left in queue\n");
        exit(1 Error
             : Type mismatch in operation 267);
    }
    struct paramlist *current = *list;
    *list = current->next;
    int val = current->val;
    free(current);
    return val;
}

// Find function in list
astnode_t *find_function(char *name)
{
    struct funclist *current = funclist;
    while (current)
    {
        if (strcmp(current->name, name) == 0)
        {
            return current->node;
        }
        current = current->next;
    }
    return NULL;
}

int astNodeCount = 0;

// Allocate new node of given type
astnode_t *new_astnode(int type)
{
    astnode_t *node = calloc(sizeof *node, 1);
    node->id = astNodeCount++;
    node->type = type;
    node->data_type = AST_NONE_T;

    for (int i = 0; i < MAXCHILDREN; i++)
    {
        node->child[i] = NULL;
    }

    return node;
}

void print_ast_console(astnode_t *root)
{
    printf("AST Node %d: %d\n", root->id, root->type);
    for (int i = 0; i < MAXCHILDREN; i++)
    {
        if (root->child[i] != NULL)
        {
            print_ast_console(root->child[i]);
        }
    }
    printf(") ");
}

// node2str funciton required for printing AST
char *node2str(astnode_t *node)
{
    char *str = malloc(100);
    if (node->data_type == AST_NUM_T)
    {
        sprintf(
            str,
            "id: %d\n %d\n NUM: %d",
            node->id,
            node->type,
            node->val.num);
    }
    else if (node->data_type == AST_ID_T)
    {
        sprintf(
            str,
            "id: %d\n %d\n ID: %s",
            node->id,
            node->type,
            node->val.str);
    }
    else if (node->data_type == AST_STR_T)
    {
        sprintf(
            str,
            "id: %d\n %d\n STR: %s",
            node->id,
            node->type,
            node->val.str);
    }
    else
    {
        sprintf(
            str,
            "id: %d\n %d",
            node->id,
            node->type);
    }
    return str;
}

// GraphViz visualization
void print_ast(astnode_t *root, int depth)
{

    static FILE *dot;
    if (depth == 0)
    {
        dot = fopen("ast.gv", "w");
        fprintf(dot, "digraph ast {\n");
    }

    // Create graph node
    fprintf(dot, "n%d [label=\"%s\"];\n", root->id, node2str(root));
    for (int i = 0; i < MAXCHILDREN; i++)
    {
        if (root->child[i])
        {
            fprintf(dot, "n%d -> n%d;\n", root->id, root->child[i]->id);
            print_ast(root->child[i], depth + 1);
        }
    }
    if (depth == 0)
    {
        fprintf(dot, "}\n");
        fclose(dot);
    }
}

int return_val = 0;

astnode_t *operation(astnode_t *root, const int op)
{
    astnode_t *node1 = exec_ast(root->child[0]);
    astnode_t *node2 = exec_ast(root->child[1]);

    if (node1->data_type != node2->data_type)
    {
        printf("Error: Type mismatch in operation %d\n", op);
        printf("Type 1: %d, Type 2: %d\n", node1->data_type, node2->data_type);
        exit(1);
    }

    root->data_type = node1->data_type;
    switch (node1->data_type)
    {
    case AST_NUM_T:
        switch (op)
        {
        case LE:
            root->val.num = node1->val.num <= node2->val.num;
            break;

        case GE:
            root->val.num = node1->val.num >= node2->val.num;
            break;

        case EQ:
            root->val.num = node1->val.num == node2->val.num;
            break;

        case NE:
            root->val.num = node1->val.num != node2->val.num;
            break;

        case GT:
            root->val.num = node1->val.num > node2->val.num;
            break;

        case LT:
            root->val.num = node1->val.num < node2->val.num;
            break;

        case AND:
            root->val.num = node1->val.num && node2->val.num;
            break;

        case OR:
            root->val.num = node1->val.num || node2->val.num;
            break;

        case PLUS:
            root->val.num = node1->val.num + node2->val.num;
            break;

        case MINUS:
            root->val.num = node1->val.num - node2->val.num;
            break;

        case MULT:
            root->val.num = node1->val.num * node2->val.num;
            break;

        case DIV:
            root->val.num = node1->val.num / node2->val.num;
            break;

        case MOD:
            root->val.num = node1->val.num % node2->val.num;
            break;

        default:
            printf("Error: Invalid operation %d for type %d and %d.\n", op, node1->data_type, node2->data_type);
            exit(1);
        }
        break;

    case AST_REAL_T:
        switch (op)
        {
        case LE:
            root->val.real = node1->val.real <= node2->val.real;
            break;

        case GE:
            root->val.real = node1->val.real >= node2->val.real;
            break;

        case EQ:
            root->val.real = node1->val.real == node2->val.real;
            break;

        case NE:
            root->val.real = node1->val.real != node2->val.real;
            break;

        case GT:
            root->val.real = node1->val.real > node2->val.real;
            break;

        case LT:
            root->val.real = node1->val.real < node2->val.real;
            break;

        case AND:
            root->val.real = node1->val.real && node2->val.real;
            break;

        case OR:
            root->val.real = node1->val.real || node2->val.real;
            break;

        case PLUS:
            root->val.real = node1->val.real + node2->val.real;
            break;

        case MINUS:
            root->val.real = node1->val.real - node2->val.real;
            break;

        case MULT:
            root->val.real = node1->val.real * node2->val.real;
            break;

        case DIV:
            root->val.real = node1->val.real / node2->val.real;
            break;

        case MOD:
            printf("Error: Cannot use MOD on REAL.\n");
            exit(1);
            break;

        default:
            printf("Error: Invalid operation %d for type %d and %d.\n", op, node1->data_type, node2->data_type);
            exit(1);
        }
        break;

    case AST_STR_T:

        switch (op)
        {
        case LE:
            root->val.num = strcmp(node1->val.str, node2->val.str) <= 0;
            root->data_type = AST_NUM_T;
            break;

        case GE:
            root->val.num = strcmp(node1->val.str, node2->val.str) >= 0;
            root->data_type = AST_NUM_T;
            break;

        case EQ:
            root->val.num = strcmp(node1->val.str, node2->val.str) == 0;
            root->data_type = AST_NUM_T;
            break;

        case NE:
            root->val.num = strcmp(node1->val.str, node2->val.str) != 0;
            root->data_type = AST_NUM_T;
            break;

        case GT:
            root->val.num = strcmp(node1->val.str, node2->val.str) > 0;
            root->data_type = AST_NUM_T;
            break;

        case LT:
            root->val.num = strcmp(node1->val.str, node2->val.str) < 0;
            root->data_type = AST_NUM_T;
            break;

        case AND:
            printf("Error: Cannot use AND on STR.\n");
            exit(1);
            break;

        case OR:
            printf("Error: Cannot use OR on STR.\n");
            exit(1);
            break;

        case PLUS:
            root->val.str = malloc(strlen(node1->val.str) + strlen(node2->val.str) + 1);
            strcpy(root->val.str, node1->val.str);
            strcat(root->val.str, node2->val.str);
            break;

        case MINUS:
            printf("Error: Cannot use MINUS on STR.\n");
            exit(1);
            break;

        case MULT:
            printf("Error: Cannot use MULT on STR.\n");
            exit(1);
            break;

        case DIV:
            printf("Error: Cannot use DIV on STR.\n");
            exit(1);
            break;

        case MOD:
            printf("Error: Cannot use MOD on STR.\n");
            exit(1);
            break;

        default:
            printf("Error: Invalid operation %d for type %d and %d.\n", op, node1->data_type, node2->data_type);
            exit(1);
        }
        break;

    default:

        printf("Unkonwn data type %d\n", root->data_type);
        break;
    }

    return root;
}

// Execute AST
astnode_t *exec_ast(astnode_t *root)
{
    // printf("Executing AST Node %d: %d\n", root->id, root->type); // For debugging

    switch (root->type)
    {

    case PROGRAM:
    case MAIN:
    case STATEMENTS:
    case STATEMENT:
    case DECLARATIONS:
    case GLOBAL_DECLARATIONS:
    case FUNCTIONS:
    case PARAMETERS:
        for (int i = 0; i < MAXCHILDREN; i++)
        {
            if (root->child[i] != NULL)
            {
                exec_ast(root->child[i]);
            }
        }
        break;

    case BODY:
        var_enter_block();
        for (int i = 0; i < MAXCHILDREN; i++)
        {
            if (root->child[i] != NULL)
            {
                exec_ast(root->child[i]);
            }
        }
        var_leave_block();
        break;

    case ASSIGNMENT:
    {
        astnode_t *node = exec_ast(root->child[0]);
        if (node->data_type == AST_NUM_T)
        {
            var_set(root->val.str, node->val.num);
        }
        else
        {
            printf("Error: Cannot assign anything else than INT yet.\n");
            exit(1);
        }
    }
    break;

    case EXPR_TERM:
        return exec_ast(root->child[0]);
    case EXPR_FUNCTION_CALL:
        return exec_ast(root->child[0]);
    case EXPR_PLUS:
        return operation(root, PLUS);
    case EXPR_MINUS:
        return operation(root, MINUS);
    case EXPR_LE:
        return operation(root, LE);
    case EXPR_GE:
        return operation(root, GE);
    case EXPR_LT:
        return operation(root, LT);
    case EXPR_GT:
        return operation(root, GT);
    case EXPR_EQ:
        return operation(root, EQ);
    case EXPR_NE:
        return operation(root, NE);
    case EXPR_AND:
        return operation(root, AND);
    case EXPR_OR:
        return operation(root, OR);
    case TERM_FACTOR:
        return exec_ast(root->child[0]);
    case TERM_MUL: // Fall through
    case TERM_DIV: // Fall through
    case TERM_MOD:
    {
        astnode_t *val1 = exec_ast(root->child[0]);
        astnode_t *val2 = exec_ast(root->child[1]);

        astnode_t *ret = malloc(sizeof(astnode_t));
        ret->data_type = AST_NUM_T;
        ret->val.num = 0;

        if (val1->data_type != AST_NUM_T || val2->data_type != AST_NUM_T)
        {
            printf("Error: Cannot multiply non-numbers yet\n");
            exit(1);
        }

        if (strcmp(root->val.str, "*") == 0)
        {

            ret->val.num = val1->val.num * val2->val.num;
            return ret;
        }
        else if (strcmp(root->val.str, "/") == 0)
        {

            ret->val.num = val1->val.num / val2->val.num;
            return ret;
        }
        else if (strcmp(root->val.str, "%") == 0)
        {
            ret->val.num = val1->val.num % val2->val.num;
            return ret;
        }
    }
    break;

    case FACTOR_ID:
    {
        astnode_t *ret = malloc(sizeof(astnode_t));
        ret->data_type = AST_NUM_T;
        ret->val.num = var_get(root->val.str);
        return ret;
    }
    break;

    case FACTOR_NUM:
    {
        // Create new astnode for this number
        astnode_t *newnode = malloc(sizeof(astnode_t));
        newnode->data_type = AST_NUM_T;
        newnode->val.num = root->val.num;

        return newnode;
    }
    break;

    case FACTOR_REAL:
    {
        astnode_t *newnode = malloc(sizeof(astnode_t));
        newnode->data_type = AST_REAL_T;
        newnode->val.real = root->val.real;
        return newnode;
    }
    break;

    case FACTOR_PARENTHESIS:
        return exec_ast(root->child[0]);
        break;

    case FACTOR_FUNCTION_CALL:
        return exec_ast(root->child[0]);
        break;

    case FACTOR_RAND:
    {
        srand(time(NULL));
        astnode_t *newnode = malloc(sizeof(astnode_t));
        newnode->data_type = AST_NUM_T;
        newnode->val.num = rand() % (root->val.num);
        return newnode;
    }
    break;

    case IF:
    {
        astnode_t *condition = exec_ast(root->child[0]);

        if (condition->val.num)
        {
            exec_ast(root->child[1]);
        }
    }
    break;

    case IFELSE:
    {
        astnode_t *condition = exec_ast(root->child[0]);

        if (condition->val.num)
        {
            exec_ast(root->child[1]);
        }
        else
        {
            exec_ast(root->child[2]);
        }
    }
    break;

    case PRINT:
    {
        astnode_t *val = exec_ast(root->child[0]);

        if (val->data_type == AST_NUM_T)
        {
            printf("%d", val->val.num);
        }
        else if (val->data_type == AST_REAL_T)
        {
            printf("%f", val->val.real);
        }
        else if (val->data_type == AST_STR_T)
        {
            printf("%s", val->val.str);
        }
        else
        {
            printf("Error: Cannot print this type yet\n");
            exit(1);
        }
    }
    break;

    case PRINT_STR:
        printf("%s", root->val.str);
        break;

    case SCAN:
    {
        // Read int from stdin using fgets
        char buf[100];
        printf("<< ");
        char *s = fgets(buf, 100, stdin);
        if (s == NULL)
        {
            printf("EOF\n");
            exit(1);
        }
        var_set(root->val.str, atoi(buf));
    }
    break;

    case FOR:
        // TODO: Add assignment/declaration in for loop; add different types

        for (; exec_ast(root->child[0])->val.num; exec_ast(root->child[1]))
        {
            exec_ast(root->child[2]);
        }
        break;

    case DECLARATION:
        var_declare(root->val.str, 0);
        break;

    case GLOBAL_DECLARATION:
        var_declare_global(root->val.str, 0);
        break;

    case RETURN:
    {
        // return from current function
        astnode_t *val = exec_ast(root->child[0]);

        if (val->data_type == AST_NUM_T)
        {
            return_val = val->val.num;
        }
        else
        {
            printf("Error: Cannot return this type yet\n");
            exit(1);
        }
    }
    break;

    case FUNCTION_CALL:

    {
        astnode_t *func = find_function(root->val.str);
        if (func == NULL)
        {
            printf("Function %s not found\n", root->val.str);
            exit(1);
        }
        else
        {

            if (root->child[0] != NULL)
            {
                exec_ast(root->child[0]); // Add function arguments to paramlist
            }

            var_enter_func();
            if (func->child[0] != NULL)
            {
                exec_ast(func->child[0]); // Create local variable from paramlist
            }
            exec_ast(func->child[1]); // Execute function body
            var_leave_func();

            astnode_t *return_node = malloc(sizeof(astnode_t));
            return_node->data_type = AST_NUM_T;
            return_node->val.num = return_val;
            return return_node;
        }
    }
    break;

    case PARAMETER:
    {
        int param = get_param(&paramlist);
        var_declare(root->val.str, param); // TODO: Add other types
    }
    break;

    case FUNCTION:
        // Function definition
        add_function(root->val.str, root);
        break;

    case ARG_EXPR:
    {
        astnode_t *arg = exec_ast(root->child[0]); // TODO: Add other types
        if (arg->data_type == AST_NUM_T)
        {
            add_param(&paramlist, arg->val.num);
        }
        else
        {
            printf("Error: Cannot pass this type yet\n");
            exit(1);
        }
    }
    break;

    case ARGS_EXPR:

    {
        exec_ast(root->child[0]);
        astnode_t *arg = exec_ast(root->child[1]);
        if (arg->data_type == AST_NUM_T)
        {
            add_param(&paramlist, arg->val.num);
        }
        else
        {
            printf("Error: Cannot pass this type yet\n");
            exit(1);
        }
    }
    break;

    default:
        printf("Error: Unknown node %d\n", root->type);
        break;
    }

    // Default return value
    astnode_t *newnode = malloc(sizeof(astnode_t));
    newnode->data_type = AST_NUM_T;
    newnode->val.num = 0;

    return newnode;
}
