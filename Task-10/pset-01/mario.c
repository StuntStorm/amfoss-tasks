#include<cs50.h>
#include<stdio.h>

void mario(int n);

int main(void){
    int height;
    do
    {
        height = get_int("Height: ");
    }
    while(height<=0 || height>8);
    mario(height);
}
void mario(int n)
   {
    int space;
    int hash;
    for(int i = 2; i<=n+1;i++){
        for(space = n-i; space>=0;space--){
            printf(" ");
        }
        for (hash = 2; hash <= i; hash++){
            printf("#");
        }
        printf("\n");
    }

}
