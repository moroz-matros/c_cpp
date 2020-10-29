#include <dlfcn.h>
#include "gtest/gtest.h"
#include <chrono>

static const char file_name100[] = "../input.txt";
static const char big_file_name[] = "../input2.txt";
static const char dynlib_name[] = "libmyDynamicLib.so";
static const char static_lib[] = "Static lib ~ ";
static const char dynamic_lib[] = "Dynamic lib ~ ";
static const char ms[] = "ms";

extern "C" {
#include "myStaticLib.h"
#include "myDynamicLib.h"
}

const int n = 200;

TEST(static_work, ok) {
    FILE *f  = fopen(file_name100, "rb");
    ASSERT_EQ(find_max_word(f), 18);
    fclose(f);
    f = fopen(big_file_name, "rb");
    ASSERT_EQ(find_max_word(f), 18);
    fclose(f);
}


TEST(dynamic_work, ok) {
    FILE *f  = fopen(file_name100, "rb");
    void *dyn_lib;
    size_t (*find_max_word)(FILE* f);
    dyn_lib = dlopen(dynlib_name, RTLD_LAZY);
    *(size_t **) (&find_max_word)  = (size_t*)dlsym(dyn_lib, "find_max_word");
    ASSERT_EQ((*find_max_word)(f), 18);
    fclose(f);
    f = fopen(big_file_name, "rb");
    ASSERT_EQ((*find_max_word)(f), 18);
    dlclose(dyn_lib);
    fclose(f);
}


TEST(static_work, time) {
    FILE *f;
    double time = 0;
    for (int i = 0; i < n; ++i){
        f = fopen(file_name100, "rb");
        auto start = std::chrono::system_clock::now();
        find_max_word(f);
        auto end = std::chrono::system_clock::now();
        auto elapsed_ms = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
        time += elapsed_ms.count();
        fclose(f);
    }
    std::cout << static_lib << time / n << ms << '\n';

}

TEST(dynamic_work, time) {
    FILE *f;
    void *dyn_lib;
    size_t (*find_max_word)(FILE* f);
    dyn_lib = dlopen(dynlib_name, RTLD_LAZY);
    *(size_t **) (&find_max_word)  = (size_t*)dlsym(dyn_lib, "find_max_word");
    double time = 0;
    for (int i = 0; i < n; ++i){
        f = fopen(file_name100, "rb");
        auto start = std::chrono::system_clock::now();
        find_max_word(f);
        auto end = std::chrono::system_clock::now();
        auto elapsed_ms = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
        time += elapsed_ms.count();
        fclose(f);
    }
    std::cout << dynamic_lib << time / n << ms << '\n';
    dlclose(dyn_lib);
}


