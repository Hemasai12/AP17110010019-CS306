%{

    

%}

%%
[a-z]([a-z]|[0-9])* {printf("identifier identified");}
%%
main(){
	yylex();
	return 0;
}
int yywrap(){

}
