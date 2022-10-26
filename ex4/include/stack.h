#ifndef __STACK_H__
#define __STACK_H__


typedef int val_t;

typedef struct Stack{

	val_t* data;
	int top;

} stack_t;



stack_t* s_new(); 

void s_push(stack_t* s, val_t num);

val_t s_pop(stack_t* s);

int s_isempty(stack_t* s);


#endif // __STACK_H__
