#include <stdio.h>

void
ft_test(void)
{
	return;
}

int
main(void)
{
	char *l1="#include <stdio.h>%c%cvoid%cft_test(void)%c{%c";
	char *l2="	return;%c}%c%c";
	char *l3="int%cmain(void)%c{%c";
	char *l4="	char *l%c=%c%s%c;%c	char *l%c=%c%s%c;%c";
	char *l5="	char n='%cn', q='%c', b='%c%c';%c";
	char *l6="	printf(";
	char *l7="%sl1,n,n,n,n,n);%c";
	char *l8="%sl%c,n,n,n);%c";
	char *l9="	char *l%c=%c%s%c;%c";
	char *la="%sl4,'1',q,l1,q,n,'2',q,l2,q,n);%sl4,'3',q,l3,q,n,'4',q,l4,q,n);%c";
	char *lb="%sl4,'5',q,l5,q,n,'6',q,l6,q,n);%c";
	char *lc="%sl9,'7',q,l7,q,n);%sl9,'8',q,l8,q,n);%sl9,'9',q,l9,q,n);%c";
	char *ld="%sl4,'a',q,la,q,n,'b',q,lb,q,n);%sl4,'c',q,lc,q,n,'d',q,ld,q,n);%sl4,'e',q,le,q,n,'f',q,lf,q,n);%sl5,b,q,b,b,n);%c";
	char *le="%sl7,l6,n);%sl8,l6,'2',n);%sl8,l6,'3',n);%sla,l6,l6,n);%slb,l6,n);%slc,l6,l6,l6,n);%c";
	char *lf="%sld,l6,l6,l6,l6,n);%sle,l6,l6,l6,l6,l6,l6,n);%slf,l6,l6,l6,n,n,n);%c	return 0;%c}%c";
	char n='\n', q='"', b='\\';
	printf(l1,n,n,n,n,n);
	printf(l2,n,n,n);
	printf(l3,n,n,n);
	printf(l4,'1',q,l1,q,n,'2',q,l2,q,n);	printf(l4,'3',q,l3,q,n,'4',q,l4,q,n);
	printf(l4,'5',q,l5,q,n,'6',q,l6,q,n);
	printf(l9,'7',q,l7,q,n);	printf(l9,'8',q,l8,q,n);	printf(l9,'9',q,l9,q,n);
	printf(l4,'a',q,la,q,n,'b',q,lb,q,n);	printf(l4,'c',q,lc,q,n,'d',q,ld,q,n);	printf(l4,'e',q,le,q,n,'f',q,lf,q,n);	printf(l5,b,q,b,b,n);
	printf(l7,l6,n);	printf(l8,l6,'2',n);	printf(l8,l6,'3',n);	printf(la,l6,l6,n);	printf(lb,l6,n);	printf(lc,l6,l6,l6,n);
	printf(ld,l6,l6,l6,l6,n);	printf(le,l6,l6,l6,l6,l6,l6,n);	printf(lf,l6,l6,l6,n,n,n);
	return 0;
}
