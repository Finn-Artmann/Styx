#ifndef __PARAMETERS_H__
#define __PARAMETERS_H__

#include "value_type.h"

// Parameter queue for function calls
struct paramlist
{
    val_t val;
    int type;
    struct paramlist *next;
};

void add_param(struct paramlist **list, void *val, int type);
void *get_param(struct paramlist **list, int *type);

#endif