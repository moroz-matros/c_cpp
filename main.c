#include <stdlib.h>
#include <math.h>
#include "stdio.h"
#include "stdbool.h"
#include "string.h"

static const char file_name[] = "input.txt";
static const char request[] = "Enter the amount of data (integer number) to write \n";
static const char incorrect[] = "Incorrect input \n";
static const char failed_open_write[] = "Failed to open file for write\n";
static const char failed_write_to_file[] = "Failed to write struct into file\n";
static const char failed_close_file[] = "Failed to close file\n";
static const char failed_open_read[] = "Failed to open file for read\n";
static const char failed_read_from_file[] = "Failed to read from file \n";
static const char no_ok_driver[] = "No driver is ok \n";



struct driver{
    size_t id;
    char type[20];
    size_t capacity;
    bool is_writable;
};

int checked_input(){
    printf(request);
    char cn[10]="";
    scanf("%10s", cn);
    int n = atoi(cn);
    if (strlen(cn) != (floor(log10(abs(n))) + 1)) {
        printf(incorrect);
        return -1;
    } else {
        return n;
    }
}

int main() {
    FILE *f = fopen(file_name, "wb");
    if (!f) {
        fprintf(stderr, failed_open_write);
        return 1;
    }
    struct driver drivers[10] = {{1, "SSD", 200, true}, {2, "HDD", 300, false},
                                 {3, "DVD", 400, true}, {4, "CD", 500, true},
                                 {5, "SSD", 100, false}, {6, "CD", 500, true},
                                 {7, "HDD", 200, true}, {8, "HDD", 256, true},
                                 {9, "SSD", 500, true}, {10, "SSD", 512, false}};
    for (int i=0; i<10; ++i) {
        if (fwrite(&drivers[i], sizeof(struct driver), 1, f) != 1) {
            fprintf(stderr, failed_write_to_file);
        }
    }

    if (fclose(f)) {
        fprintf(stderr, failed_close_file);
        return 1;
    }

    int n = 0;
    n = checked_input();
    if (n < 0) exit(1);

    f = fopen(file_name, "rb");
    if (!f) {
        fprintf(stderr, failed_open_read);
        return 1;
    }

    struct driver d;
    bool is_any_found = false;
    while (!feof(f)) {
        if (fread(&d, sizeof(struct driver), 1, f) == 1) {
            if ((d.is_writable) && (d.capacity >= n)){
                printf("Driver #%ld %s %ld is ok \n", d.id, d.type, d.capacity);
                is_any_found = true;
            }
        }
            //problem with given file
        else if (!feof(f)){
            printf(failed_read_from_file);
            fclose(f);
            exit(1);
        }
    }

    if (!is_any_found) {
        printf(no_ok_driver);
    }

    fclose(f);
    return 0;
}
