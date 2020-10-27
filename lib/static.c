#include "static.h"

size_t find_max_word(char *text){
    size_t i = 0;
    size_t j = strlen(text)-1;
    size_t leni = 0;
    size_t lenj = 0;
    size_t max = 0;
    while ((i < j) || ((text[i] != ' ') && (i<strlen(text)-1))){
        if ((text[i]!=' ') && (text[i]!='\n'))  ++leni;
        else{
            if (leni > max) max = leni;
            leni = 0;
        }
        if ((text[i]!=' ') && (text[i]!='\n'))  ++lenj;
        else {
            if (lenj > max) max = lenj;
            lenj = 0;
        }
        ++i;
        --j;
    }
    return max;
}
