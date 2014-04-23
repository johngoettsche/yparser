I0
	e' -> .e 
	e -> .e PLUS t 
	e -> .t 
	t -> .t TIMES f 
	t -> .f 
	f -> .LPAREN e RPAREN 
	f -> .ID 

I1
	e' ->  e.
	e ->  e.PLUS t 

I2
	e ->  t.
	t ->  t.TIMES f 

I3
	t ->  f.

I4
	f ->  LPAREN.e RPAREN 
	e -> .e PLUS t 
	e -> .t 
	t -> .t TIMES f 
	t -> .f 
	f -> .LPAREN e RPAREN 
	f -> .ID 

I5
	f ->  ID.

I6
	e ->  e PLUS.t 
	t -> .t TIMES f 
	t -> .f 
	f -> .LPAREN e RPAREN 
	f -> .ID 

I7
	t ->  t TIMES.f 
	f -> .LPAREN e RPAREN 
	f -> .ID 

I8
	f ->  LPAREN e.RPAREN 
	e ->  e.PLUS t 

I9
	e ->  e PLUS t.
	t ->  t.TIMES f 

I10
	t ->  t TIMES f.

I11
	f ->  LPAREN e RPAREN.

