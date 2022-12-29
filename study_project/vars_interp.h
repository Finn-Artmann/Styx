#ifndef __VARS_INTERP_H__
#define __VARS_INTERP_H__


int var_declare_global (char *id, int val);
int var_declare (char *id, int val);
int var_set (char *id, int val);
int var_get (char *id);
void var_enter_block (void);
void var_leave_block (void);
void var_enter_function (void);
void var_leave_function (void);


#endif /* __VARS_INTERP_H__ */
