#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/wait.h>
#include <unistd.h>

#define MAX_LEN 100 /* The maximum length command */

int main(void) {
//  char *args[MAX_LEN / 2 + 1]; /* command line arguments */
  int should_run = 1;          /* flag to determine when to exit program */
  int background = 0;

  while (should_run) {
    printf("my_shell> ");
    fflush(stdout);
    /**
     * 표준입출력으로부터 문자열을 입력 받은 후:
     * (1) fork()를 통해 자식 프로세스를 생성
     * (2) 자식 프로세스가 execvp()를 호출하도록 할 것
     * (3) 만약 입력받은 문자에 &가 포함되어 있으면,
     *     부모 프로세스는 wait() 호출하지않음
     */
    char *input = (char*)malloc(MAX_LEN*sizeof(char));
    char *p;     
    char *args[MAX_LEN / 2 + 1];
    free(*args);
    int i=0;
       

    fgets(input, MAX_LEN, stdin);

    if(input == NULL){
      goto null_input;
    }

    p = strtok(input, " ");
    
    while(p != NULL){
      args[i] = p;
      printf("%s\n", p);
      p = strtok(NULL," ");
      i++;
    }

    if(strcmp(args[0], "exit")==0){
      return 0; // exit가 입력되면 프로그램 종료
    }
    
    if(strcmp(args[i-1], "&")==0){
      background = 1;
    }

    int status;
    pid_t pid = fork();
    
    if (pid < 0){
      fprintf(stderr, "Fork Failed.");
      return 0;
    }else if(pid == 0){
      printf("%s\n", args[0]);
      execvp(args[0], args);  
    }else{
      if(background == 0){
        waitpid(pid, &status, 0);
        printf("child process complete.\n");
      }else{
        printf("background process.\n");
      }
    }
    
    null_input:
      continue;

    background = 0;
    free(input);
  }
  return 0;
}
