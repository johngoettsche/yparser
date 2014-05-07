%token IDENT
%token INT
%token ASSIGN
%token LP
%token RP
%token SEGMENT
%token BAR
%token BARBAR
%token BREATH
%token CAESURA
%token TIE
%token REPEAT
%token ENDREPEAT
%token SIMILE
%token SIMILE2
%token SEGNO
%token CODA
%token DALSEGNO
%token BRACE
%token ENDSTAFF
%token AL
%token ALCODA
%token FINE
%token COMMA

%%

prog: titlesection staves ;

titlesection: BREATH idents_or_ints BREATH ;

idents_or_ints : IDENT | IDENT idents_or_ints | INT | INT idents_or_ints ;

staves: staff | staff staves ;

staff: BRACE SEGMENT brseglines ENDSTAFF ;

brseglines : BRACE line BRACE SEGMENT brseglines | ;

line : line2 | line2 msep ;

line2 : measure | repeat |
	measure msep line2 | repeat msep line2 ;

measures: measure | measure msep measures ;

msep : BAR | BARBAR | SIMILE | SIMILE2 ;

measure : statements | ;

statements : statement | statement ssep statements ;

ssep : BREATH | CAESURA | TIE ;

repeat : REPEAT measures ENDREPEAT ;

statement : optlabel expression ;

optlabel : label | ;

label : SEGNO | CODA | FINE | DALSEGNO | DALSEGNO AL ALCODA;

expression : assignment | call;

assignment : IDENT ASSIGN value ;

call : IDENT LP RP | IDENT LP values RP ;

values : value | value COMMA values ;

value: IDENT | INT | call ;

