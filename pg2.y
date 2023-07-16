%{
	#include<stdio.h>
%}

%token A B

%%
	str : S "\n" {printf("\nValid\n"); return 0;}
	S : C B {printf("\nValid\n"); return 0;}
	C : A C
	|A;
%%

int main()
{
	printf("\nEnter input string\n");
	yyparse();
}
	
int yyerror()
{
	printf("\nError\n");
	return 0;
}
