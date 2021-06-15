#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <semaphore.h>

#define MAX 20

int arrayBusqueda[MAX];

typedef struct
{
    int pthreadId;
    int number;
    int skip;

} ThreadArgument;

sem_t mutex;

void *makeProcess(void* argument) {

    int processId = ((ThreadArgument *)argument)->pthreadId;
    int number = ((ThreadArgument *)argument)->number;
    int skip = ((ThreadArgument *)argument)->skip;
    int sem_status;

    sem_getvalue(&mutex,&sem_status);

//    printf("Proceso %d, desde %d hasta %d\n",processId,processId * skip,(processId + 1) * skip);

    for (int i = processId * skip; i < (processId + 1) * skip; ++i) {

        if( sem_status == 1){
            if(arrayBusqueda[i] == number){
                printf("En el proceso %d SI se encontro el numero %d\n",processId,number);
                sem_post(&mutex);
                pthread_exit(NULL);

            }
        }else{
            printf("Cerrando el proceso %d\n",processId);
            pthread_exit(NULL);
        }

    }


    printf("En el proceso %d NO se encontro el numero %d\n",processId,number);
    pthread_exit(NULL);
}

int main(int argc, char *argv[]) {

    sem_init(&mutex, 0, 1);

    for (int i = 0; i < 20; ++i) {
        arrayBusqueda[i] = rand() % 10;
        printf("%d ",arrayBusqueda[i]);
    }
    puts("\n");

    int numberToFind = atoi(argv[1]);
    int numberThreads = atoi(argv[2]);

    //printf("NUmero a encontrar: %d , numero de procesos: %d",numberToFind,numberThreads);

    ThreadArgument *argument = (ThreadArgument *)malloc(sizeof(ThreadArgument));

    pthread_t threads[numberThreads];


    for (int i = 0; i < numberThreads; ++i) {
        argument->pthreadId = i;
        argument->number = numberToFind;
        argument->skip = numberThreads;

        pthread_create(&threads[i], NULL, makeProcess,(void *) argument);
        pthread_join(threads[i],NULL);
    }

    sem_destroy(&mutex);
    return 0;
}
