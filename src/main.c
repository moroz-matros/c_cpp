#include "../include/c_cpp/driver.h"

static const char request[] = "Enter the amount of data (integer number) to write \n";
static const char failed_create_file[] = "Failed to create file \n";

int main(int argc, char* argv[])
{
    printf(request);
    char cn[10]="";
    scanf("%9s", cn);
    int n = check_input(cn);
    if (n < 0) return(1);
    if (create_file()){
        printf(failed_create_file);
        return 1;
    }
    find_drivers(n);
    return 0;
}