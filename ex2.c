int strcpy(char x[], char y[]){

      int i;

      i = 0;

      while( (x[i] = y[i]) != '\0')

                  i++;

      return i;
}



int main(){

char *a = "abc";
char *b = "def";
strcpy(a,b);
printf("%s",a);




}