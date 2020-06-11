%{
int c=0;
int symboltable[100];
%}

  
%% 
[a-z]([a-z]|[0-9])* {symboltable[c]=yytext;c=c+1;}; (printf("%d", c));
%% 
  
main(){
	yylex();
	return 0;
}
int yywrap(){

}
