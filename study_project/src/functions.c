#include <string.h>
#include <stdlib.h>

#include "functions.h"

struct funclist *funclist = NULL;

// Add function to list
void add_function(char *name, astnode_t *node)
{
    struct funclist *new = malloc(sizeof *new);
    new->name = strdup(name);
    new->node = node;
    new->next = funclist;
    funclist = new;
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