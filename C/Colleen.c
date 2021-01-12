#include <stdio.h>

// best comment
void
ft_test(void)
{
	return;
}

int
main(void)
{
	// comment
	char *l1="#include <stdio.h>%c%c// best comment%cvoid%cft_test(void)%c{%c";
	char *l2="	return;%c}%c%cint%cmain(void)%c{%c	// comment%c";
	char *l4="	char *l%c=%c%s%c;%c	char *l%c=%c%s%c;%c";
	char *l5="	char n='%cn', q='%c', b='%c%c';%c";
	char *l6="	printf(";
	char *l7="%sl1,n,n,n,n,n,n);%sl2,n,n,n,n,n,n,n);%c";
	char *l9="	char *l%c=%c%s%c;%c	char *l%c=%c%s%c;%c	char *l%c=%c%s%c;%c";
	char *la="%sl9,'1',q,l1,q,n,'2',q,l2,q,n,'4',q,l4,q,n);%c";
	char *lb="%sl4,'5',q,l5,q,n,'6',q,l6,q,n);%sl4,'7',q,l7,q,n,'9',q,l9,q,n);%c";
	char *ld="%sl9,'a',q,la,q,n,'b',q,lb,q,n,'d',q,ld,q,n);%c%sl4,'e',q,le,q,n,'f',q,lf,q,n);";
	char *le="%sl5,b,q,b,b,n);%c%sl7,l6,l6,n);%sla,l6,n);%slb,l6,l6,n);%c";
	char *lf="%sld,l6,n,l6);%sle,l6,n,l6,l6,l6,n);%slf,l6,l6,l6,n,n,n);%c	return 0;%c}%c";
	char n='\n', q='"', b='\\';
	printf(l1,n,n,n,n,n,n);	printf(l2,n,n,n,n,n,n,n);
	printf(l9,'1',q,l1,q,n,'2',q,l2,q,n,'4',q,l4,q,n);
	printf(l4,'5',q,l5,q,n,'6',q,l6,q,n);	printf(l4,'7',q,l7,q,n,'9',q,l9,q,n);
	printf(l9,'a',q,la,q,n,'b',q,lb,q,n,'d',q,ld,q,n);
	printf(l4,'e',q,le,q,n,'f',q,lf,q,n);	printf(l5,b,q,b,b,n);
	printf(l7,l6,l6,n);	printf(la,l6,n);	printf(lb,l6,l6,n);
	printf(ld,l6,n,l6);	printf(le,l6,n,l6,l6,l6,n);	printf(lf,l6,l6,l6,n,n,n);
	return 0;
}
