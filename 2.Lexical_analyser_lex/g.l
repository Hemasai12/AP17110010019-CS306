
%{ 
#include<stdio.h> 
#include<string.h> 
char line[100]; 

%} 

%% 
['\n'] { fprintf(yyout,"%s\n",line);} 
(.*)	 { strcpy(line,yytext); } 
%% 


int yywrap() 
{ 
	return 1; 
} 

/* code section */
int main() 
{ 
		extern FILE *yyin, *yyout; 
	yyin=fopen("input.txt","r"); 

		
		
	yyout=fopen("output.txt","w"); 
	yylex(); 
} 

