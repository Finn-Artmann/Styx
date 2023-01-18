#ifndef __VALUE_TYPE_H__
#define __VALUE_TYPE_H__

typedef union
{
    int num;
    double real;
    char *str;
    char chr;
} val_t;

enum
{
    AST_NONE_T = 10000,
    AST_INT_T,
    AST_DOUBLE_T,
    AST_ID_T,
    AST_STR_T,
    AST_CHAR_T
};

#endif // __VALUE_TYPE_H__