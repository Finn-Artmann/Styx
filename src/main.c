#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include <string.h>
#include <ctype.h>

#include "queue.h"
#include "rules.h"

bool is_lower_string(char* s){
		
	for(int i=0; s[i]!='\0'; i++){
		if(!islower(s[i])){
			return false;
		}
	}
	return true;
}


char* replace(const char* word, const char* search, const char* replace, const int n){
	
	
	char* result;

	int replace_len = strlen(replace);
	int search_len = strlen(search);
	int word_len = strlen(word);
	
	result = (char*) malloc(word_len + replace_len - search_len +1);

	int i=0;
	int occurence=0;
	bool found_nth_occurence = false;
	while(*word){
		
		char* tmp = strstr(word, search);

		if(tmp == word && n == occurence++){
			strcpy(&result[i], replace);
			i+= replace_len;
			word += search_len;
			found_nth_occurence = true;
		}
		else{
			result[i++] = *word++;
		}
	}

	// Return NULL if ther is there is no n'th occurence of the search string 
	if(!found_nth_occurence) { return NULL;}


	return result;
}


void generate_words(){
	
	// Preperation
	queue_t queue;
	init_queue(&queue);
	enqueue(&queue, start_symbol);
	
	// Algorithm
	
	char* next_word;
	while( (next_word = dequeue(&queue) ) != NULL){
		if(is_lower_string(next_word)){
			printf("%s\n", next_word);
		}

		for(volatile int i=0; i < sizeof(rules)/sizeof(rule); i++){
			
			char* word = next_word;
			int occrnc = 0;
			char* new_word;
			while((new_word = replace(word, rules[i].lhs, rules[i].rhs, occrnc++)) != NULL){	
				enqueue(&queue, new_word);
				free(new_word);
			}
		}

	}

}



	

int main(int argc, char** argv){

	//queue_t queue;
	/*
	char* word0 = "test";
	char* word1 = "hallo";

	init_queue(&queue);
	
	enqueue(&queue, word0);
	enqueue(&queue, word1);

	print_queue(&queue);

	dequeue(&queue);

	print_queue(&queue);

	free_queue(&queue);
	*/

	/*
	char* word = "einstestzweitestdrei";
	char* search = "test";
	char* rep = "12345pt";

	printf("%s", replace(word, search, rep, 1));
	*/
	generate_words();
	
	return 0;
}
