%{
/*
*	John Goettsche
*	CS 210 Homework #8
*	Bison Project
*/

//#define YYDEBUG 1
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include "prodrules.h"
#include "tree.h"

struct node * yyroot;
char * yyfilename;
extern int yylineno;
extern char * yytext;
extern FILE * yyin;

void yyerror(char *s);
void warn(char *s);
void stop(char *s);
struct node * alacnary(int, int, int,...);

%};

%union {
	struct node * n;
};

%token <n> IDENT
%token <n> INT
%token <n> ASSIGN
%token <n> LP
%token <n> RP
%token <n> SEGMENT
%token <n> BAR
%token <n> BARBAR
%token <n> BREATH
%token <n> CAESURA
%token <n> TIE
%token <n> REPEAT
%token <n> ENDREPEAT
%token <n> SIMILE
%token <n> SIMILE2
%token <n> SEGNO
%token <n> CODA
%token <n> DALSEGNO
%token <n> BRACE
%token <n> ENDSTAFF
%token <n> AL
%token <n> ALCODA
%token <n> FINE
%token <n> COMMA
%token <n> SPACE

%type <n> root;
%type <n> prog;
%type <n> titlesection;
%type <n> idents_or_ints;
%type <n> staves;
%type <n> staff;
%type <n> brseglines;
%type <n> line;
%type <n> line2;
%type <n> measures;
%type <n> msep;
%type <n> measure;
%type <n> statements;
%type <n> ssep;
%type <n> repeat;
%type <n> statement;
%type <n> optlabel;
%type <n> label;
%type <n> expression;
%type <n> assignment;
%type <n> call;
%type <n> values;
%type <n> value;

%%

root:
	prog									{	yyroot = $1;
												int code = $1->symbol;
												int child0 = $1->u.nt.child[0]->symbol;
												int child1 = $1->u.nt.child[1]->symbol;
											};

prog: 
	titlesection staves 					{ $$ = alacnary(PROG, PROGr1, 2, $1, $2);};

titlesection: 
	BREATH idents_or_ints BREATH 			{	$$ = alacnary(TITLESECTION, TITLESECTION, 3, $1, $2, $3);};

idents_or_ints : 
	IDENT 									{	$$ = alacnary(IDENTS_OR_INTS, IDENTS_OR_INTSr1, 1, $1);}
	| IDENT idents_or_ints 					{	$$ = alacnary(IDENTS_OR_INTS, IDENTS_OR_INTSr2, 2, $1, $2);}
	| INT 									{	$$ = alacnary(IDENTS_OR_INTS, IDENTS_OR_INTSr3, 1, $1);}
	| INT idents_or_ints 					{	$$ = alacnary(IDENTS_OR_INTS, IDENTS_OR_INTSr4, 2, $1, $2);}
	| SPACE 								{	$$ = alacnary(IDENTS_OR_INTS, IDENTS_OR_INTSr5, 1, $1);}
	| SPACE idents_or_ints 					{	$$ = alacnary(IDENTS_OR_INTS, IDENTS_OR_INTSr6, 2, $1, $2);};

staves: 
	staff 									{	$$ = alacnary(STAVES, STAVESr1, 1, $1);}
	| staff staves 							{	$$ = alacnary(STAVES, STAVESr2, 2, $1, $2);};

staff: 
	BRACE SEGMENT brseglines ENDSTAFF 		{	$$ = alacnary(STAFF, STAFFr1, 4, $1, $2, $3, $4);};

brseglines : 
	BRACE line BRACE SEGMENT brseglines 	{	$$ = alacnary(BRSEGLINES, BRSEGLINESr1, 5, $1, $2, $3, $4, $5);}
	| 										{	$$ = treenode(BRSEGLINES);
												$$->u.nt.production_rule = BRSEGLINESr2;};

line : 
	line2 									{	$$ = alacnary(LINE, LINEr1, 1, $1);};
	| line2 msep 							{	$$ = alacnary(LINE, LINEr2, 2, $1, $2);};

line2 : 
	measure		 							{	$$ = alacnary(LINE2, LINE2r1, 1, $1);}
	| repeat 								{	$$ = alacnary(LINE2, LINE2r2, 1, $1);}
	| measure msep line2 					{	$$ = alacnary(LINE2, LINE2r3, 3, $1, $2, $3);}
	| repeat msep line2 					{	$$ = alacnary(LINE2, LINE2r4, 3, $1, $2, $3);}

measures : 
	measure		 							{	$$ =  alacnary(MEASURES, MEASURESr1, 1, $1);}
	| measure msep measures 				{	$$ =  alacnary(MEASURES, MEASURESr2, 3, $1, $2, $3);}

msep : 
	BAR 									{	$$ =  alacnary(MSEP, MSEPr1, 1, $1);}
	| BARBAR 								{	$$ =  alacnary(MSEP, MSEPr2, 1, $1);}
	| SIMILE 								{	$$ =  alacnary(MSEP, MSEPr3, 1, $1);}
	| SIMILE2 								{	$$ =  alacnary(MSEP, MSEPr4, 1, $1);};

measure : 
	statements 								{	$$ =  alacnary(MEASURE, MEASUREr1, 1, $1);}
	| 										{	$$ =  treenode(MEASURE);
												$$->u.nt.production_rule = MEASUREr2;};

statements : 
	statement		 						{	$$ =  alacnary(STATEMENTS, STATEMENTSr1, 1, $1);}
	| statement ssep statements 			{	$$ =  alacnary(STATEMENTS, STATEMENTSr2, 3, $1, $2, $3);};

ssep : 
	BREATH	 								{	$$ =  alacnary(SSEP, SSEPr1, 1, $1);}
	| CAESURA 								{	$$ =  alacnary(SSEP, SSEPr2, 1, $1);}
	| TIE 									{	$$ =  alacnary(SSEP, SSEPr3, 1, $1);};

repeat : 
	REPEAT measures ENDREPEAT 				{	$$ =  alacnary(REPEAT, REPEATr1, 3, $1, $2, $3);};

statement : 
	optlabel expression			 			{	$$ =  alacnary(STATEMENT, STATEMENT, 2, $1, $2);};

optlabel : 
	label 									{	$$ =  alacnary(OPTLABEL, OPTLABELr1, 1, $1);}
	| 										{	$$ =  treenode(OPTLABEL);
												$$->u.nt.production_rule = OPTLABELr2;};

label : 
	SEGNO 									{	$$ =  alacnary(LABEL, LABELr1, 1, $1);}
	| CODA 									{	$$ =  alacnary(LABEL, LABELr2, 1, $1);}
	| FINE 									{	$$ =  alacnary(LABEL, LABELr3, 1, $1);}
	| DALSEGNO 								{	$$ =  alacnary(LABEL, LABELr4, 1, $1);}
	| DALSEGNO AL ALCODA					{	$$ =  alacnary(LABEL, LABELr5, 3, $1, $2, $3);};

expression : 
	assignment 								{	$$ =  alacnary(EXPRESSION, EXPRESSIONr1, 1, $1);}	
	| call									{	$$ =  alacnary(EXPRESSION, EXPRESSIONr2, 1, $1);};

assignment : 
	IDENT ASSIGN value 						{	$$ =  alacnary(ASSIGNMENT, ASSIGNMENTr1, 3, $1, $2, $3);};

call : 
	IDENT LP RP 							{	$$ =  alacnary(CALL, CALLr1, 3, $1, $2, $3);}
	| IDENT LP values RP 					{	$$ =  alacnary(CALL, CALLr2, 4, $1, $2, $3, $4);};

values : 
	value 									{	$$ =  alacnary(VALUES, VALUESr1, 1, $1);}
	| value COMMA values 					{	$$ =  alacnary(VALUES, VALUESr2, 3, $1, $2, $3);};

value: 
	IDENT 									{	$$ =  alacnary(VALUE, VALUEr1, 1, $1);}
	| INT 									{	$$ =  alacnary(VALUE, VALUEr2, 1, $1);}
	| call 									{	$$ =  alacnary(VALUE, VALUEr3, 1, $1);};

%%

void yyerror(char *s)
{
	fprintf(stderr, "%s: %s line %d '%s' token\nparse failed\n", 
		s, yyfilename, yylineno, yytext);
	exit(-1);
}

void warn(char *s)
{
	fprintf(stderr, "%s: %s line %d '%s' token\n", 
		s, yyfilename, yylineno, yytext);
}

void stop(char *s)
{
	fprintf(stderr, "%s: %s line %d '%s' token\nparse failed\n", 
		s, yyfilename, yylineno, yytext);
	exit(-1);
}


struct node * alacnary(int symbol, int prodRule, int children,...){
	struct node * nd;
	nd =  treenode(symbol);
	nd->u.nt.production_rule = prodRule;
	int c = 0;
	va_list mylist;
	va_start(mylist, children);
	while(c < children){
		nd->u.nt.child[c] = va_arg(mylist, struct node *);
		c++;
	}
	va_end(mylist);
	return nd;
}

int main(int argc, char **argv )
  {
	//yydebug = 1;
	
	int rv;
    ++argv, --argc;  /* skip over program name */
	
    if ( argc > 0 ){
		yyfilename = argv[0];
		yyin = fopen( argv[0], "r" );
	}else{
		yyin = stdin;
	}
		
    //printf("---calling yyparse---\n");
    rv = yyparse();
	//printf("---yyparse returned %d---\n", rv);
	//printf("---calling treeprint---\n");
    treeprint(yyroot);
    //printf("---done w/ treeprint---\n");
    return 0;
  }

