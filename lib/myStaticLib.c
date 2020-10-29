#include "myStaticLib.h"

static const char malloc_error[] = "Failed to allocate memory\n";
static const char file_read_error[] = "Failed to read from file\n";

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

    size_t i = 0, j = n - 1, leni = 0, lenj= 0, max = 0;

    //second part - if we have come to the meet point but the word hasn't ended
    while ((i < j) || ((text[i] != ' ') && (i < n - 1))){
        if (text[i]!=' ')  ++leni;
        else{
            if (leni > max) max = leni;
            leni = 0;
        }
        if (text[i]!=' ')  ++lenj;
        else {
            if (lenj > max) max = lenj;
            lenj = 0;
        }
        ++i;
        --j;
    }
    free(text);
    return max;
}
