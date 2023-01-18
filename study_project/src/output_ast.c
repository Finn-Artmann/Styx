#include <stdio.h>
#include <stdlib.h>

#include "../build/styx.tab.h"
#include "value_type.h"
#include "ast.h"
#include "output_ast.h"

/*
 *  The token table maps the token values to their string representation.
 *  The token values are defined in styx.tab.h
 *  Accessing yytname from another file is a bit tricky, since it
 *  is defined as a static variable in styx.tab.c
 *  By assigning the address of yytname in the bison file to token_table, we can access
 *  the token names from other files.
 */
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

void print_ast_console(astnode_t *root)
{
    printf("AST Node %d: %s\n", root->id, ast_type2str(root->type));
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

    switch (node->data_type)
    {
    case AST_INT_T:
        sprintf(
            str,
            "id: %d\n %s\n %s\n NUM: %d\n is_const: %d",
            node->id,
            ast_token2str(node->type),
            ast_type2str(AST_INT_T),
            node->val.num,
            node->is_const);
        break;

    case AST_ID_T:
        sprintf(
            str,
            "id: %d\n %s\n %s\n ID: %s\n is_const: %d",
            node->id,
            ast_token2str(node->type),
            ast_type2str(AST_ID_T),
            node->val.str,
            node->is_const);
        break;

    case AST_STR_T:
        sprintf(
            str,
            "id: %d\n %s\n %s\n STR: %s\n is_const: %d",
            node->id,
            ast_token2str(node->type),
            ast_type2str(AST_STR_T),
            node->val.str,
            node->is_const);
        break;

    case AST_CHAR_T:
        sprintf(
            str,
            "id: %d\n %s\n %s\n CHAR: %c\n is_const: %d",
            node->id,
            ast_token2str(node->type),
            ast_type2str(AST_CHAR_T),
            node->val.chr,
            node->is_const);
        break;

    case AST_DOUBLE_T:
        sprintf(
            str,
            "id: %d\n %s\n %s\n REAL: %f\n is_const: %d",
            node->id,
            ast_token2str(node->type),
            ast_type2str(AST_DOUBLE_T),
            node->val.real,
            node->is_const);
        break;

    case AST_NONE_T:
        sprintf(
            str,
            "id: %d\n %s\n %s\n is_const: %d",
            node->id,
            ast_token2str(node->type),
            ast_type2str(AST_NONE_T),
            node->is_const);
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