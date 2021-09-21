#include <stdio.h>
#include <stdlib.h>
#define FILENAME_T "auto.bin"

typedef struct car
{
    char rendszam[50];
    char tipus[50];
    int ar;
}Auto;

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
     Auto car;
     filestream = fopen(filename,"wb");

     if (!filestream)
        {
            printf("Hiba. Nem elerheto a file.");
            return;
        }

     for (i = 0; i < db; i++)
        {
            printf( "\nAuto rendszama: ");
            scanf( "%s", car.rendszam );
            printf( "Auto tipusa: ");
            scanf( "%s", car.tipus );
            printf( "Auto ara: ");
            scanf( "%d", &car.ar );
            fwrite(&car, sizeof(Auto),1,filestream);
        }
     fclose(filestream);
}
//Filebol valo kiiras
void fkiir(char* filename, int db)
{
     int i;
     FILE *filestream;
     Auto car;
     char ch;

     filestream = fopen(filename,"rb");
     if (!filestream)
        {
            printf("Hiba. Nem elerheto a file.");
            return;
        }

    for(int i=0; i < db; i++)
    {
        fread(&car, sizeof(Auto), 1, filestream);
        printf("\nRendszam: %s, Tipus: %s, Ar: %d", car.rendszam, car.tipus, car.ar);
    }

    fclose(filestream);
}
