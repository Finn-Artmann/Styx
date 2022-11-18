#include <stdio.h>
#include <stdlib.h>

#include "stack.h"


stack_t* s_new(){
	
	stack_t* stack = malloc(sizeof(stack_t));
	stack->data = malloc(1); // inital malloc so realloc can be used later
	stack->top = -1;
	return stack;	
}

void s_push(stack_t* s, val_t num){
	

	s->data = realloc(s->data, (++s->top + 1) * sizeof(val_t));
	s->data[s->top] = num;
}

val_t s_pop(stack_t* s){

	//s->data = realloc(s->data, (s->top + 1) * sizeof(val_t));
	
	return s->data[s->top--];
}

val_t s_peek(stack_t* s){
	return s->data[s->top];
}

int s_isempty(stack_t* s){

	return s->top == -1 ? 1 : 0;
}
