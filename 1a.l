%{
#include<stdio.h>
int opr=0, opnd=0, b=0;
%}

%%
[0-9]+ {opnd++; printf("\n%s is an operand", yytext);}
[+\-*/] {opr++; printf("\n%s is an operator", yytext);}
[(] {b++;}
[)] {b--;}
%%

int main()
{
	printf("Enter expression: ");
	yylex();
	if(opr>=opnd || b!=0 || opnd==1)
	{
		printf("Invalid");
		exit(0);
	}
	else
	{
		printf("\nValid\n");
		printf("Operator = %d\nOperand = %d\n",opr, opnd);
		
	}

}


