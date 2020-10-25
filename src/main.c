#include <unistd.h>
#include <sys/mman.h>
#include <wait.h>
#include "math.h"
#include "../include/c_cpp/driver.h"
#include "string.h"
#include "time.h"




int main(int argc, char* argv[])
{

    const size_t S = pow(2, 10) * 100 * pow(2, 10);
    printf("%ld \n", S);
    char *text = malloc(S * sizeof(char));
    FILE *f = fopen("input.txt", "rb");
    int n = fread(text, sizeof(char), S, f);
    printf("%d", n);

    int i = 0;
    //while (text[i]!='\n'){
    // printf("%s \n", text);
    //  ++i;
    // }
    //strlen - 2 = last

    struct timespec mt1, mt2;
    long int tt;

    /*clock_gettime (CLOCK_REALTIME, &mt1);



    int *shared_memory = mmap(NULL, 2 * sizeof(size_t), PROT_READ | PROT_WRITE,
                              MAP_SHARED | MAP_ANONYMOUS, -1, 0);

    if (!shared_memory) {
        printf("Failed to map\n");
        return 1;
    }


    shared_memory[0]=0;
    shared_memory[1]=0;

    pid_t pid = fork();


    if (pid == -1) {
        printf("Fork failed\n");
        if (munmap(shared_memory, 2*sizeof(size_t))) {
            printf("Failed to unmap\n");
        }
        return 1;
    }

    if (pid != 0) {
        int i = 0;
        size_t len = 0;
        while ((i<((strlen(text)-1)/2)) || (text[i]!=' ')){

            if (text[i]!=' ') ++len;
            else{
                if (shared_memory[1] < len) shared_memory[1] = len;
                len = 0;
                shared_memory[0] = i;
            }
            ++i;
        }
    } else {
        size_t i = strlen(text)-1;
        size_t len = 0;
        while (i > shared_memory[0]){

            if (text[i]!=' ') ++len;
            else{
                if (shared_memory[1] < len) shared_memory[1] = len;
                len = 0;
                printf("_ ");
            }
            --i;
            }
        }

    printf("\n");
    if (pid!=0){
        pid_t wait_result = wait(NULL);
        if (wait_result != pid) {
            printf("Wait failed with code %d\n", wait_result);
            printf("! ");
        }
    }

    if (pid == 0) exit(0);

    printf("\n");

    printf("%d %d \n", shared_memory[0], shared_memory[1]);

    if (pid) {
        if (munmap(shared_memory, 2*sizeof(size_t))) {
            printf("Failed to unmap\n");
        }
    }

*/

    clock_gettime (CLOCK_REALTIME, &mt2);
    tt=1000000000*(mt2.tv_sec - mt1.tv_sec)+(mt2.tv_nsec - mt1.tv_nsec);


    //Выводим результат расчета на экран
    printf ("Затрачено время: %ld нс\n", tt);

    clock_gettime (CLOCK_REALTIME, &mt1);

    i = 0;
    int j = strlen(text)-1;
    int leni = 0;
    int lenj = 0;
    int max = 0;
    while ((i<j) || ((text[i] != ' ') && (i<strlen(text)-1))){
        printf("0 ");
        if (text[i]!=' ') ++leni;
        else{
            if (leni > max) max = leni;
            leni = 0;
        }
        if (text[j]!=' ') ++lenj;
        else{
            if (lenj > max) max = lenj;
            lenj = 0;
        }
        ++i;
        --j;
    }

    printf("%d \n", max);
    clock_gettime (CLOCK_REALTIME, &mt2);
    tt=1000000000*(mt2.tv_sec - mt1.tv_sec)+(mt2.tv_nsec - mt1.tv_nsec);


    //Выводим результат расчета на экран
    printf ("Затрачено время: %ld нс\n", tt);



    free(text);
    return 0;
}