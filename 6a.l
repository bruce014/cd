%{
	int sc=0, mc=0;
%}

%%
	"//".* {sc++; fprintf(yyout, " ");}
	"/*"(.*\n)*.*"*/" {mc++; fprintf(yyout, " ");}
	. fprintf(yyout, "%s", yytext;}
%%

int main()
{
	yyin = fopen("a.txt", "r");
	yyout = fopen("b.txt", "w");
	yylex();
	fclose(yyin);
	fclose(yyout);
}


