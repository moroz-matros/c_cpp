#include "myDynamicLib.h"

static const char malloc_error[] = "Failed to allocate memory\n";
static const char file_read_error[] = "Failed to read from file\n";
static const char map_error[] = "Failed to map\n";
static const char fork_error[] = "Fork failed\n";
static const char unmap_error[] = "Failed to unmap\n";
static const char wait_error[] = "Wait failed with code %d\n";


size_t find_max_word(FILE *f){

    const size_t S = pow(2, 10) * 100 * pow(2, 10);
    char *text = (char*)malloc(S * sizeof(char));
    if (!text){
        fprintf(stderr, malloc_error);
        return 1;
    }

    size_t n = fread(text, sizeof(char), S, f);
    if (!n){
        fprintf(stderr, file_read_error);
        return 1;
    }

    int *shared_memory = (int*)mmap(NULL, sizeof(size_t), PROT_READ | PROT_WRITE,
                                    MAP_SHARED | MAP_ANONYMOUS, -1, 0);
    if (!shared_memory) {
        printf(map_error);
        return 1;
    }

    //max_size save
    shared_memory[0] = 0;

    pid_t pid = fork();

    if (pid == -1) {
        printf(fork_error);
        if (munmap(shared_memory, sizeof(size_t))) {
            printf(unmap_error);
        }
        return 1;
    }

    size_t mid = (n - 1) / 2;

    if (pid != 0) {
        int i = 0;
        size_t len = 0;
        //second part - if we have come to the meet point but the word hasn't ended
        while ((i < mid) || ((text[i] != ' ') && (i < n - 1))){
            if (text[i] != ' ') ++len;
            else{
                if (shared_memory[0] < len) shared_memory[0] = len;
                len = 0;
            }
            ++i;
        }
    } else {
        size_t i = n - 1;
        size_t len = 0;
        while (i > mid) {
            if (text[i]!=' ') ++len;
            else{
                if (shared_memory[0] < len) shared_memory[0] = len;
                len = 0;
            }
            --i;
        }
    }

    if (pid != 0){
        pid_t wait_result = wait(NULL);
        if (wait_result != pid) {
            printf(wait_error, wait_result);
        }
    }

    size_t max = shared_memory[0];

    if (pid) {
        if (munmap(shared_memory, sizeof(size_t))) {
            printf(unmap_error);
        }
    }

    if (pid == 0) exit(0);

    free(text);

    return max;
}