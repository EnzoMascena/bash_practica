#include<stdio.h>

int main(){

    int vector[10];
    int temp;

    for (int i = 0; i < 10; i++)
    {
        printf("Ingresa el numero al vector en la posicion %d: ", i + 1);
        scanf("%d", &vector[i]);
    }

    for(int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 10; j++)
        {
            if(vector[i] < vector[j])
            {
                temp= vector[i];
                vector[i]= vector[j];
                vector[j]=temp;
            }
        }
        
    }
    
    printf("[");
    for (int i = 0; i < 10; i++)
    {
        
        printf("%d|", vector[i]);
       
    }
    printf("]");
return 0;
}