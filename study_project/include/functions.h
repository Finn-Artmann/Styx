#ifndef __FUNCTIONS_H__
#define __FUNCTIONS_H__

typedef struct astnode astnode_t;

// Global list for pairs of function names and pointers into the AST
struct funclist
{
    char *name;
    astnode_t *node;
    struct funclist *next;
};

void add_function(char *name, astnode_t *node);
astnode_t *find_function(char *name);

#endif // __FUNCTIONS_H__