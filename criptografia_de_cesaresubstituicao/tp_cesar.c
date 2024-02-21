#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>

#define TOTAL 8448255824.0 

//Armazena os quadgramas
typedef struct{
    char quadgrams[5];
    int pontuacao;
}Quadgrams;

// Armazena a os numeros binarios
typedef struct{
    char binario[8];
}Armazem;

int numero_de_quad(){//funcao responsavel por contar o numero de quadgramas presente no arquivo
//declaração das variaveis
    int num=0;
    int a;
    char q[5];
    FILE *arquivo=fopen("arquivo_de_ngrams.txt", "r");//abrindo o arquivo

    if (arquivo == NULL) {
        perror("Erro ao abrir arquivo");
        exit(EXIT_FAILURE);
    }

    while (fscanf(arquivo, "%5s %d", q, &a) != EOF) {
        num++;
    }
    fclose(arquivo);
    return num;
}

float pontuar(char *quad, Quadgrams *quadgrams, int n) {//funcao responsavel por calcular a probabilidade das metricas
    float soma = 0.0;

    for(int i=0; i<n; i++){
        if (!strcmp(quadgrams[i].quadgrams, quad)) {
            soma = log((quadgrams[i].pontuacao * 1.0) / TOTAL);
            return soma;
        }
    }

    return 0.0;
}
void coloca_quad(int n, Quadgrams *quad) {
    FILE *arq = fopen("arquivo_de_ngrams.txt", "r");

    if (arq == NULL) {
        perror("Erro ao abrir arquivo");
        exit(EXIT_FAILURE);
    }

    for (int i = 0; i < n; i++) {
        if (fscanf(arq, "%5s %d", quad[i].quadgrams, &quad[i].pontuacao) != 2) {
            fprintf(stderr, "Erro ao ler quadgramas do arquivo.\n");
            exit(EXIT_FAILURE);
        }
    }

    fclose(arq);
}

void decryption(char texto_cifrado[], char cif_aux[], int n,double menor, Quadgrams *quadgrams) {
    int i, chave;
    char cifrado[500],pega_os_quad[5];//a variavel pega_os_quad, ele pega os quadgramas que estão no arquivo
    double pontuacao, soma = 0.0;
    int tam = strlen(texto_cifrado);
    

    for (chave = 1; chave < 26; chave++) {//loop responsavel em percorrer todo o alfabeto
        // Fazer uma cópia do texto cifrado em cada iteração
        strcpy(cifrado, texto_cifrado); // copiando a string na variavel cifrado

        for (i = 0; i < tam; i++) { //loop responsavel em percorrer a string inteira
            if (cifrado[i] >= 'A' && cifrado[i] <= 'Z') { //verifica se a string está entre 65 a 90, se estiver entra dentro do if
                cifrado[i] = cifrado[i] - chave;//dar um shift para trás, do x vai para o w
                if (cifrado[i] < 'A' && cifrado[i] != ' ') { // se for menor que 65 e diferente de 32, soma 26, para entrar dentro alfabeto
                    cifrado[i] = cifrado[i] + 26;
                }
            } 
        }
        
        for (int x = 0; x + 4 <= tam; x++) {//loop para extrair sequencias de quadgrams da mensagem descriptografada
            for (int k = 0; k < 4; k++) {
                pega_os_quad[k] = cifrado[x + k];//Extrai a sequência de 4 letras
            }
            pega_os_quad[4] = '\0';//adiciona um terminador nulo para indicar o fim do quadgram
            float valor_quad = pontuar(pega_os_quad, quadgrams, n);//calcula a pontuação do quadgram
            soma += valor_quad;//acumula as pontuações dos quadgrams para a mensagem descriptografada
        }
        pontuacao = soma;
        soma = 0.0;

        if(pontuacao > menor){//verifica qual é a maior pontuação
            for(int p=0;p<tam;p++)
                cif_aux [p]= cifrado[p];
            menor=pontuacao;
        }
    
        // Imprimir o texto descriptografado após cada iteração
        printf("\n\nTexto Descriptografado (chave %d): ", chave);

        for(int l=0;l<tam;l++){
            printf("%c",cifrado[l]);
        }

        printf("\nPontuação: %f\n", pontuacao);
        printf("\n");
        soma = 0.0;
    }
    
    printf("\nTexto Descriptografo: ");
    for(int i=0;i<tam;i++){
        printf("%c", cif_aux[i]);
    }
    printf("\nPontuação:%lf\n", menor);
}

int main(){
    int soma, tam = 0, c , i = 0 , k = 0 ;
    char texto_descriptografado[500];
    double menor=-5000;
    Armazem letra[500];

    FILE *arquivo;
    FILE *arquivo1;
    
    arquivo = fopen("arquivo_binario_cesar.txt", "r");
    arquivo1 = fopen("arquivo_dis", "w");
    
    if (arquivo == NULL || arquivo1 == NULL) {
        perror("Erro ao abrir arquivo(s)");
        exit(EXIT_FAILURE);
    }

    while (fscanf(arquivo,"%s", letra[i].binario)!=EOF)
    {    
        tam = strlen(letra[i].binario);
        soma = 0;
        c=0;
        
        for (int j = tam; j > 0; j--)
        {
            if(letra[i].binario[j-1] == '1'){
                soma += pow(2.0, c);
            }
            c++;

        }

        
       if(soma != 32){
            letra[i].binario[k]=soma;
            soma++;
        };

        switch (letra[i].binario[k])
        {
        case 65:
            fprintf( arquivo1,"A");
            break;
        case 66:
            fprintf( arquivo1,"B");
            break;
        case 67:
            fprintf( arquivo1,"C");
            break;
        case 68:
            fprintf( arquivo1,"D");
            break;
        case 69:
            fprintf( arquivo1,"E");
            break;
        case 70:
            fprintf( arquivo1,"F");
            break;
        case 71:
            fprintf( arquivo1,"G");
            break;
        case 72:
            fprintf( arquivo1,"H");
            break;
        case 73:
            fprintf( arquivo1,"I");
            break;
        case 74:
            fprintf( arquivo1,"J");
            break;
        case 75:
            fprintf( arquivo1,"K");
            break;
        case 76:
            fprintf( arquivo1,"L");
            break;
        case 77:
            fprintf( arquivo1,"M");
            break;
        case 78:
            fprintf( arquivo1,"N");
            break;
        case 79:
            fprintf( arquivo1,"O");
            break;
        case 80:
            fprintf( arquivo1,"P");
            break;
        case 81:
            fprintf( arquivo1,"Q");
            break;
        case 82:
            fprintf( arquivo1,"R");
            break;
        case 83:
            fprintf( arquivo1,"S");
            break;
        case 84:
            fprintf( arquivo1,"T");
            break;
        case 85:
            fprintf( arquivo1,"U");
            break;
        case 86:
            fprintf( arquivo1,"V");
            break;
        case 87:
            fprintf( arquivo1,"W");
            break;
        case 88:
            fprintf( arquivo1,"X");
            break;
        case 89:
            fprintf( arquivo1,"Y");
            break;
        case 90:
            fprintf( arquivo1,"Z");
            break;        
        
        }
        i++;
        k++;
    }
    
    fclose(arquivo);
    fclose(arquivo1);

    arquivo1 = fopen("arquivo_dis", "r");
    
    int o = 0;

    while (fscanf(arquivo1, "%c", &texto_descriptografado[o]) != EOF){
        o++;
    }
    texto_descriptografado[o] = '\0';

    fclose(arquivo1);

    int n=numero_de_quad();//numero de quadgramas que contem no arquivo
    Quadgrams *quadgrams = malloc(n * sizeof(Quadgrams));

    if (quadgrams == NULL) {
        perror("Erro na alocação de memória para quadgrams");
        exit(EXIT_FAILURE);
    }

    coloca_quad(n, quadgrams);

    char texto_descri[500]; 
    decryption(texto_descriptografado, texto_descri, n ,menor, quadgrams); // Chama a função com o texto cifrado

    free(quadgrams);
     
    return 0;
}