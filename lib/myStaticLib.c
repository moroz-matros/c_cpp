#include "myStaticLib.h"

size_t find_max_word(FILE *f){

    f = fopen("input.txt", "rb");
    const size_t S = pow(2, 10) * 100 * pow(2, 10);
    printf("%ld \n", S);
    char *text = (char*)malloc(S * sizeof(char));
    int n = fread(text, sizeof(char), S, f);

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
