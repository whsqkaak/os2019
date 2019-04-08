#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/wait.h>
#include <unistd.h>

#define MAX_LEN 100 /* The maximum length command */

int main(void) {
  char *args[MAX_LEN / 2 + 1]; /* command line arguments */
  int should_run = 1;          /* flag to determine when to exit program */
  int background = 0;
  
  char *input;
  int status;
 
  while (should_run) {
    printf("my_shell> ");
    fflush(stdout);

    input = (char*)malloc(MAX_LEN*sizeof(char));
    fgets(input, MAX_LEN, stdin);

    int i = 0;
    args[i] = strtok(input, " \n");

    while(args[i] != NULL){
      i++;
      args[i] = strtok(NULL," \n");
    }
    
    if(args[0] == NULL){
        goto no_input;
    }

    if(strcmp(args[0], "exit")==0){
      break; 
    }
    
    if(strcmp(args[i-1], "&")==0){
      args[i-1] = '\0';
      background = 1;
    }

    pid_t pid = fork();
    if (pid < 0){
      perror("Fork error");
      exit(0);
    }
    if(pid == 0){
      execvp(args[0], args);  
    }
    if(pid > 0){
      if(!background){
        int retval = waitpid(pid, &status, 0);
	if(retval > 0){
	  if(WIFEXITED(status)){
	    printf("Child exited by process completion : %d\n", WEXITSTATUS(status));
	  }
	  if(WIFSIGNALED(status)){
	    printf("Child exited by signal : %d\n", WTERMSIG(status));
	  }
	}
	else{
	  printf("Unexpected error.\n");
	  exit(0);
	}
        printf("child process complete.\n");
      }else{
        printf("background process.\n");
      }
    }
    
    background = 0;
    no_input:;
    free(input);
  }
  return 0;
}
