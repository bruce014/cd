%{
	#include<stdio.h>
%}

%token NUM
%left '+' '-'
%left '*' '/'

%%

	S:E {printf("Value = %d", $1); return 0;}
	E:E '+' E {$$ = $1+$3;}
	|E '-' E {$$ = $1-$3;}
	|E '*' E {$$ = $1*$3;}
	|E '/' E {if($3 == 0)
				{
					printf("\nDivide by zero");
					exit(0);
				}
				else
					$$ = $1/$3;}
	|'(' E ')' {$$ = $2;}
	|NUM {$$ = $1;}

%%

int main()
{
	printf("\nEnter expression\n");
	yyparse();
}
	
int yyerror()
{
	printf("Error");
	return 0;
}
