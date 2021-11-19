#include <stdio.h>
#include <stdlib.h>


int main(void)
{
    int count;
    printf("How many integer do you want to allocate memory for: ");

    scanf("%d", &count);

    int *memory = malloc(count * sizeof(int)); 
    if (memory == NULL) 
    {
        printf("Memory not allocated\n");
    }
    else
    {
        printf("the address of the pointer is %p\n", memory);  
        for (int i = 0; i < count; i++)
        {
            memory[i] = i;   
        }
        for (int i = 0; i < count; i++)
        {
            printf("%i\n", memory[i]);
        }
    }
    free(memory); 
}
