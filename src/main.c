#include <stdio.h>
#include <stdlib.h>

#include "queue.h"

int main(int argc, char** argv){

	queue_t queue;
	char* word0 = "test";
	char* word1 = "hallo";

	init_queue(&queue);
	
	enqueue(&queue, word0);
	enqueue(&queue, word1);

	print_queue(&queue);

	dequeue(&queue);

	print_queue(&queue);

	free_queue(&queue);

	return 0;
}
