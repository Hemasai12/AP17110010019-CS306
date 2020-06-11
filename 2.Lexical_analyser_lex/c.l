%{

    

%}

%%

[0-9]+ {printf("valid output");}
.* {printf("invalid");}
%%
main(){
	yylex();
	return 0;
}
int yywrap(){
	
}
