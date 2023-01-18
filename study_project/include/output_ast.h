#ifndef __OUTPUT_AST_H__
#define __OUTPUT_AST_H__

#include "ast.h"

extern const char *const *token_table;

char *ast_type2str(int type);
const char *ast_token2str(int type);
void print_ast_console(astnode_t *root);
char *node2str(astnode_t *node);
void print_ast(astnode_t *root, int depth);

#endif // __OUTPUT_AST_H__