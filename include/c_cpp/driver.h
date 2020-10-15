#ifndef _DRIVER_H_
#define _DRIVER_H_

#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>


struct driver{
    size_t id;
    char type[20];
    size_t capacity;
    bool is_writable;
};

int check_input(char* cn);
int find_drivers(size_t n);
int create_file();

#endif