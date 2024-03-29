#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "../build/styx.tab.h"
#include "vars_interp.h"
#include "babylonian_converter.h"
#include "value_type.h"
#include "parameters.h"
#include "functions.h"
#include "output_ast.h"
#include "ast.h"

int astNodeCount = 0;

// Allocate new node of given type
astnode_t *new_astnode(int type)
{
    astnode_t *node = calloc(sizeof *node, 1);
    node->id = astNodeCount++;
    node->type = type;
    node->data_type = AST_NONE_T;
    node->is_const = 0;

    for (int i = 0; i < MAXCHILDREN; i++)
    {
        node->child[i] = NULL;
    }

    return node;
}

void *get_node_val(astnode_t *node)
{
    switch (node->data_type)
    {
    case AST_INT_T:
        return &node->val.num;

    case AST_DOUBLE_T:
        return &node->val.real;

    case AST_CHAR_T:
        return &node->val.chr;

    case AST_STR_T:
        return node->val.str;

    case AST_NONE_T:
        return NULL;

    default:
        printf("Error: Unknown type in get_node_val\n");
        exit(1);
    }
}

int check_and_cast_condition(astnode_t *node)
{
    // get_node_val returns void* , check if it is NULL and then cast to int
    void *cond_ptr = get_node_val(exec_ast(node));
    if (cond_ptr == NULL)
    {
        printf("ERROR: FOR requires a condition.\n");
        exit(1);
    }
    // We always want to interpret the condition as an int no matter what the original type was
    return *(int *)cond_ptr;
}

val_t return_val;
int return_val_type = AST_NONE_T;

astnode_t *operation(astnode_t *root, const int op)
{

    astnode_t *node1 = exec_ast(root->child[0]);
    astnode_t *node2 = exec_ast(root->child[1]);

    int childs_const = node1->is_const && node2->is_const;

    if (childs_const && root->is_const)
    {

#ifdef DEBUG_AST

        printf("[DEBUG]: Folded constant expression: %s %s %s; AST Node %d: %s\n",
               ast_token2str(node1->type),
               ast_token2str(op),
               ast_token2str(node2->type),
               root->id,
               ast_token2str(root->type));

#endif

        return root;
    }

    if (node1->data_type != node2->data_type)
    {
        printf("Error: Type mismatch in operation %s\n", ast_token2str(op));
        printf("Type 1: %s, Type 2: %s\n", ast_type2str(node1->data_type), ast_type2str(node2->data_type));
        exit(1);
    }

    root->data_type = node1->data_type;

    if (childs_const)
    {
        root->is_const = 1;
    }

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
            printf("Error: Invalid operation %s for type %s and %s.\n", ast_token2str(op), ast_type2str(node1->data_type), ast_type2str(node2->data_type));
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
            printf("Error: Invalid operation %s for type %s and %s.\n", ast_token2str(op), ast_type2str(node1->data_type), ast_type2str(node2->data_type));
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
            printf("Error: Invalid operation %s for type %s and %s.\n", ast_token2str(op), ast_type2str(node1->data_type), ast_type2str(node2->data_type));
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
            printf("Error: Invalid operation %s for type %s and %s.\n", ast_token2str(op), ast_type2str(node1->data_type), ast_type2str(node2->data_type));
            exit(1);
        }
        break;

    case AST_NONE_T:
        printf("Error: Cannot use NONE type for operations.\n");
        exit(1);
        break;

    default:

        printf("Unkonwn data type %d\n", root->data_type);
        exit(1);
        break;
    }

    return root;
}

// Execute AST
astnode_t *exec_ast(astnode_t *root)
{

#ifdef DEBUG_AST

    printf("[DEBUG]: Executing AST Node %d: %s\n", root->id, ast_token2str(root->type)); // For debugging

#endif

    switch (root->type)
    {

    case PROGRAM:
    case MAIN:
    case STATEMENTS:
    case STATEMENT:
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
    {
        astnode_t *node = exec_ast(root->child[0]);
        root->is_const = node->is_const;
        return node;
    }
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

    case TERM_NOT_FACTOR:
    {
        astnode_t *node = exec_ast(root->child[0]);
        root->is_const = node->is_const;
        root->data_type = node->data_type;

        switch (node->data_type)
        {
        case AST_INT_T:
            root->val.num = !node->val.num;
            break;

        case AST_DOUBLE_T:
            root->val.real = !node->val.real;
            break;

        default:
            printf("Error: Cannot use NOT on type %s.\n", ast_token2str(root->child[0]->data_type));
            exit(1);
        }
        return root;
    }
    break;

    case TERM_FACTOR:
    {
        return exec_ast(root->child[0]);
    }
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
        ret->is_const = 0;

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
        return root;
    }
    break;

    case FACTOR_STRING:
    {
        return root;
    }
    break;

    case FACTOR_CHAR:
    {
        return root;
    }
    break;

    case FACTOR_REAL:
    {
        return root;
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

        astnode_t *arg = exec_ast(root->child[0]);
        if (arg->data_type != AST_STR_T)
        {
            printf("ERROR: System call argument must be a string.\n");
            exit(1);
        }

        root->val.num = system(arg->val.str);
        return root;
    }
    break;

    case FACTOR_RAND:
    {
        srand(time(NULL));
        root->data_type = AST_INT_T;
        root->val.num = rand() % (root->val.num);
        return root;
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

    case STATEMENT_BLOCK:
    {
        var_enter_block();
        exec_ast(root->child[0]);
        var_leave_block();
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

    case PRINTB:
    {
        astnode_t *val = exec_ast(root->child[0]);

        if (val->data_type != AST_INT_T)
        {
            printf("ERROR: PRINTB requires an integer.\n");
            exit(1);
        }

        char *dec = decimal_to_babylonian(val->val.num);
        printf("%s", dec);
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

    case SCAN:
    {
        // Read value from stdin using getline
        char *buf = NULL;
        size_t len = 0;
        printf("<< ");
        ssize_t read = getline(&buf, &len, stdin);

        if (read < 0)
        {
            printf("\n[Error]: Unable to read input.\n");
            free(buf);
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

            if (buf[strlen(buf) - 1] == '\n')
            {
                buf[strlen(buf) - 1] = '\0';
            }

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
        free(buf);
    }
    break;

    case FOR:
    {
        var_enter_block();
        exec_ast(root->child[0]); // init

        for (; check_and_cast_condition(exec_ast(root->child[1])); exec_ast(root->child[2]))
        {
            exec_ast(root->child[3]);
        }
        var_leave_block();
    }
    break;

    case FOR_NUM:
    {
        var_enter_block();
        astnode_t *repeat = exec_ast(root->child[0]);
        if (repeat->data_type != AST_INT_T)
        {
            printf("ERROR: FOR_NUM requires an integer.\n");
            exit(1);
        }

        for (int i = 0; i < repeat->val.num; i++)
        {
            exec_ast(root->child[1]);
        }
        var_leave_block();
    }
    break;

    case REPEAT:
    {
        var_enter_block();
        do
        {
            exec_ast(root->child[0]);

        } while (!check_and_cast_condition(exec_ast(root->child[1]))); // Negate the condition for REPEAT UNTIL loop

        var_leave_block();
    }
    break;

    case ALTERNATE:
    {

        astnode_t *statements[100];
        int num_statements = 0;
        astnode_t *curr = root->child[0];

        /* Currently this is not very efficient as it builds the list of statements
         *  every the alternate-statement is executed. This could be improved by
         *  storing the list of statements in the AST node itself.
         */
        while (curr->type == ALTER_STATEMENTS)
        {

            if (num_statements >= 100)
            {
                printf("ERROR: Too many statements in ALTERNATE.\n");
                exit(1);
            }

            if (curr->child[1] != NULL)
            {
                statements[num_statements++] = (astnode_t *)curr->child[1];
                curr = curr->child[0];
            }
            else
            {
                statements[num_statements++] = (astnode_t *)curr->child[0];
                break;
            }
        }

        int i = root->val.num;
        root->val.num = (i + 1) % num_statements;
        return exec_ast(statements[num_statements - i - 1]);
    }
    break;

    case DECLARATION:
    {
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

    case GLOBAL_DECLARATION_ASSIGN:
    {
        astnode_t *val = exec_ast(root->child[0]);
        val_t variable;

        switch (root->data_type)
        {
        case AST_DOUBLE_T:
            variable.real = val->val.real;
            var_declare_global(root->val.str, &variable.real, AST_DOUBLE_T);
            break;
        case AST_INT_T:
            variable.num = val->val.num;
            var_declare_global(root->val.str, &variable.num, AST_INT_T);
            break;

        case AST_STR_T:
            variable.str = val->val.str;
            var_declare_global(root->val.str, variable.str, AST_STR_T);
            break;

        case AST_CHAR_T:
            variable.chr = val->val.chr;
            var_declare_global(root->val.str, &variable.chr, AST_CHAR_T);
            break;

        default:
            printf("ERROR: Unsupported data type for global declaration.\n");
            exit(1);
        }
    }
    break;

    case GLOBAL_DECLARATION:
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
        astnode_t *arg = exec_ast(root->child[0]);

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
        printf("Error: Unknown node %s with type id %d\n", ast_token2str(root->type), root->type);
        break;
    }

    // Default return value
    astnode_t *newnode = malloc(sizeof(astnode_t));
    newnode->data_type = AST_INT_T;
    newnode->val.num = 0;

    return newnode;
}
