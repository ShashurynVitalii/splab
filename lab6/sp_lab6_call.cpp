#include "C:\Users\Виталий\source\repos\sp_lab6\sp_lab6_dll.h"

int main()
{
    char text[50]{};
    printf("Enter your text: ");
    gets_s(text);

    int num = numOfWords(text);
    printf("Number of words starting with vowels is: %d\n", num);

    return 0;
}

