#include <stdio.h> 
#include <stdint.h>
#include <stdbool.h> 

  

  

// word needs to be \0 terminated 

bool is_in_language(char* word){ 

     

    uint8_t state = 0; 

     

    for(volatile int i=0; word[i] != '\0'; i++){ 

         

        switch(state){ 

            case 0: 

                switch(word[i]){ 

                    case '0': 
                        state = 0; 
                        break; 

		    case '1': 
                        state = 1; 
                        break; 

                } 
                break; 

            case 1: 

                switch(word[i]){ 

                    case '0': 
                        state = 2; 
                        break; 

                    case '1': 
                        state = 1; 
                        break; 
                } 
                break; 

            case 2: 

                switch(word[i]){
			case '0':
				state = 0;
				break;

			case '1':
				state = 3;
				break;
		}

                break; 

            case 3: 
		
		switch(word[i]){
			case '0':
				state = 4;
				break;

			case '1': 
				state = 3;
				break;
		}
                break; 

            case 4: 
		
		switch(word[i]){
			case '0':
				state = 5;
				break;
			
			case '1':
				state = 3;
				break;
		}
                break; 

            case 5: 

		switch(word[i]){
			case '0':
				state = 5;
				break;

			case '1':
				state = 1;
				break;
		}
                break; 

             

        } 

    } 

    if(state == 4 || state == 5){
	return true;
    }

    return false;
} 

  

  

int main(int argc , char** argv) 

{ 
	
	if(argc < 2){
		printf("[ERROR]: Missing argument <word> of type char* \n");
		return -1;
	}

	if(argc > 2){
		printf("[ERROR]: Too many arguments!\n");
		return -2;
	}

	
	char* input = argv[1]; 
	
	bool result = is_in_language(input);
	
	if(result){
		printf("Word: { %s } is accepted.\n", input);
	}
	else{
		printf("Word: { %s } is declined.\n", input);
	}

    return 0; 

} 
