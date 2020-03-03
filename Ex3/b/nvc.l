%{
int numv=0;
int numc=0;
int inv=0;
%}
%%
[aeiouAEIOU] { numv++; }
[a-zA-Z] {numc++;}
. {inv++;}
%%
main()
{
yylex();
printf("no of vowels = %d \n",numv);
printf("no of consonants = %d \n",numc);
printf("no of invalid lexemes = %d \n",inv);
}
int yywrap()
{
return 1;
}