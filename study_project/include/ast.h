#ifndef __AST_H__
#define __AST_H__

#include "value_type.h"
// --- Configuration options ---
// #define DEBUG_AST

// --- Abstract Syntax Tree Node ---

#define MAXCHILDREN 5

struct astnode
{
    int id;
    int type;
    int data_type;
    val_t val;
    int is_const;
    struct astnode *child[MAXCHILDREN];
};
typedef struct astnode astnode_t;

// --- Function Prototypes ---
astnode_t *new_astnode(int type);
astnode_t *exec_ast(astnode_t *root);

#endif // __AST_H__