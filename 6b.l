%{
#include "y.tab.h"

%}
%%
int|float|char|for|printf|return|<stdio.h>|include {printf("%s is keyword\n", yytext); return KEY;}
[+\-*/(){}] {printf("%s is operator\n", yytext); return OP;}
[a-zA-Z_][a-zA-Z0-9_]* {printf("%s is identifier\n", yytext); return ID;}
. {;}
";\n" {;}
")\n" {;}
"{\n" {;}
[\n] {return yytext[0];}
%%
