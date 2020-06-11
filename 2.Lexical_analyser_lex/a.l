%{

    

%}

%%

if|else|while|int|switch|for|char|auto|break|case {printf("keyword");}
[a-z]([a-z]|[0-9])* {printf("identifier");}
[0-9]* {printf("number");}
.* {printf("invalid");}
%%
main(){
	yylex();
	return 0;
}
int yywrap(){
	
}
