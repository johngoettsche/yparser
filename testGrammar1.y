%%

e :	e PLUS t
		| t;
t :	t TIMES f
		| f;
f :	LPAREN e RPAREN
		| ID;

%%