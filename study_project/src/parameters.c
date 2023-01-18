#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "value_type.h"
#include "parameters.h"

struct paramlist *paramlist = NULL;

// Add parameter to queue
void add_param(struct paramlist **list, void *val, int type)
{
    struct paramlist *new = malloc(sizeof *new);

    // printf("Adding param of type %s\n", ast_type2str(type)); // DEBUG

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

    // Get last element in list
    struct paramlist *current = *list;
    while (current->next)
    {
        current = current->next;
    }
    *type = current->type;
    // printf("Getting param of type %s\n, ", ast_type2str(*type)); // DEBUG

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

    // Remove last element from queue and free memory
    if (current == *list)
    {
        *list = NULL;
    }
    else
    {
        struct paramlist *tmp = *list;
        while (tmp->next != current)
        {
            tmp = tmp->next;
        }
        tmp->next = NULL;
    }
    free(current);

    return val;
}
