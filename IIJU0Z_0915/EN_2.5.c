#include <stdio.h>
#include <stdlib.h>
#define FILENAME_T "emberek.bin"

typedef struct ember
{
    char nev[500];
    int azonosito;
}Ember;

int beolvas_i();
void fbeolvas(char* filename, int db);
void fkiir(char* filename, int db);


int main()
{
    int db = beolvas_i();
    fbeolvas(FILENAME_T, db);
    fkiir(FILENAME_T, db);
    return 0;
}
//Ellenorzott beolvasas
int beolvas_i()
{
    int ki;
    printf("Hany adatot szeretne felvinni? ");

    while(scanf("%d", &ki)!= 1 || ki < 0)
    {
        printf("Hiba, ujra!\n");
        fflush(stdin);
    }
    return ki;
}
//Fileba valo olvasas
void fbeolvas(char* filename, int db)
{
     int i;
     FILE *filestream;
     Ember emb;
     filestream = fopen(filename,"wb");

     if (!filestream)
        {
            printf("Hiba. Nem elerheto a file.");
            return;
        }

     for (i = 0; i < db; i++)
        {
            printf( "\nNeve: ");
            scanf( "%s", emb.nev );
            printf( "Azonositoja: ");
            scanf( "%d", &emb.azonosito );
            fwrite(&emb, sizeof(Ember),1,filestream);
        }
     fclose(filestream);
}
//Filebol valo kiiras
void fkiir(char* filename, int db)
{
     int i;
     FILE *filestream;
     Ember emb;
     char ch;

     filestream = fopen(filename,"rb");
     if (!filestream)
        {
            printf("Hiba. Nem elerheto a file.");
            return;
        }

    for(int i=0; i < db; i++)
    {
        fread(&emb, sizeof(Ember), 1, filestream);
        printf("\nNev: %s, Azonosito: %d", emb.nev, emb.azonosito);
    }

    fclose(filestream);
}
