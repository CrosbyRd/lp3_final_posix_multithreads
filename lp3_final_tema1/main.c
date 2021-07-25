#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
typedef struct
{
    int pthreadId;
    int number;

} ThreadArgument;

unsigned long factorial(int n)
{
    unsigned long fact = 1;

    for (int i = 1; i <= n; i++) {
        fact = fact * i;
    }

    return fact;
}

void *makeProcess(void* argument) {
    int processId = ((ThreadArgument *)argument)->pthreadId;
    int number = ((ThreadArgument *)argument)->number;
    printf("Proceso %d = Factorial de %d es %lu\n",processId,number,factorial(number));
    pthread_exit(NULL);
}

int main(int argc, char *argv[]) {

    pthread_t threads[argc];

    for (int i = 1; i < argc; ++i) {

        ThreadArgument *argument = (ThreadArgument *)malloc(sizeof(ThreadArgument));

        argument->pthreadId = i;
        argument->number = atoi(argv[i]);

        pthread_create(&threads[i], NULL, makeProcess, (void *) argument);
        pthread_join(threads[i],NULL);
        printf("Texto para subir cambios a Github en formato de tarea de Sistemas Distribuidos");
    }

    return 0;
}
