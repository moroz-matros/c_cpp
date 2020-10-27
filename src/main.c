#include "stdio.h"
#include "myStaticLib.h"
#include "myDynamicLib.h"
#include <dlfcn.h>

//chrono

int main(int argc,  char* argv[])
{

    FILE *f = fopen("input.txt", "rb");
    const size_t S = pow(2, 10) * 100 * pow(2, 10);
    char *text = (char*)malloc(S * sizeof(char));
    int n = fread(text, sizeof(char), S, f);
    printf("%u %ld \n", n, S);

    void *dyn_lib;
    size_t (*find_max_word)(FILE *f);
    dyn_lib = dlopen("libmyDynamicLib.so", RTLD_LAZY);

    if (!dyn_lib) {
        printf("Failed to open dynamic library");
        return 1;
    }

    *(size_t **) (&find_max_word)  = dlsym(dyn_lib, "find_max_word");

    printf("%lu", (*find_max_word)(f));

    dlclose(dyn_lib);

    free(text);
    return 0;
}
