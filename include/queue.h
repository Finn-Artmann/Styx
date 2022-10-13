#ifndef __QUEUE_H__
#define __QUEUE_H__

typedef struct Queue{
	char** data;
	int tail;
	int head;
}queue_t;

void init_queue(queue_t* q);
void free_queue(queue_t* q);
void print_queue(queue_t* q);
char* dequeue(queue_t* q);
void enqueue(queue_t* q, char* word);

#endif // __QUEUE_H__
