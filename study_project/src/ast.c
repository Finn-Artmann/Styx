#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "../build/styx.tab.h"
#include "vars_interp.h"
#include "ast.h"

struct funclist *funclist = NULL;
struct paramlist *paramlist = NULL;

extern const char **token_table;

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
void add_param(struct paramlist **list, void *val, int type)
{
    struct paramlist *new = malloc(sizeof *new);

    switch (type)
    {

    case AST_INT_T:
        new->val.num = *(int *)val;
        break;

    case AST_DOUBLE_T:
        new->val.real = *(double *)val;
        break;

    case AST_CHAR_T:
        new->val.chr = *(char *)val;
        break;

    case AST_STR_T:
        new->val.str = strdup((char *)val);
        break;

    case AST_NONE_T:
        break;

    default:
        printf("Error: Unknown type in add_param\n");
        exit(1);
    }

    new->type = type;
    new->next = *list;
    *list = new;
}

// Get parameter from queue
void *get_param(struct paramlist **list, int *type)
{

    if (*list == NULL)
    {
        printf("Error: No parameters left in queue\n");
        exit(1);
    }
    struct paramlist *current = *list;
    *list = current->next;
    *type = current->type;

    void *val = NULL;
    switch (current->type)
    {
    case AST_INT_T:
        val = malloc(sizeof(int));
        *(int *)val = current->val.num;
        break;

    case AST_DOUBLE_T:
        val = malloc(sizeof(double));
        *(double *)val = current->val.real;
        break;

    case AST_CHAR_T:
        val = malloc(sizeof(char));
        *(char *)val = current->val.chr;
        break;

    case AST_STR_T:
        val = strdup(current->val.str);
        break;

    case AST_NONE_T:
        val = NULL;
        break;

    default:
        printf("Error: Unknown type in get_param\n");
        exit(1);
    }
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

const char *ast_token2str(int type)
{
    return token_table[type - 258 + 3];
}

char *ast_type2str(int type)
{

    switch (type)
    {
    case AST_INT_T:
        return "int";

    case AST_DOUBLE_T:
        return "double";

    case AST_CHAR_T:
        return "char";

    case AST_STR_T:
        return "string";

    case AST_ID_T:
        return "id";

    case AST_NONE_T:
        return "none_t";

    default:
        printf("Error: Unknown type %d in ast_type2str\n", type);
        return "unknown";
    }
}

// node2str funciton required for printing AST
char *node2str(astnode_t *node)
{
    char *str = malloc(100);

    switch (node->data_type)
    {
    case AST_INT_T:
        sprintf(
            str,
            "id: %d\n %s\n %s\n NUM: %d",
            node->id,
            node->name,
            ast_type2str(AST_INT_T),
            node->val.num);
        break;

    case AST_ID_T:
        sprintf(
            str,
            "id: %d\n %s\n %s\n ID: %s",
            node->id,
            node->name,
            ast_type2str(AST_ID_T),
            node->val.str);
        break;

    case AST_STR_T:
        sprintf(
            str,
            "id: %d\n %s\n %s\n STR: %s",
            node->id,
            node->name,
            ast_type2str(AST_STR_T),
            node->val.str);
        break;

    case AST_CHAR_T:
        sprintf(
            str,
            "id: %d\n %s\n %s\n CHAR: %c",
            node->id,
            node->name,
            ast_type2str(AST_CHAR_T),
            node->val.chr);
        break;

    case AST_DOUBLE_T:
        sprintf(
            str,
            "id: %d\n %s\n %s\n REAL: %f",
            node->id,
            node->name,
            ast_type2str(AST_DOUBLE_T),
            node->val.real);
        break;

    case AST_NONE_T:
        sprintf(
            str,
            "id: %d\n %s\n %s",
            node->id,
            node->name,
            ast_type2str(AST_NONE_T));
        break;

    default:
        break;
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

val_t return_val;
int return_val_type = AST_NONE_T;

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
    case AST_INT_T:
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

    case AST_DOUBLE_T:
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
            root->data_type = AST_INT_T;
            break;

        case GE:
            root->val.num = strcmp(node1->val.str, node2->val.str) >= 0;
            root->data_type = AST_INT_T;
            break;

        case EQ:
            root->val.num = strcmp(node1->val.str, node2->val.str) == 0;
            root->data_type = AST_INT_T;
            break;

        case NE:
            root->val.num = strcmp(node1->val.str, node2->val.str) != 0;
            root->data_type = AST_INT_T;
            break;

        case GT:
            root->val.num = strcmp(node1->val.str, node2->val.str) > 0;
            root->data_type = AST_INT_T;
            break;

        case LT:
            root->val.num = strcmp(node1->val.str, node2->val.str) < 0;
            root->data_type = AST_INT_T;
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

    case AST_CHAR_T:
        switch (op)
        {
        case LE:
            root->val.num = node1->val.chr <= node2->val.chr;
            root->data_type = AST_INT_T;
            break;

        case GE:
            root->val.num = node1->val.chr >= node2->val.chr;
            root->data_type = AST_INT_T;
            break;

        case EQ:
            root->val.num = node1->val.chr == node2->val.chr;
            root->data_type = AST_INT_T;
            break;

        case NE:
            root->val.num = node1->val.chr != node2->val.chr;
            root->data_type = AST_INT_T;
            break;

        case GT:
            root->val.num = node1->val.chr > node2->val.chr;
            root->data_type = AST_INT_T;
            break;

        case LT:
            root->val.num = node1->val.chr < node2->val.chr;
            root->data_type = AST_INT_T;
            break;

        case AND:
            printf("Error: Cannot use AND on CHAR.\n");
            exit(1);
            break;

        case OR:
            printf("Error: Cannot use OR on CHAR.\n");
            exit(1);
            break;

        case PLUS:
            printf("Error: Cannot use PLUS on CHAR.\n");
            exit(1);
            break;

        case MINUS:
            printf("Error: Cannot use MINUS on CHAR.\n");
            exit(1);
            break;

        case MULT:
            printf("Error: Cannot use MULT on CHAR.\n");
            exit(1);
            break;

        case DIV:
            printf("Error: Cannot use DIV on CHAR.\n");
            exit(1);
            break;

        case MOD:
            printf("Error: Cannot use MOD on CHAR.\n");
            exit(1);
            break;

        default:
            printf("Error: Invalid operation %d for type %d and %d.\n", op, node1->data_type, node2->data_type);
            exit(1);
        }
        break;

    case AST_NONE_T:
        printf("Error: Cannot use NONE type for operations.\n");
        exit(1);
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
    // printf("Executing AST Node %d: %s\n", root->id, ast_token2str(root->type)); // For debugging

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

        switch (node->data_type)
        {
        case AST_INT_T:
            var_set(root->val.str, &node->val.num, AST_INT_T);
            break;

        case AST_DOUBLE_T:
            var_set(root->val.str, &node->val.real, AST_DOUBLE_T);
            break;

        case AST_STR_T:
            var_set(root->val.str, node->val.str, AST_STR_T);
            break;

        case AST_CHAR_T:
            var_set(root->val.str, &node->val.chr, AST_CHAR_T);
            break;

        default:
            printf("ERROR: Unsupported data type for assignment.\n");
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
    case TERM_MUL:
        return operation(root, MULT);
    case TERM_DIV:
        return operation(root, DIV);
    case TERM_MOD:
        return operation(root, MOD);
    case FACTOR_ID:
    {
        astnode_t *ret = malloc(sizeof(astnode_t));
        int type = 0;
        void *val = var_get(root->val.str, &type);

        if (val)
        {
            ret->data_type = type;
            switch (type)
            {

            case AST_INT_T:
                ret->val.num = *(int *)val;
                break;

            case AST_DOUBLE_T:
                ret->val.real = *(double *)val;
                break;

            case AST_STR_T:
                ret->val.str = val;
                break;

            case AST_CHAR_T:
                ret->val.chr = *(char *)val;
                break;

            default:
                printf("ERROR: Unsupported data type for FACTOR_ID.\n");
                exit(1);
            }

            return ret;
        }
        else
        {
            free(ret);
            printf("ERROR: Variable %s not found.\n", root->val.str);
            exit(1);
        }
    }
    break;

    case FACTOR_NUM:
    {
        // Create new astnode for this number
        astnode_t *newnode = malloc(sizeof(astnode_t));
        newnode->data_type = AST_INT_T;
        newnode->val.num = root->val.num;

        return newnode;
    }
    break;

    case FACTOR_STRING:
    {
        // Create new astnode for this string
        astnode_t *newnode = malloc(sizeof(astnode_t));
        newnode->data_type = AST_STR_T;
        newnode->val.str = root->val.str;

        return newnode;
    }
    break;

    case FACTOR_CHAR:
    {
        // Create new astnode for this char
        astnode_t *newnode = malloc(sizeof(astnode_t));
        newnode->data_type = AST_CHAR_T;
        newnode->val.chr = root->val.chr;

        return newnode;
    }
    break;

    case FACTOR_REAL:
    {

        astnode_t *newnode = malloc(sizeof(astnode_t));
        newnode->data_type = AST_DOUBLE_T;
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

    case SYSTEM_CALL:
    {
        root->val.num = system(root->val.str);
        return root;
    }
    break;

    case FACTOR_RAND:
    {
        srand(time(NULL));
        astnode_t *newnode = malloc(sizeof(astnode_t));
        newnode->data_type = AST_INT_T;
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

        switch (val->data_type)
        {

        case AST_INT_T:
            printf("%d", val->val.num);
            break;

        case AST_DOUBLE_T:
            printf("%f", val->val.real);
            break;

        case AST_ID_T: // Fallthrough
        case AST_STR_T:
            printf("%s", val->val.str);
            break;

        case AST_CHAR_T:
            printf("%c", val->val.chr);
            break;

        case AST_NONE_T:
            printf("NULL");
            break;

        default:
            printf("ERROR: Unsupported data type for PRINT.\n");
            exit(1);
        }
    }
    break;

    case PRINT_WIDTH:
    {
        astnode_t *width_node = exec_ast(root->child[0]);

        if (width_node->data_type != AST_INT_T)
        {
            printf("ERROR: PRINT_WIDTH requires an integer.\n");
            exit(1);
        }

        int width = width_node->val.num;
        astnode_t *val = exec_ast(root->child[1]);

        switch (val->data_type)
        {

        case AST_INT_T:
            printf("%*d", width, val->val.num);
            break;

        case AST_DOUBLE_T:
            printf("%*f", width, val->val.real);
            break;

        case AST_ID_T: // Fallthrough
        case AST_STR_T:
            printf("%*s", width, val->val.str);
            break;

        case AST_CHAR_T:
            printf("%*c", width, val->val.chr);
            break;

        case AST_NONE_T:
            printf("%*s", width, "NULL");
            break;

        default:
            printf("ERROR: Unsupported data type for PRINT_WIDTH.\n");
            exit(1);
        }
    }
    break;

    case PRINT_STR:
        printf("%s", root->val.str);
        break;

    case SCAN:
    {
        // Read value from stdin using fgets
        char buf[100];
        printf("<< ");
        char *s = fgets(buf, 100, stdin);
        if (s == NULL)
        {
            printf("EOF\n");
            exit(1);
        }

        switch (root->data_type)
        {

        case AST_INT_T:
        {
            int scanned = atoi(buf);
            var_set(root->val.str, &scanned, AST_INT_T);
        }
        break;

        case AST_DOUBLE_T:
        {
            double scanned = atof(buf);
            var_set(root->val.str, &scanned, AST_DOUBLE_T);
        }
        break;

        case AST_STR_T:
            var_set(root->val.str, buf, AST_STR_T);
            break;

        case AST_CHAR_T:
        {
            char scanned = buf[0];
            var_set(root->val.str, &scanned, AST_CHAR_T);
        }
        break;

        default:
            printf("ERROR: Unsupported data type for SCAN.\n");
            exit(1);
        }
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
    {
        // printf("DEBUG: Declaring variable %s\n", root->val.str);
        val_t inital_val;
        switch (root->data_type)
        {
        case AST_DOUBLE_T:
            inital_val.real = 0.0;
            var_declare(root->val.str, &inital_val.real, AST_DOUBLE_T);
            break;
        case AST_INT_T:
            inital_val.num = 0;
            var_declare(root->val.str, &inital_val.num, AST_INT_T);
            break;

        case AST_STR_T:
        {
            inital_val.str = malloc(sizeof(char) * 100);
            inital_val.str[0] = '\0';
            var_declare(root->val.str, inital_val.str, AST_STR_T);
        }
        break;

        case AST_CHAR_T:
            inital_val.chr = '\0';
            var_declare(root->val.str, &inital_val.chr, AST_CHAR_T);
            break;

        default:
            printf("ERROR: Unsupported data type for declaration.\n");
            exit(1);
        }
    }
    break;

    case DECLARATION_ASSIGN:
    {
        astnode_t *val = exec_ast(root->child[0]);
        val_t variable;

        // printf("DEBUG: DeclAssign %s (%d)\n", root->val.str, root->data_type);

        switch (root->data_type)
        {
        case AST_DOUBLE_T:
            variable.real = val->val.real;
            var_declare(root->val.str, &variable.real, AST_DOUBLE_T);
            break;
        case AST_INT_T:
            variable.num = val->val.num;
            var_declare(root->val.str, &variable.num, AST_INT_T);
            break;

        case AST_STR_T:
            variable.str = val->val.str;
            var_declare(root->val.str, variable.str, AST_STR_T);
            break;

        case AST_CHAR_T:
            variable.chr = val->val.chr;
            var_declare(root->val.str, &variable.chr, AST_CHAR_T);
            break;

        default:
            printf("ERROR: Unsupported data type for declaration.\n");
            exit(1);
        }
    }
    break;

    case GLOBAL_DECLARATION: // TODO: Add global declaration assign
    {
        val_t inital_val;
        switch (root->data_type)
        {
        case AST_DOUBLE_T:
            inital_val.real = 0.0;
            var_declare_global(root->val.str, &inital_val.real, AST_DOUBLE_T);
            break;
        case AST_INT_T:
            inital_val.num = 0;
            var_declare_global(root->val.str, &inital_val.num, AST_INT_T);
            break;

        case AST_STR_T:
        {
            // printf("DEBUG: Declaring global variable %s\n", root->val.str);
            inital_val.str = malloc(sizeof(char) * 100);
            inital_val.str[0] = '\0';
            var_declare_global(root->val.str, inital_val.str, AST_STR_T);
        }
        break;

        case AST_CHAR_T:
            inital_val.chr = '\0';
            var_declare_global(root->val.str, &inital_val.chr, AST_CHAR_T);
            break;

        default:
            printf("ERROR: Unsupported data type for declaration.\n");
            exit(1);
        }
    }
    break;

    case RETURN:
    {
        // return from current function
        astnode_t *val = exec_ast(root->child[0]);

        switch (val->data_type)
        {
        case AST_INT_T:
            return_val_type = AST_INT_T;
            return_val.num = val->val.num;
            break;
        case AST_DOUBLE_T:
            return_val_type = AST_DOUBLE_T;
            return_val.real = val->val.real;
            break;
        case AST_STR_T:
            return_val_type = AST_STR_T;
            return_val.str = val->val.str;
            break;
        case AST_CHAR_T:
            return_val_type = AST_CHAR_T;
            return_val.chr = val->val.chr;
            break;
        default:
            printf("Error: Unsupported data type for return.\n");
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
            return_node->data_type = func->data_type;

            switch (return_node->data_type)
            {

            case AST_INT_T:
                return_node->val.num = return_val.num;
                break;

            case AST_DOUBLE_T:
                return_node->val.real = return_val.real;
                break;

            case AST_STR_T:
                return_node->val.str = return_val.str;
                break;

            case AST_CHAR_T:
                return_node->val.chr = return_val.chr;
                break;

            case AST_NONE_T:
                break;

            default:
                printf("Error: Unsupported data type %s for return.\n", ast_type2str(return_node->data_type));
                exit(1);
            }

            return return_node;
        }
    }
    break;

    case PARAMETER:
    {
        int type = 0;
        void *param = get_param(&paramlist, &type);
        var_declare(root->val.str, param, type);
    }
    break;

    case FUNCTION:
        // Function definition
        add_function(root->val.str, root);
        break;

    case ARG_EXPR:
    {
        astnode_t *arg = exec_ast(root->child[0]); // TODO: Add other types

        switch (arg->data_type)
        {

        case AST_INT_T:
            add_param(&paramlist, &arg->val.num, AST_INT_T);
            break;

        case AST_DOUBLE_T:
            add_param(&paramlist, &arg->val.real, AST_DOUBLE_T);
            break;

        case AST_CHAR_T:
            add_param(&paramlist, &arg->val.chr, AST_CHAR_T);
            break;

        case AST_STR_T:
            add_param(&paramlist, arg->val.str, AST_STR_T);
            break;

        case AST_NONE_T:
            add_param(&paramlist, NULL, AST_NONE_T);
            break;

        default:
            printf("Error: Unsupported data type for ARG_EXPR.\n");
            exit(1);
        }
    }
    break;

    case ARGS_EXPR:

    {
        exec_ast(root->child[0]);
        astnode_t *arg = exec_ast(root->child[1]);
        switch (arg->data_type)
        {

        case AST_INT_T:
            add_param(&paramlist, &arg->val.num, AST_INT_T);
            break;

        case AST_DOUBLE_T:
            add_param(&paramlist, &arg->val.real, AST_DOUBLE_T);
            break;

        case AST_CHAR_T:
            add_param(&paramlist, &arg->val.chr, AST_CHAR_T);
            break;

        case AST_STR_T:
            add_param(&paramlist, arg->val.str, AST_STR_T);
            break;

        case AST_NONE_T:
            add_param(&paramlist, NULL, AST_NONE_T);
            break;

        default:
            printf("Error: Unsupported data type for ARG_EXPR.\n");
            exit(1);
        }
    }
    break;

    default:
        printf("Error: Unknown node %s with type id %d\n", ast_type2str(root->type), root->type);
        break;
    }

    // Default return value
    astnode_t *newnode = malloc(sizeof(astnode_t));
    newnode->data_type = AST_INT_T;
    newnode->val.num = 0;

    return newnode;
}
