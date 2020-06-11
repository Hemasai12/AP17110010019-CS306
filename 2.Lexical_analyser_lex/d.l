%{
#include<stdio.h>
#include<stdlib.h>
int c,d,bo=0,bc=0;
%}
operand [a-zA-Z0-9]+
operator [<\>\<=\>=\==\!=]
%%

{operator} {d++;printf("%s is an relational operator \n",yytext);} 

{operand} {c++;printf("%s is an operand \n",yytext);}

"(" {if(bc<=bo)bo++;}

")" {bc++;}

\n {if(bo==bc&&c>d){printf("valid exp");}else {printf("invalid exp");};exit(0);}
%%
void main(){
yylex();
}
