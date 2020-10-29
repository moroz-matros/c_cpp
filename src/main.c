#include "stdio.h"
#include "myStaticLib.h"
#include "myDynamicLib.h"
#include <dlfcn.h>

static const char file_open_error[] = "Failed to open file for read\n";
static const char file_name[] = "../input.txt";
static const char dynlib_name[] = "libmyDynamicLib.so";
//chrono

int main()
{

    FILE *f  = fopen(file_name, "rb");
    if (!f) {
        fprintf(stderr, file_open_error);
        return 1;
    }

    printf("Static: %lu\n", find_max_word(f));

    fclose(f);

    f  = fopen(file_name, "rb");

    void *dyn_lib;
    size_t (*find_max_word)(FILE* f);
    dyn_lib = dlopen(dynlib_name, RTLD_LAZY);

    if (!dyn_lib) {
        printf("Failed to open dynamic library");
        return 1;
    }

    *(size_t **) (&find_max_word)  = (size_t*)dlsym(dyn_lib, "find_max_word");

    printf("Dynamic : %lu \n", (*find_max_word)(f));

    dlclose(dyn_lib);

    fclose(f);
    return 0;
}
