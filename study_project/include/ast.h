#ifndef __AST_H__
#define __AST_H__

// --- Abstract Syntax Tree Node ---

#define MAXCHILDREN 5

enum
{
    AST_NONE_T = 10000,
    AST_NUM_T,
    AST_REAL_T,
    AST_ID_T,
    AST_STR_T
};

struct astnode
{
    int id;
    int type;
    int data_type;
    union
    {
        int num;
        double real;
        char *str;

    } val;
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
    int val;
    struct paramlist *next;
};

// --- Variables ---
extern int return_val;
extern struct funclist *funclist;
extern struct paramlist *paramlist;

// --- Function Prototypes ---

astnode_t *new_astnode(int type);
astnode_t *exec_ast(astnode_t *root);
void print_ast_console(astnode_t *root);
char *node2str(astnode_t *node);
void print_ast(astnode_t *root, int depth);

void add_function(char *name, astnode_t *node);
void add_param(struct paramlist **list, int val);
int get_param(struct paramlist **list);
astnode_t *find_function(char *name);

#endif // __AST_H__