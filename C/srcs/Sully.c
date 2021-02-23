#define _GNU_SOURCE
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<sys/types.h>
#include<unistd.h>
#include<fcntl.h>
void launch_command(int i,char*l0){char *c;asprintf(&c,l0,i);system(c);free(c);}
int main(){
int i=5;
if(i<=0)
return 0;
char *env = getenv("father");
(env && strcmp(env, "no") == 0) ? i-- : setenv("father", "no", 1);
char *f;asprintf(&f,"Sully_%d.c",i);
int fd=open(f,O_RDWR | O_CREAT | O_TRUNC, 0666);
char n='\n',p='%',b='\\',d='"';
char *l0="gcc Sully_%1$d.c -o Sully_%1$d && ./Sully_%1$d";
char *l1="#define _GNU_SOURCE%1$c#include<stdio.h>%1$c#include<string.h>%1$c#include<stdlib.h>%1$c#include<sys/types.h>%1$c#include<unistd.h>%1$c#include<fcntl.h>%1$c";
char *l2="void launch_command(int i,char*l0){char *c;asprintf(&c,l0,i);system(c);free(c);}%1$cint main(){%1$cint i=%2$d;%1$cif(i<=0)%1$creturn 0;%1$c";
char *l7="char *env = getenv(%2$cfather%2$c);%1$c(env && strcmp(env, %2$cno%2$c) == 0) ? i-- : setenv(%2$cfather%2$c, %2$cno%2$c, 1);%1$c";
char *l3="char *f;asprintf(&f,%3$cSully_%2$cd.c%3$c,i);%1$cint fd=open(f,O_RDWR | O_CREAT | O_TRUNC, 0666);";
char *l8="%1$cchar n='%3$cn',p='%2$c',b='%3$c%3$c',d='%4$c';%1$c";
char *l4="%2$sl1,n);%2$sl2,n,i);%2$sl7,n,d);%2$sl3,n,p,d);%2$sl8,n,p,b,d);%2$slc,'0',d,l0,n,'1',l1);%1$c%2$slc,'2',d,l2,n,'7',l7);%2$slc,'3',d,l3,n,'8',l8);%2$slc,'4',d,l4,n,'c',lc);";
char *lc="char *l%1$c=%2$c%3$s%2$c;%4$cchar *l%5$c=%2$c%6$s%2$c;%4$c";
char *lp="dprintf(fd,";
char *l5="%1$slc,'r',d,lr,n,'6',l6);%2$c%1$sl4,n,lp);%1$sl6,lp,n);%1$sl5,lp,n);%1$slr,n,d,p,b);%2$c";
char *lr="launch_command(i,l0);%1$cfree(f);%1$creturn (0);%1$c}%1$c";
char *l6="%1$slc,'p',d,lp,n,'5',l5);%2$c";
dprintf(fd,l1,n);dprintf(fd,l2,n,i);dprintf(fd,l7,n,d);dprintf(fd,l3,n,p,d);dprintf(fd,l8,n,p,b,d);dprintf(fd,lc,'0',d,l0,n,'1',l1);
dprintf(fd,lc,'2',d,l2,n,'7',l7);dprintf(fd,lc,'3',d,l3,n,'8',l8);dprintf(fd,lc,'4',d,l4,n,'c',lc);dprintf(fd,lc,'p',d,lp,n,'5',l5);
dprintf(fd,lc,'r',d,lr,n,'6',l6);
dprintf(fd,l4,n,lp);dprintf(fd,l6,lp,n);dprintf(fd,l5,lp,n);dprintf(fd,lr,n,d,p,b);
launch_command(i,l0);
free(f);
return (0);
}
