#include <cs50.h>
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>


int main(int argc, string argv[])
{
    if (argc != 2)  
    {
        printf("Usage is ./caesar key\n"); 
        return 1;
    }
    int arg_length = strlen(argv[1]);    
    for (int i = 0; i < arg_length; i++)  
    {
        if (!isdigit(argv[1][i])) 
        {
            printf("Usage is ./caesar key"); 
            return 1;
        }
    }

    int key = atoi(argv[1]);
    string plaintext = get_string("plaintext: "); 
    printf("ciphertext: ");    
    int plaintext_length = strlen(plaintext); 
    for (int i = 0; i < plaintext_length; i++) 
    {
        if (isupper(plaintext[i])) 
        {
            printf("%c", (((plaintext[i] - 65) + key) % 26) + 65); 
        }
        else if (islower(plaintext[i])) 
        {
            printf("%c", (((plaintext[i] - 97) + key) % 26) + 97);
        }
        else                   
        {
            printf("%c", plaintext[i]);
        }

    }
    printf("\n"); 
}
