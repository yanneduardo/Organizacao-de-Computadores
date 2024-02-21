#include <stdio.h> 
#include <stdlib.h>
#include <string.h>
#define MAX_REGISTRADORES 16
#define MAX_INTR_SIZE 100
#define MAX_MEMORY_SIZE 16*1024*1024

typedef struct{
    char opcode [6];
    double operacao1;
    int registradorDestino;
    int registradorDestino2;
}Instrucoes;

typedef struct{
    double registradores[MAX_REGISTRADORES];
    double memoria[MAX_MEMORY_SIZE];
    int cont;
    
}Processador;

void alu(char*,Instrucoes, Processador*,double*);
void sti ( char*, Instrucoes , Processador* );
void sto( char*, Instrucoes , Processador*,double *);
int blt(char* , Instrucoes , Processador*,int*);
int beq( char* , Instrucoes* , Processador*,int*);
void jump(int*,int);



int main(){
    Instrucoes inst;
    Processador reg = {0};
    int contlinha = 0,contlinha2=0;
    int linhadestino,result;
    char linha[MAX_INTR_SIZE];
    double acc;
    char **vetDeString;

    vetDeString = (char**) malloc(MAX_INTR_SIZE * sizeof(char*));
    if(vetDeString == NULL){
        printf ("Erro ao alocar o vetor de srting!\n");
        return 1;
    }

    for(int i=0;i<MAX_INTR_SIZE;i++){

        vetDeString [i] = (char*) malloc (MAX_INTR_SIZE * sizeof(char));
        
        if (vetDeString[i] == NULL) {
            printf("Erro ao alocar memória para a string %d.\n", i);
            // Libera a memória alocada anteriormente
            for (int j = 0; j < i; j++) {
                free(vetDeString[j]);
            }
            free(vetDeString);
            return 1; // Indica erro
        }
    
    }

    FILE *arquivo; 
    char nomeArq[50];
    printf("Digite o nome do arquivo: seno.txt, cosseno.txt ou primos.txt\n");
    scanf("%s", nomeArq);
    arquivo = fopen( nomeArq, "r");

    if( arquivo == NULL){
        printf("Não foi possível abrir o arquivo!\n");

        // Libera a memória alocada
        for (int i = 0; i < MAX_INTR_SIZE; i++) {
            free(vetDeString[i]);
        }
        free(vetDeString);

        return 1;
    }

    while (contlinha < MAX_INTR_SIZE && fgets(vetDeString[contlinha], sizeof(linha), arquivo) != NULL) {
        contlinha++;
    }
    for(int i=0;i<contlinha;i++){
        printf("%s",vetDeString[i]);
    }
    printf("\n");
    fclose(arquivo);

    while(contlinha2 != contlinha)
    {
        
        sscanf(vetDeString[contlinha2], "%s", inst.opcode);
        
        if(!strcmp(inst.opcode,"STI")){
            sti(vetDeString[contlinha2],inst,&reg);
        }
        else if(!strcmp(inst.opcode, "STO")){
            sto(vetDeString[contlinha2],inst, &reg,&acc);
        }
        else if(!strcmp(inst.opcode, "BEQ")){
            result = beq(vetDeString[contlinha2],&inst,&reg,&linhadestino);
            if(result == 1){
               jump(&contlinha2,linhadestino);
            }
        }
        else if(!strcmp(inst.opcode,"BLT")){
            result = blt(vetDeString[contlinha2],inst,&reg,&linhadestino);
           
            if(result == 1){
               jump(&contlinha2,linhadestino);
            }
        }
        else if(!strcmp(inst.opcode,"J")){
            sscanf(vetDeString[contlinha2],"%*s %d",&linhadestino);
            jump(&contlinha2,linhadestino);
        }
        else if(!strcmp(inst.opcode,"DSP")){
            sscanf(vetDeString[contlinha2],"%*s #%d",&inst.registradorDestino);
            printf("%.2lf\n",reg.registradores[inst.registradorDestino]);
            reg.memoria[reg.cont] = reg.registradores[inst.registradorDestino];             
            reg.cont++;
        }
        else{
            alu(vetDeString[contlinha2],inst,&reg, &acc);
        }

        contlinha2++;
    }
  
    printf("\nA memória consumida foi de %d bits", reg.cont*4);
    printf("\nNúmeros guardados na memoria: [ ");

    for(int i=0;i<reg.cont;i++){
        printf("%.2lf ", reg.memoria[i]);
    }
    printf("]\n\n");

    for (int i = 0; i < contlinha; i++) {
        free(vetDeString[i]);
    }
    free(vetDeString);

    return 0;
}


void alu (char* linha, Instrucoes instrucao, Processador* reg,double *acc){
    if(!strcmp( instrucao.opcode, "ADD")){
        sscanf(linha,"%*s #%d %lf", &instrucao.registradorDestino, &instrucao.operacao1);
        *acc = reg->registradores[instrucao.registradorDestino] + instrucao.operacao1;
    }
    else if(!strcmp( instrucao.opcode, "SUB")){
        sscanf(linha,"%*s #%d %lf", &instrucao.registradorDestino, &instrucao.operacao1);
        *acc = reg->registradores[instrucao.registradorDestino] - instrucao.operacao1;
    }
    else if(!strcmp(instrucao.opcode, "MUL")){
        sscanf(linha,"%*s #%d %lf", &instrucao.registradorDestino, &instrucao.operacao1);
        *acc = reg->registradores[instrucao.registradorDestino] * instrucao.operacao1;
    }
    else if(!strcmp( instrucao.opcode, "DIV")){                                                                                                          
        sscanf(linha,"%*s #%d %lf", &instrucao.registradorDestino, &instrucao.operacao1);
       *acc = reg->registradores[instrucao.registradorDestino] / instrucao.operacao1;
    }
    else if(!strcmp( instrucao.opcode, "REM")){
        sscanf(linha,"%*s #%d #%d", &instrucao.registradorDestino,&instrucao.registradorDestino2);
        *acc = (int)reg->registradores[instrucao.registradorDestino] % (int)reg->registradores[instrucao.registradorDestino2];
    }
    else if(!strcmp(instrucao.opcode, "POT")){
        *acc = 1.0;
        sscanf(linha,"%*s #%d #%d", &instrucao.registradorDestino, &instrucao.registradorDestino2);
        for(int i=0; i<reg->registradores[instrucao.registradorDestino2];i++){
            *acc *= reg->registradores[instrucao.registradorDestino];
        }
    }
    else if(!strcmp(instrucao.opcode,"FAT")){
        int x = 1;
        sscanf(linha,"%*s #%d", &instrucao.registradorDestino);
        for (int i = 1; i <= reg->registradores[instrucao.registradorDestino]; i++)
        {
            x *= i;
        }
        *acc = x;
    }
    else if(!strcmp( instrucao.opcode, "DIVI")){                                                                                                          
        sscanf(linha,"%*s #%d #%d", &instrucao.registradorDestino, &instrucao.registradorDestino2);
       *acc = reg->registradores[instrucao.registradorDestino] / reg->registradores[instrucao.registradorDestino2];
    }
    else if(!strcmp(instrucao.opcode, "MULI")){
        sscanf(linha,"%*s #%d #%d", &instrucao.registradorDestino, &instrucao.registradorDestino2);
        *acc = reg->registradores[instrucao.registradorDestino] * reg->registradores[instrucao.registradorDestino2];
    }
    else if(!strcmp(instrucao.opcode, "ADDI")){
        sscanf(linha,"%*s #%d #%d", &instrucao.registradorDestino, &instrucao.registradorDestino2);
        *acc = reg->registradores[instrucao.registradorDestino] + reg->registradores[instrucao.registradorDestino2];
    }
}

void sti ( char* linha, Instrucoes instrucao, Processador* rge ){
    sscanf(linha,"%*s #%d %lf", &instrucao.registradorDestino, &instrucao.operacao1);
    rge->registradores[instrucao.registradorDestino] = instrucao.operacao1;
}

void sto( char* linha, Instrucoes instrucao, Processador* rge,double *acc ){
    sscanf(linha,"%*s #%d", &instrucao.registradorDestino);
    rge->registradores[instrucao.registradorDestino] = *acc;
}

void jump(int* contlinha,int linhadestino){
   
    *contlinha = linhadestino-2;
}

int blt( char* linha, Instrucoes instrucao, Processador* reg,int* linhadestino ){
    sscanf(linha, "%*s #%d #%d %d", &instrucao.registradorDestino, &instrucao.registradorDestino2,linhadestino);
    return reg->registradores[instrucao.registradorDestino] < reg->registradores[instrucao.registradorDestino2] ? 1 : 0;
}

int beq( char* linha, Instrucoes* instrucao, Processador* reg,int* linhadestino ){
    sscanf(linha, "%*s #%d #%d %d", &instrucao->registradorDestino, &instrucao->registradorDestino2,linhadestino);
    return reg->registradores[instrucao->registradorDestino] == reg->registradores[instrucao->registradorDestino2] ?1 : 0;
}
