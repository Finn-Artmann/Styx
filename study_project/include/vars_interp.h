#ifndef __VARS_INTERP_H__
#define __VARS_INTERP_H__

void var_declare_global(char *id, void *val, int type);
void var_declare(char *id, void *val, int type);
void var_set(char *id, void *val, int type);
void *var_get(char *id, int *type);
void var_enter_block(void);
void var_leave_block(void);
void var_enter_func(void);
void var_leave_func(void);
void var_dump(void);

#endif /* __VARS_INTERP_H__ */
