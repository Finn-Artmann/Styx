#ifndef __AST_H__
#define __AST_H__

// --- Configuration options ---
// #define DEBUG_AST

// --- Abstract Syntax Tree Node ---

#define MAXCHILDREN 5

enum
{
    AST_NONE_T = 10000,
    AST_INT_T,
    AST_DOUBLE_T,
    AST_ID_T,
    AST_STR_T,
    AST_CHAR_T
};

typedef union
{
    int num;
    double real;
    char *str;
    char chr;
} val_t;

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

// --- Function Handling ---

// Global list for pairs of function names and pointers into the AST
struct funclist
{
    char *name;
    astnode_t *node;
    struct funclist *next;
};

// Parameter queue for function calls
struct paramlist
{
    val_t val;
    int type;
    struct paramlist *next;
};

// --- Variables ---
extern val_t return_val;
extern struct funclist *funclist;
extern struct paramlist *paramlist;

// --- Function Prototypes ---

astnode_t *new_astnode(int type);
astnode_t *exec_ast(astnode_t *root);
void print_ast_console(astnode_t *root);
char *node2str(astnode_t *node);
void print_ast(astnode_t *root, int depth);

void add_function(char *name, astnode_t *node);
void add_param(struct paramlist **list, void *val, int type);
void *get_param(struct paramlist **list, int *type);
astnode_t *find_function(char *name);

#endif // __AST_H__