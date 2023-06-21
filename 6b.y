%{
#include<stdio.h>
int id=0, key=0, op=0;
extern FILE *yyin;
%}
%token KEY ID OP
%%
S:E '\n' {return 0;}
E : KEY E {key++;}
 | ID E {id++;}
 | OP E {op++;}
 | KEY {key++;}
 | ID {id++;}
 | OP {op++;};
%%
int main()
{

	yyin = fopen("a.c", "r");
	yyparse();
	printf("id = %d\nkeyword = %d\noperator = %d\n", id, key, op);
	fclose(yyin);

	return 0;
}

int yyerror()
{
	printf("Error\n");
	return 0;
}

