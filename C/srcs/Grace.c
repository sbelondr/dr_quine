#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>

#define FT int main(){\
	/*\
	   c\
	*/\
	int fd=open("Grace_kid.c",O_RDWR | O_CREAT | O_TRUNC, 0666);\
	char *l1="#include <unistd.h>%1$c#include <stdio.h>%1$c#include <fcntl.h>%1$c";\
	char *l2="%1$c#define FT int main(){%2$c%1$c";\
	char *l3="	/*%2$c%1$c	   c%2$c%1$c	*/%2$c%1$c";\
	char *l4="	int fd=open(%1$cGrace_kid.c%1$c,O_RDWR | O_CREAT | O_TRUNC, 0666);%3$c%2$c";\
	char *l5="%sl1,n,n,n);%s,l2,n,n,n,n,n,n);%s,l3,n);%c%sl4,q,q,n);";\
	char *l6="%slc,'1',q,l1,q,n,'2',q,l2,q,n);%slc,'3',q,l3,q,n,'4',q,l4,q,n);";\
	char *l7="	char n='%cn', q='%c', b='%c%c';%c%c";\
	char *lp="	dprintf(fd,";\
	char *lc="	char *l%c=%c%s%c;%c%c	char *l%c=%c%s%c;%c%c";\
	char *ld="	char *l%c=%c%s%c;%c%c";\
	char n='\n', q='"', b='\\';\
	char *l8="%sl1,n);%sl2,n,b);%sl3,n,b);%c%c%sl4,q,n,b);%c%c";\
	char *l9="%slc,'1',q,l1,q,b,n,'2',q,l2,q,b,n);%slc,'3',q,l3,q,b,n,'4',q,l4,q,b,n);%c%c";\
	char *la="%slc,'5',q,l5,q,b,n,'6',q,l6,q,b,n);%slc,'7',q,l7,q,b,n,'p',q,lp,q,b,n);%c%c";\
	char *lb="%slc,'c',q,lc,q,b,n,'d',q,ld,q,b,n);%sl7,b,q,b,b,b,n);%c%c%slc,'8',q,l8,q,b,n,'9',q,l9,q,b,n);";\
	char *le="%slc,'a',q,la,q,b,n,'b',q,lb,q,b,n);%c%c%slc,'e',q,le,q,b,n,'f',q,lf,q,b,n);";\
	char *lf="%slc,'g',q,lg,q,b,n,'h',q,lh,q,b,n);%c%c%sl8,lp,lp,lp,b,n,lp,b,n);%sl9,lp,lp,b,n);%sla,lp,lp,b,n);%c%c";\
	char *lg="%slb,lp,lp,b,n,lp);%sle,lp,b,n,lp);%slf,lp,b,n,lp,lp,lp,b,n);%c%c";\
	char *lh="%slg,lp,lp,lp,b,n);%slh,lp,lp,b,n,b,n,n,n);%c%c	return 0;%c%c}%cFT;%c";\
	dprintf(fd,l1,n);	dprintf(fd,l2,n,b);	dprintf(fd,l3,n,b);\
	dprintf(fd,l4,q,n,b);\
	dprintf(fd,lc,'1',q,l1,q,b,n,'2',q,l2,q,b,n);	dprintf(fd,lc,'3',q,l3,q,b,n,'4',q,l4,q,b,n);\
	dprintf(fd,lc,'5',q,l5,q,b,n,'6',q,l6,q,b,n);	dprintf(fd,lc,'7',q,l7,q,b,n,'p',q,lp,q,b,n);\
	dprintf(fd,lc,'c',q,lc,q,b,n,'d',q,ld,q,b,n);	dprintf(fd,l7,b,q,b,b,b,n);\
	dprintf(fd,lc,'8',q,l8,q,b,n,'9',q,l9,q,b,n);	dprintf(fd,lc,'a',q,la,q,b,n,'b',q,lb,q,b,n);\
	dprintf(fd,lc,'e',q,le,q,b,n,'f',q,lf,q,b,n);	dprintf(fd,lc,'g',q,lg,q,b,n,'h',q,lh,q,b,n);\
	dprintf(fd,l8,lp,lp,lp,b,n,lp,b,n);	dprintf(fd,l9,lp,lp,b,n);	dprintf(fd,la,lp,lp,b,n);\
	dprintf(fd,lb,lp,lp,b,n,lp);	dprintf(fd,le,lp,b,n,lp);	dprintf(fd,lf,lp,b,n,lp,lp,lp,b,n);\
	dprintf(fd,lg,lp,lp,lp,b,n);	dprintf(fd,lh,lp,lp,b,n,b,n,n,n);\
	return 0;\
}
FT;
