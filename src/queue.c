#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "queue.h"


void init_queue(queue_t* q){

	q->data = malloc(1);
	q->tail = -1;
	q->head = -1;
}

void free_queue(queue_t* q){

	if(q->tail != 0){
		for(int i=0; i < q->tail; i++){
			free(q->data[i]);
		}
		q->tail = -1;
		q->head = -1;
		q->data = NULL;
	}
}

void print_queue(queue_t* q){

	for(int i = q->head; i <= q->tail; i++){
		printf("%s | ", q->data[i]);
	}
	printf("\n");
}


char* dequeue(queue_t* q){
	
	if(q == NULL){ return NULL;}

	if(q->head == -1) {return NULL;}


	 return q->data[q->head++];
}

void enqueue(queue_t* q, char* word){
	
	if(q == NULL){ return; }

	if(q->tail == -1){
		q->head = 0;
		q->tail = 0;
	}
	else{

		q->tail++;
	}
	
	int len = strlen(word) + 1; // +1 for terminating zero

	q->data = (char**) realloc(q->data, (q->tail+1) * sizeof(char**));

	if(q->data == NULL) {return; } // realloc failed

	q->data[q->tail] = (char*) malloc(len);
	strcpy(q->data[q->tail], word);
}
				
