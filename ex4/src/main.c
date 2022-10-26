#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "stack.h"


int randomNumber(int lower, int upper){

	return (rand() % (upper - lower + 1) + lower);
}


int main(int arc, char** arv){

	stack_t* s1 = s_new();
	
	int numbers1[] = {3, 1, 3, 3, 7};
	int numbers2[] = {2, 4, 8};

	// Add all numbers in numbers1 to stack
	for(int i=0; i < sizeof(numbers1)/sizeof(*numbers1); i++){
		s_push(s1, numbers1[i]);
	}

	// Pop and output 3 values of stack
	for(int i=0; i < 3 ; i++){
		printf("%d\n", s_pop(s1));
	}

	// Add all numbers in numbers2 to stack
	for(int i=0; i < sizeof(numbers2)/sizeof(*numbers2); i++){
		s_push(s1, numbers2[i]);
	}

	// Pop and output 5 values of stack
	for(int i=0; i < 5; i++){
		printf("%d\n", s_pop(s1));
	}
	
	printf("Now pushing random amount (between 5 and 10) of random numbers (between 1 and 100)\n");

	srand(time(0));
	for(int i=0; i < randomNumber(5,10); i++){
		s_push(s1,  randomNumber(1,100));
	}

	while(!s_isempty(s1)){
		printf("%d\n", s_pop(s1));
	}

	return 0;
}
