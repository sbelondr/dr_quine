#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>

#define ft_grace main

int
ft_grace(void)
{
	// best comment
	int fd=open("f",O_RDWR | O_CREAT | O_TRUNC, 0666);
	char *l1="#include <unistd.h>%c#include <stdio.h>%c#include <fcntl.h>%c";
	char *l2="%c#define ft_grace main%c%cint%cft_grace(void)%c{%c";
	char *l3="	// best comment%c";
	char *l4="	int fd=open(%cf%c,O_RDWR | O_CREAT | O_TRUNC, 0666);%c";
	char *l5="%sl1,n,n,n);%s,l2,n,n,n,n,n,n);%s,l3,n);%c%sl4,q,q,n);";
	char *l6="%slc,'1',q,l1,q,n,'2',q,l2,q,n);%slc,'3',q,l3,q,n,'4',q,l4,q,n);";
	char *l7="	char n='%cn', q='%c', b='%c%c';%c";
	char *lp="	dprintf(fd,";
	char *lc="	char *l%c=%c%s%c;%c	char *l%c=%c%s%c;%c";
	char *ld="	char *l%c=%c%s%c;%c";
	char n='\n', q='"', b='\\';
	char *l8="%sl1,n,n,n);%sl2,n,n,n,n,n,n);%sl3,n);%c%sl4,q,q,n);%c";
	char *l9="%slc,'1',q,l1,q,n,'2',q,l2,q,n);%slc,'3',q,l3,q,n,'4',q,l4,q,n);%c";
	char *la="%slc,'5',q,l5,q,n,'6',q,l6,q,n);%slc,'7',q,l7,q,n,'p',q,lp,q,n);%c";
	char *lb="%slc,'c',q,lc,q,n,'d',q,ld,q,n);%sl7,b,q,b,b,n);%c%slc,'8',q,l8,q,n,'9',q,l9,q,n);";
	char *le="%slc,'a',q,la,q,n,'b',q,lb,q,n);%c%slc,'e',q,le,q,n,'f',q,lf,q,n);";
	char *lf="%slc,'g',q,lg,q,n,'h',q,lh,q,n);%c%sl8,lp,lp,lp,n,lp,n);%sl9,lp,lp,n);%sla,lp,lp,n);%c";
	char *lg="%slb,lp,lp,n,lp);%sle,lp,n,lp);%slf,lp,n,lp,lp,lp,n);%c";
	char *lh="%slg,lp,lp,lp,n);%slh,lp,lp,n,n,n);%c	return 0;%c}%c";
	dprintf(fd,l1,n,n,n);	dprintf(fd,l2,n,n,n,n,n,n);	dprintf(fd,l3,n);
	dprintf(fd,l4,q,q,n);
	dprintf(fd,lc,'1',q,l1,q,n,'2',q,l2,q,n);	dprintf(fd,lc,'3',q,l3,q,n,'4',q,l4,q,n);
	dprintf(fd,lc,'5',q,l5,q,n,'6',q,l6,q,n);	dprintf(fd,lc,'7',q,l7,q,n,'p',q,lp,q,n);
	dprintf(fd,lc,'c',q,lc,q,n,'d',q,ld,q,n);	dprintf(fd,l7,b,q,b,b,n);
	dprintf(fd,lc,'8',q,l8,q,n,'9',q,l9,q,n);	dprintf(fd,lc,'a',q,la,q,n,'b',q,lb,q,n);
	dprintf(fd,lc,'e',q,le,q,n,'f',q,lf,q,n);	dprintf(fd,lc,'g',q,lg,q,n,'h',q,lh,q,n);
	dprintf(fd,l8,lp,lp,lp,n,lp,n);	dprintf(fd,l9,lp,lp,n);	dprintf(fd,la,lp,lp,n);
	dprintf(fd,lb,lp,lp,n,lp);	dprintf(fd,le,lp,n,lp);	dprintf(fd,lf,lp,n,lp,lp,lp,n);
	dprintf(fd,lg,lp,lp,lp,n);	dprintf(fd,lh,lp,lp,n,n,n);
	return 0;
}
