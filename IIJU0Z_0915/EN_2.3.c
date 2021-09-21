#include <stdio.h>
#include <stdlib.h>
void pelda_1();

int main()
{
    pelda_1();
    return 0;
}

void pelda_1()
{
    FILE *fp, *fp2;
    char ch;
    char fnev[50], fnev2[50];
    printf("Filenev: ");
    scanf("%s", fnev);
    fp = fopen(fnev, "w");
    printf("Uzenet ");
    while((ch = getchar()) !='#'){
        putc(ch, fp);
    }
    fclose(fp);
    printf("Masodik file neve: ");
    scanf("%s", fnev2);
    fp2 = fopen(fnev2, "w");
    fp = fopen(fnev, "r");
    while((ch = getc(fp)) != EOF){
        putc(ch, fp2);
    }
    fclose(fp);
    return 0;
}

