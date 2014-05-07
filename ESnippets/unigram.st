I0
	program' -> .program 
	program -> .decls EOFX 
	decls -> .
	decls -> .decls decl 
	decl -> .record 
	decl -> .proc 
	decl -> .global 
	decl -> .link 
	decl -> .package 
	decl -> .import 
	decl -> .invocable 
	decl -> .cl 
	record -> .RECORD IDENT LPAREN fldlist RPAREN 
	proc -> .prochead SEMICOL locals initial procbody END 
	prochead -> .PROCEDURE IDENT LPAREN arglist RPAREN 
	global -> .GLOBAL idlist 
	link -> .LINK lnklist 
	package -> .PACKAGE lnkfile 
	import -> .IMPORT implist 
	invocable -> .INVOCABLE invoclist 
	cl -> .classhead SEMICOL END 
	cl -> .classhead optsemi clocals methods optsemi initiallysection END 
	classhead -> .CLASS IDENT supers LPAREN carglist RPAREN 

I1
	program' ->  program.

I2
	program ->  decls.EOFX 
	decls ->  decls.decl 
	decl -> .record 
	decl -> .proc 
	decl -> .global 
	decl -> .link 
	decl -> .package 
	decl -> .import 
	decl -> .invocable 
	decl -> .cl 
	record -> .RECORD IDENT LPAREN fldlist RPAREN 
	proc -> .prochead SEMICOL locals initial procbody END 
	prochead -> .PROCEDURE IDENT LPAREN arglist RPAREN 
	global -> .GLOBAL idlist 
	link -> .LINK lnklist 
	package -> .PACKAGE lnkfile 
	import -> .IMPORT implist 
	invocable -> .INVOCABLE invoclist 
	cl -> .classhead SEMICOL END 
	cl -> .classhead optsemi clocals methods optsemi initiallysection END 
	classhead -> .CLASS IDENT supers LPAREN carglist RPAREN 

I3
	decl ->  record.

I4
	decl ->  proc.

I5
	decl ->  global.

I6
	decl ->  link.

I7
	decl ->  package.

I8
	decl ->  import.

I9
	decl ->  invocable.

I10
	decl ->  cl.

I11
	record ->  RECORD.IDENT LPAREN fldlist RPAREN 

I12
	proc ->  prochead.SEMICOL locals initial procbody END 

I13
	prochead ->  PROCEDURE.IDENT LPAREN arglist RPAREN 

I14
	global ->  GLOBAL.idlist 
	idlist -> .IDENT 
	idlist -> .idlist COMMA IDENT 

I15
	link ->  LINK.lnklist 
	lnklist -> .lnkfile 
	lnklist -> .lnklist COMMA lnkfile 
	lnkfile -> .IDENT 
	lnkfile -> .STRINGLIT 

I16
	package ->  PACKAGE.lnkfile 
	lnkfile -> .IDENT 
	lnkfile -> .STRINGLIT 

I17
	import ->  IMPORT.implist 
	implist -> .lnkfile 
	implist -> .implist COMMA lnkfile 
	lnkfile -> .IDENT 
	lnkfile -> .STRINGLIT 

I18
	invocable ->  INVOCABLE.invoclist 
	invoclist -> .invocop 
	invoclist -> .invoclist COMMA invocop 
	invocop -> .IDENT 
	invocop -> .STRINGLIT 
	invocop -> .STRINGLIT COLON INTLIT 

I19
	cl ->  classhead.SEMICOL END 
	cl ->  classhead.optsemi clocals methods optsemi initiallysection END 
	optsemi -> .
	optsemi -> .SEMICOL 

I20
	classhead ->  CLASS.IDENT supers LPAREN carglist RPAREN 

I21
	program ->  decls EOFX.

I22
	decls ->  decls decl.

I23
	record ->  RECORD IDENT.LPAREN fldlist RPAREN 

I24
	proc ->  prochead SEMICOL.locals initial procbody END 
	locals -> .
	locals -> .locals LOCAL varlist SEMICOL 
	locals -> .locals STATIC stalist SEMICOL 

I25
	prochead ->  PROCEDURE IDENT.LPAREN arglist RPAREN 

I26
	global ->  GLOBAL idlist.
	idlist ->  idlist.COMMA IDENT 

I27
	idlist ->  IDENT.

I28
	link ->  LINK lnklist.
	lnklist ->  lnklist.COMMA lnkfile 

I29
	lnklist ->  lnkfile.

I30
	lnkfile ->  IDENT.

I31
	lnkfile ->  STRINGLIT.

I32
	package ->  PACKAGE lnkfile.

I33
	import ->  IMPORT implist.
	implist ->  implist.COMMA lnkfile 

I34
	implist ->  lnkfile.

I35
	invocable ->  INVOCABLE invoclist.
	invoclist ->  invoclist.COMMA invocop 

I36
	invoclist ->  invocop.

I37
	invocop ->  IDENT.

I38
	invocop ->  STRINGLIT.
	invocop ->  STRINGLIT.COLON INTLIT 

I39
	cl ->  classhead SEMICOL.END 
	optsemi ->  SEMICOL.

I40
	cl ->  classhead optsemi.clocals methods optsemi initiallysection END 
	clocals -> .
	clocals -> .clocals LOCAL varlist optsemi 
	optsemi -> .
	optsemi -> .SEMICOL 

I41
	classhead ->  CLASS IDENT.supers LPAREN carglist RPAREN 
	supers -> .
	supers -> .COLON IDENT supers 
	supers -> .COLON packageref supers 

I42
	record ->  RECORD IDENT LPAREN.fldlist RPAREN 
	fldlist -> .
	fldlist -> .idlist 
	idlist -> .IDENT 
	idlist -> .idlist COMMA IDENT 

I43
	proc ->  prochead SEMICOL locals.initial procbody END 
	initial -> .
	initial -> .iconINITIAL expr SEMICOL 
	locals ->  locals.LOCAL varlist SEMICOL 
	locals ->  locals.STATIC stalist SEMICOL 

I44
	prochead ->  PROCEDURE IDENT LPAREN.arglist RPAREN 
	arglist -> .
	arglist -> .parmlist 
	arglist -> .parmlist LBRACK RBRACK 
	parmlist -> .arg 
	parmlist -> .parmlist COMMA arg 
	arg -> .IDENT 
	arg -> .IDENT COLON IDENT 
	arg -> .IDENT COLON literal 
	arg -> .IDENT COLON IDENT COLON literal 
	arg -> .IDENT COLON AND IDENT 
	arg -> .IDENT COLON IDENT COLON AND IDENT 

I45
	idlist ->  idlist COMMA.IDENT 

I46
	lnklist ->  lnklist COMMA.lnkfile 
	lnkfile -> .IDENT 
	lnkfile -> .STRINGLIT 

I47
	implist ->  implist COMMA.lnkfile 
	lnkfile -> .IDENT 
	lnkfile -> .STRINGLIT 

I48
	invoclist ->  invoclist COMMA.invocop 
	invocop -> .IDENT 
	invocop -> .STRINGLIT 
	invocop -> .STRINGLIT COLON INTLIT 

I49
	invocop ->  STRINGLIT COLON.INTLIT 

I50
	cl ->  classhead SEMICOL END.

I51
	cl ->  classhead optsemi clocals.methods optsemi initiallysection END 
	methods -> .
	methods -> .meth methods 
	methods -> .global methods 
	methods -> .record methods 
	meth -> .methhead SEMICOL locals initial procbody END 
	meth -> .ABSTRACT methhead 
	methhead -> .METHOD IDENT LPAREN arglist RPAREN 
	global -> .GLOBAL idlist 
	record -> .RECORD IDENT LPAREN fldlist RPAREN 
	clocals ->  clocals.LOCAL varlist optsemi 

I52
	classhead ->  CLASS IDENT supers.LPAREN carglist RPAREN 

I53
	supers ->  COLON.IDENT supers 
	supers ->  COLON.packageref supers 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I54
	record ->  RECORD IDENT LPAREN fldlist.RPAREN 

I55
	fldlist ->  idlist.
	idlist ->  idlist.COMMA IDENT 

I56
	proc ->  prochead SEMICOL locals initial.procbody END 
	procbody -> .
	procbody -> .nexpr SEMICOL procbody 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I57
	initial ->  iconINITIAL.expr SEMICOL 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I58
	locals ->  locals LOCAL.varlist SEMICOL 
	varlist -> .IDENT 
	varlist -> .IDENT ASSIGN expr1 
	varlist -> .varlist COMMA IDENT 
	varlist -> .varlist COMMA IDENT ASSIGN expr1 

I59
	locals ->  locals STATIC.stalist SEMICOL 
	stalist -> .IDENT 
	stalist -> .IDENT ASSIGN expr1 
	stalist -> .stalist COMMA IDENT 
	stalist -> .stalist COMMA IDENT ASSIGN expr1 

I60
	prochead ->  PROCEDURE IDENT LPAREN arglist.RPAREN 

I61
	arglist ->  parmlist.
	arglist ->  parmlist.LBRACK RBRACK 
	parmlist ->  parmlist.COMMA arg 

I62
	parmlist ->  arg.

I63
	arg ->  IDENT.
	arg ->  IDENT.COLON IDENT 
	arg ->  IDENT.COLON literal 
	arg ->  IDENT.COLON IDENT COLON literal 
	arg ->  IDENT.COLON AND IDENT 
	arg ->  IDENT.COLON IDENT COLON AND IDENT 

I64
	idlist ->  idlist COMMA IDENT.

I65
	lnklist ->  lnklist COMMA lnkfile.

I66
	implist ->  implist COMMA lnkfile.

I67
	invoclist ->  invoclist COMMA invocop.

I68
	invocop ->  STRINGLIT COLON INTLIT.

I69
	cl ->  classhead optsemi clocals methods.optsemi initiallysection END 
	optsemi -> .
	optsemi -> .SEMICOL 

I70
	methods ->  meth.methods 
	methods -> .
	methods -> .meth methods 
	methods -> .global methods 
	methods -> .record methods 
	meth -> .methhead SEMICOL locals initial procbody END 
	meth -> .ABSTRACT methhead 
	methhead -> .METHOD IDENT LPAREN arglist RPAREN 
	global -> .GLOBAL idlist 
	record -> .RECORD IDENT LPAREN fldlist RPAREN 

I71
	methods ->  global.methods 
	methods -> .
	methods -> .meth methods 
	methods -> .global methods 
	methods -> .record methods 
	meth -> .methhead SEMICOL locals initial procbody END 
	meth -> .ABSTRACT methhead 
	methhead -> .METHOD IDENT LPAREN arglist RPAREN 
	global -> .GLOBAL idlist 
	record -> .RECORD IDENT LPAREN fldlist RPAREN 

I72
	methods ->  record.methods 
	methods -> .
	methods -> .meth methods 
	methods -> .global methods 
	methods -> .record methods 
	meth -> .methhead SEMICOL locals initial procbody END 
	meth -> .ABSTRACT methhead 
	methhead -> .METHOD IDENT LPAREN arglist RPAREN 
	global -> .GLOBAL idlist 
	record -> .RECORD IDENT LPAREN fldlist RPAREN 

I73
	meth ->  methhead.SEMICOL locals initial procbody END 

I74
	meth ->  ABSTRACT.methhead 
	methhead -> .METHOD IDENT LPAREN arglist RPAREN 

I75
	methhead ->  METHOD.IDENT LPAREN arglist RPAREN 

I76
	clocals ->  clocals LOCAL.varlist optsemi 
	varlist -> .IDENT 
	varlist -> .IDENT ASSIGN expr1 
	varlist -> .varlist COMMA IDENT 
	varlist -> .varlist COMMA IDENT ASSIGN expr1 

I77
	classhead ->  CLASS IDENT supers LPAREN.carglist RPAREN 
	carglist -> .
	carglist -> .cparmlist 
	carglist -> .cparmlist LBRACK RBRACK 
	cparmlist -> .carg 
	cparmlist -> .cparmlist COMMA carg 
	carg -> .priv arg 
	priv -> .
	priv -> .PLUS 
	priv -> .MINUS 

I78
	supers ->  COLON IDENT.supers 
	supers -> .
	supers -> .COLON IDENT supers 
	supers -> .COLON packageref supers 
	packageref ->  IDENT.COLONCOLON IDENT 

I79
	supers ->  COLON packageref.supers 
	supers -> .
	supers -> .COLON IDENT supers 
	supers -> .COLON packageref supers 

I80
	packageref ->  COLONCOLON.IDENT 

I81
	record ->  RECORD IDENT LPAREN fldlist RPAREN.

I82
	proc ->  prochead SEMICOL locals initial procbody.END 

I83
	procbody ->  nexpr.SEMICOL procbody 

I84
	nexpr ->  expr.
	expr ->  expr.AND expr1a 

I85
	expr ->  expr1a.
	expr1a ->  expr1a.QMARK expr1 

I86
	expr1a ->  expr1.

I87
	expr1 ->  expr2a.
	expr1 ->  expr2a.SWAP expr1 
	expr1 ->  expr2a.ASSIGN expr1 
	expr1 ->  expr2a.REVSWAP expr1 
	expr1 ->  expr2a.REVASSIGN expr1 
	expr1 ->  expr2a.AUGCONCAT expr1 
	expr1 ->  expr2a.AUGLCONCAT expr1 
	expr1 ->  expr2a.AUGDIFF expr1 
	expr1 ->  expr2a.AUGUNION expr1 
	expr1 ->  expr2a.AUGPLUS expr1 
	expr1 ->  expr2a.AUGMINUS expr1 
	expr1 ->  expr2a.AUGSTAR expr1 
	expr1 ->  expr2a.AUGINTER expr1 
	expr1 ->  expr2a.AUGSLASH expr1 
	expr1 ->  expr2a.AUGMOD expr1 
	expr1 ->  expr2a.AUGCARET expr1 
	expr1 ->  expr2a.AUGNMEQ expr1 
	expr1 ->  expr2a.AUGEQUIV expr1 
	expr1 ->  expr2a.AUGNMGE expr1 
	expr1 ->  expr2a.AUGNMGT expr1 
	expr1 ->  expr2a.AUGNMLE expr1 
	expr1 ->  expr2a.AUGNMLT expr1 
	expr1 ->  expr2a.AUGNMNE expr1 
	expr1 ->  expr2a.AUGNEQUIV expr1 
	expr1 ->  expr2a.AUGSEQ expr1 
	expr1 ->  expr2a.AUGSGE expr1 
	expr1 ->  expr2a.AUGSGT expr1 
	expr1 ->  expr2a.AUGSLE expr1 
	expr1 ->  expr2a.AUGSLT expr1 
	expr1 ->  expr2a.AUGSNE expr1 
	expr1 ->  expr2a.AUGQMARK expr1 
	expr1 ->  expr2a.AUGAND expr1 
	expr1 ->  expr2a.AUGAT expr1 
	expr2a ->  expr2a.PMATCH expr2 

I88
	expr2a ->  expr2.
	expr2 ->  expr2.TO expr3 
	expr2 ->  expr2.TO expr3 BY expr3 
	expr2 ->  expr2.POR expr3 

I89
	expr2 ->  expr3.

I90
	expr3 ->  expr4.
	expr3 ->  expr4.PAND expr3 
	expr3 ->  expr4.BAR expr3 
	expr4 ->  expr4.PIMDASSN expr5 
	expr4 ->  expr4.PASSNONMATCH expr5 
	expr4 ->  expr4.SEQ expr5 
	expr4 ->  expr4.SGE expr5 
	expr4 ->  expr4.SGT expr5 
	expr4 ->  expr4.SLE expr5 
	expr4 ->  expr4.SLT expr5 
	expr4 ->  expr4.SNE expr5 
	expr4 ->  expr4.NMEQ expr5 
	expr4 ->  expr4.NMGE expr5 
	expr4 ->  expr4.NMGT expr5 
	expr4 ->  expr4.NMLE expr5 
	expr4 ->  expr4.NMLT expr5 
	expr4 ->  expr4.NMNE expr5 
	expr4 ->  expr4.EQUIV expr5 
	expr4 ->  expr4.NEQUIV expr5 

I91
	expr4 ->  expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I92
	expr5 ->  expr6.
	expr6 ->  expr6.PLUS expr7 
	expr6 ->  expr6.DIFF expr7 
	expr6 ->  expr6.UNION expr7 
	expr6 ->  expr6.MINUS expr7 

I93
	expr6 ->  expr7.
	expr7 ->  expr7.STAR expr8 
	expr7 ->  expr7.INTER expr8 
	expr7 ->  expr7.SLASH expr8 
	expr7 ->  expr7.MOD expr8 

I94
	expr7 ->  expr8.

I95
	expr8 ->  expr9.
	expr8 ->  expr9.CARET expr8 
	expr9 ->  expr9.BACKSLASH expr10 
	expr9 ->  expr9.AT expr10 
	expr9 ->  expr9.SND expr10 
	expr9 ->  expr9.SNDBK expr10 
	expr9 ->  expr9.RCV expr10 
	expr9 ->  expr9.RCVBK expr10 
	expr9 ->  expr9.BANG expr10 
	postfixthreadop ->  expr9.SND 
	postfixthreadop ->  expr9.SNDBK 
	postfixthreadop ->  expr9.RCV 
	postfixthreadop ->  expr9.RCVBK 

I96
	expr8 ->  postfixthreadop.

I97
	expr9 ->  expr10.

I98
	expr10 ->  expr11.
	expr11 ->  expr11.LBRACK exprlist RBRACK 
	expr11 ->  expr11.LBRACE RBRACE 
	expr11 ->  expr11.LBRACE pdcolist RBRACE 
	expr11 ->  expr11.LPAREN exprlist RPAREN 
	expr11 ->  expr11.DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 ->  expr11.DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 ->  expr11.DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 ->  expr11.DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 ->  expr11.DOT IDENT 
	expr11 ->  expr11.DOT INITIALLY 
	section ->  expr11.LBRACK expr sectop expr RBRACK 

I99
	expr10 ->  AT.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I100
	expr10 ->  SND.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	expr11 ->  SND.

I101
	expr10 ->  SNDBK.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	expr11 ->  SNDBK.

I102
	expr10 ->  RCV.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	expr11 ->  RCV.

I103
	expr10 ->  RCVBK.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	expr11 ->  RCVBK.

I104
	expr10 ->  NOT.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I105
	expr10 ->  BAR.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I106
	expr10 ->  CONCAT.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I107
	expr10 ->  LCONCAT.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I108
	expr10 ->  DOT.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I109
	expr10 ->  BANG.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I110
	expr10 ->  DIFF.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I111
	expr10 ->  PLUS.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I112
	expr10 ->  STAR.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I113
	expr10 ->  SLASH.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I114
	expr10 ->  CARET.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I115
	expr10 ->  INTER.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I116
	expr10 ->  TILDE.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I117
	expr10 ->  MINUS.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I118
	expr10 ->  NMEQ.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I119
	expr10 ->  NMNE.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I120
	expr10 ->  SEQ.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I121
	expr10 ->  SNE.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I122
	expr10 ->  EQUIV.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I123
	expr10 ->  UNION.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I124
	expr10 ->  QMARK.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I125
	expr10 ->  NEQUIV.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I126
	expr10 ->  BACKSLASH.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I127
	expr10 ->  PSETCUR.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I128
	expr11 ->  literal.

I129
	expr11 ->  section.

I130
	expr11 ->  return.

I131
	expr11 ->  if.

I132
	expr11 ->  case.

I133
	expr11 ->  while.

I134
	expr11 ->  until.

I135
	expr11 ->  every.

I136
	expr11 ->  repeat.

I137
	expr11 ->  PUNEVAL.

I138
	expr11 ->  CREATE.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I139
	expr11 ->  THREAD.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I140
	expr11 ->  CRITICAL.expr2a COLON expr 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I141
	expr11 ->  IDENT.
	packageref ->  IDENT.COLONCOLON IDENT 

I142
	expr11 ->  NEXT.

I143
	expr11 ->  BREAK.nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I144
	expr11 ->  LPAREN.exprlist RPAREN 
	exprlist -> .nexpr 
	exprlist -> .exprlist COMMA nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I145
	expr11 ->  LBRACE.compound RBRACE 
	compound -> .nexpr 
	compound -> .nexpr SEMICOL compound 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I146
	expr11 ->  LBRACK.caselist RBRACK 
	caselist -> .cclause 
	caselist -> .caselist SEMICOL cclause 
	cclause -> .DEFAULT COLON expr 
	cclause -> .expr COLON expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 
	expr11 ->  LBRACK.exprlist RBRACK 
	exprlist -> .nexpr 
	exprlist -> .exprlist COMMA nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr11 ->  LBRACK.COLON expr COLON RBRACK 

I147
	expr11 ->  packageref.

I148
	expr11 ->  AND.FAIL 
	expr11 ->  AND.IDENT 

I149
	literal ->  INTLIT.

I150
	literal ->  REALLIT.

I151
	literal ->  STRINGLIT.

I152
	literal ->  CSETLIT.

I153
	return ->  FAIL.

I154
	return ->  RETURN.nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I155
	return ->  SUSPEND.nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 
	return ->  SUSPEND.expr DO expr 

I156
	if ->  IF.expr THEN expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 
	if ->  IF.expr THEN expr ELSE expr 

I157
	case ->  CASE.expr OF LBRACE caselist RBRACE 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I158
	while ->  WHILE.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 
	while ->  WHILE.expr DO expr 

I159
	until ->  UNTIL.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 
	until ->  UNTIL.expr DO expr 

I160
	every ->  EVERY.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 
	every ->  EVERY.expr DO expr 

I161
	repeat ->  REPEAT.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I162
	initial ->  iconINITIAL expr.SEMICOL 
	expr ->  expr.AND expr1a 

I163
	locals ->  locals LOCAL varlist.SEMICOL 
	varlist ->  varlist.COMMA IDENT 
	varlist ->  varlist.COMMA IDENT ASSIGN expr1 

I164
	varlist ->  IDENT.
	varlist ->  IDENT.ASSIGN expr1 

I165
	locals ->  locals STATIC stalist.SEMICOL 
	stalist ->  stalist.COMMA IDENT 
	stalist ->  stalist.COMMA IDENT ASSIGN expr1 

I166
	stalist ->  IDENT.
	stalist ->  IDENT.ASSIGN expr1 

I167
	prochead ->  PROCEDURE IDENT LPAREN arglist RPAREN.

I168
	arglist ->  parmlist LBRACK.RBRACK 

I169
	parmlist ->  parmlist COMMA.arg 
	arg -> .IDENT 
	arg -> .IDENT COLON IDENT 
	arg -> .IDENT COLON literal 
	arg -> .IDENT COLON IDENT COLON literal 
	arg -> .IDENT COLON AND IDENT 
	arg -> .IDENT COLON IDENT COLON AND IDENT 

I170
	arg ->  IDENT COLON.IDENT 
	arg ->  IDENT COLON.literal 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	arg ->  IDENT COLON.IDENT COLON literal 
	arg ->  IDENT COLON.AND IDENT 
	arg ->  IDENT COLON.IDENT COLON AND IDENT 

I171
	cl ->  classhead optsemi clocals methods optsemi.initiallysection END 
	initiallysection -> .
	initiallysection -> .INITIALLY SEMICOL locals initial procbody 
	initiallysection -> .INITIALLY LPAREN arglist RPAREN SEMICOL locals initial procbody 
	procbody -> .
	procbody -> .nexpr SEMICOL procbody 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I172
	methods ->  meth methods.

I173
	methods ->  global methods.

I174
	methods ->  record methods.

I175
	meth ->  methhead SEMICOL.locals initial procbody END 
	locals -> .
	locals -> .locals LOCAL varlist SEMICOL 
	locals -> .locals STATIC stalist SEMICOL 

I176
	meth ->  ABSTRACT methhead.

I177
	methhead ->  METHOD IDENT.LPAREN arglist RPAREN 

I178
	clocals ->  clocals LOCAL varlist.optsemi 
	optsemi -> .
	optsemi -> .SEMICOL 
	varlist ->  varlist.COMMA IDENT 
	varlist ->  varlist.COMMA IDENT ASSIGN expr1 

I179
	classhead ->  CLASS IDENT supers LPAREN carglist.RPAREN 

I180
	carglist ->  cparmlist.
	carglist ->  cparmlist.LBRACK RBRACK 
	cparmlist ->  cparmlist.COMMA carg 

I181
	cparmlist ->  carg.

I182
	carg ->  priv.arg 
	arg -> .IDENT 
	arg -> .IDENT COLON IDENT 
	arg -> .IDENT COLON literal 
	arg -> .IDENT COLON IDENT COLON literal 
	arg -> .IDENT COLON AND IDENT 
	arg -> .IDENT COLON IDENT COLON AND IDENT 

I183
	priv ->  PLUS.

I184
	priv ->  MINUS.

I185
	supers ->  COLON IDENT supers.

I186
	packageref ->  IDENT COLONCOLON.IDENT 

I187
	supers ->  COLON packageref supers.

I188
	packageref ->  COLONCOLON IDENT.

I189
	proc ->  prochead SEMICOL locals initial procbody END.

I190
	procbody ->  nexpr SEMICOL.procbody 
	procbody -> .
	procbody -> .nexpr SEMICOL procbody 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I191
	expr ->  expr AND.expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I192
	expr1a ->  expr1a QMARK.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I193
	expr1 ->  expr2a SWAP.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I194
	expr1 ->  expr2a ASSIGN.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I195
	expr1 ->  expr2a REVSWAP.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I196
	expr1 ->  expr2a REVASSIGN.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I197
	expr1 ->  expr2a AUGCONCAT.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I198
	expr1 ->  expr2a AUGLCONCAT.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I199
	expr1 ->  expr2a AUGDIFF.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I200
	expr1 ->  expr2a AUGUNION.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I201
	expr1 ->  expr2a AUGPLUS.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I202
	expr1 ->  expr2a AUGMINUS.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I203
	expr1 ->  expr2a AUGSTAR.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I204
	expr1 ->  expr2a AUGINTER.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I205
	expr1 ->  expr2a AUGSLASH.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I206
	expr1 ->  expr2a AUGMOD.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I207
	expr1 ->  expr2a AUGCARET.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I208
	expr1 ->  expr2a AUGNMEQ.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I209
	expr1 ->  expr2a AUGEQUIV.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I210
	expr1 ->  expr2a AUGNMGE.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I211
	expr1 ->  expr2a AUGNMGT.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I212
	expr1 ->  expr2a AUGNMLE.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I213
	expr1 ->  expr2a AUGNMLT.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I214
	expr1 ->  expr2a AUGNMNE.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I215
	expr1 ->  expr2a AUGNEQUIV.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I216
	expr1 ->  expr2a AUGSEQ.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I217
	expr1 ->  expr2a AUGSGE.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I218
	expr1 ->  expr2a AUGSGT.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I219
	expr1 ->  expr2a AUGSLE.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I220
	expr1 ->  expr2a AUGSLT.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I221
	expr1 ->  expr2a AUGSNE.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I222
	expr1 ->  expr2a AUGQMARK.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I223
	expr1 ->  expr2a AUGAND.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I224
	expr1 ->  expr2a AUGAT.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I225
	expr2a ->  expr2a PMATCH.expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I226
	expr2 ->  expr2 TO.expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 
	expr2 ->  expr2 TO.expr3 BY expr3 

I227
	expr2 ->  expr2 POR.expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I228
	expr3 ->  expr4 PAND.expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I229
	expr3 ->  expr4 BAR.expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I230
	expr4 ->  expr4 PIMDASSN.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I231
	expr4 ->  expr4 PASSNONMATCH.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I232
	expr4 ->  expr4 SEQ.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I233
	expr4 ->  expr4 SGE.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I234
	expr4 ->  expr4 SGT.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I235
	expr4 ->  expr4 SLE.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I236
	expr4 ->  expr4 SLT.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I237
	expr4 ->  expr4 SNE.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I238
	expr4 ->  expr4 NMEQ.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I239
	expr4 ->  expr4 NMGE.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I240
	expr4 ->  expr4 NMGT.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I241
	expr4 ->  expr4 NMLE.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I242
	expr4 ->  expr4 NMLT.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I243
	expr4 ->  expr4 NMNE.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I244
	expr4 ->  expr4 EQUIV.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I245
	expr4 ->  expr4 NEQUIV.expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I246
	expr5 ->  expr5 CONCAT.expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I247
	expr5 ->  expr5 LCONCAT.expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I248
	expr6 ->  expr6 PLUS.expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I249
	expr6 ->  expr6 DIFF.expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I250
	expr6 ->  expr6 UNION.expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I251
	expr6 ->  expr6 MINUS.expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I252
	expr7 ->  expr7 STAR.expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I253
	expr7 ->  expr7 INTER.expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I254
	expr7 ->  expr7 SLASH.expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I255
	expr7 ->  expr7 MOD.expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I256
	expr8 ->  expr9 CARET.expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I257
	expr9 ->  expr9 BACKSLASH.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I258
	expr9 ->  expr9 AT.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I259
	expr9 ->  expr9 SND.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop ->  expr9 SND.

I260
	expr9 ->  expr9 SNDBK.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop ->  expr9 SNDBK.

I261
	expr9 ->  expr9 RCV.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop ->  expr9 RCV.

I262
	expr9 ->  expr9 RCVBK.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop ->  expr9 RCVBK.

I263
	expr9 ->  expr9 BANG.expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 

I264
	expr11 ->  expr11 LBRACK.exprlist RBRACK 
	exprlist -> .nexpr 
	exprlist -> .exprlist COMMA nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 
	section ->  expr11 LBRACK.expr sectop expr RBRACK 

I265
	expr11 ->  expr11 LBRACE.RBRACE 
	expr11 ->  expr11 LBRACE.pdcolist RBRACE 
	pdcolist -> .nexpr 
	pdcolist -> .pdcolist COMMA nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I266
	expr11 ->  expr11 LPAREN.exprlist RPAREN 
	exprlist -> .nexpr 
	exprlist -> .exprlist COMMA nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I267
	expr11 ->  expr11 DOLLAR.INITIALLY LPAREN exprlist RPAREN 
	expr11 ->  expr11 DOLLAR.IDENT LPAREN exprlist RPAREN 
	expr11 ->  expr11 DOLLAR.IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 ->  expr11 DOLLAR.IDENT DOT IDENT LPAREN exprlist RPAREN 

I268
	expr11 ->  expr11 DOT.IDENT 
	expr11 ->  expr11 DOT.INITIALLY 

I269
	expr10 ->  AT expr10.

I270
	expr10 ->  SND expr10.

I271
	expr10 ->  SNDBK expr10.

I272
	expr10 ->  RCV expr10.

I273
	expr10 ->  RCVBK expr10.

I274
	expr10 ->  NOT expr10.

I275
	expr10 ->  BAR expr10.

I276
	expr10 ->  CONCAT expr10.

I277
	expr10 ->  LCONCAT expr10.

I278
	expr10 ->  DOT expr10.

I279
	expr10 ->  BANG expr10.

I280
	expr10 ->  DIFF expr10.

I281
	expr10 ->  PLUS expr10.

I282
	expr10 ->  STAR expr10.

I283
	expr10 ->  SLASH expr10.

I284
	expr10 ->  CARET expr10.

I285
	expr10 ->  INTER expr10.

I286
	expr10 ->  TILDE expr10.

I287
	expr10 ->  MINUS expr10.

I288
	expr10 ->  NMEQ expr10.

I289
	expr10 ->  NMNE expr10.

I290
	expr10 ->  SEQ expr10.

I291
	expr10 ->  SNE expr10.

I292
	expr10 ->  EQUIV expr10.

I293
	expr10 ->  UNION expr10.

I294
	expr10 ->  QMARK expr10.

I295
	expr10 ->  NEQUIV expr10.

I296
	expr10 ->  BACKSLASH expr10.

I297
	expr10 ->  PSETCUR expr10.

I298
	expr11 ->  CREATE expr.
	expr ->  expr.AND expr1a 

I299
	expr11 ->  THREAD expr.
	expr ->  expr.AND expr1a 

I300
	expr11 ->  CRITICAL expr2a.COLON expr 
	expr2a ->  expr2a.PMATCH expr2 

I301
	expr11 ->  BREAK nexpr.

I302
	expr11 ->  LPAREN exprlist.RPAREN 
	exprlist ->  exprlist.COMMA nexpr 

I303
	exprlist ->  nexpr.

I304
	expr11 ->  LBRACE compound.RBRACE 

I305
	compound ->  nexpr.
	compound ->  nexpr.SEMICOL compound 

I306
	expr11 ->  LBRACK caselist.RBRACK 
	caselist ->  caselist.SEMICOL cclause 

I307
	caselist ->  cclause.

I308
	cclause ->  DEFAULT.COLON expr 

I309
	cclause ->  expr.COLON expr 
	expr ->  expr.AND expr1a 

I310
	expr11 ->  LBRACK exprlist.RBRACK 
	exprlist ->  exprlist.COMMA nexpr 

I311
	expr11 ->  LBRACK COLON.expr COLON RBRACK 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I312
	expr11 ->  AND FAIL.

I313
	expr11 ->  AND IDENT.

I314
	return ->  RETURN nexpr.

I315
	return ->  SUSPEND nexpr.

I316
	return ->  SUSPEND expr.DO expr 
	expr ->  expr.AND expr1a 

I317
	if ->  IF expr.THEN expr 
	expr ->  expr.AND expr1a 
	if ->  IF expr.THEN expr ELSE expr 

I318
	case ->  CASE expr.OF LBRACE caselist RBRACE 
	expr ->  expr.AND expr1a 

I319
	while ->  WHILE expr.
	expr ->  expr.AND expr1a 
	while ->  WHILE expr.DO expr 

I320
	until ->  UNTIL expr.
	expr ->  expr.AND expr1a 
	until ->  UNTIL expr.DO expr 

I321
	every ->  EVERY expr.
	expr ->  expr.AND expr1a 
	every ->  EVERY expr.DO expr 

I322
	repeat ->  REPEAT expr.
	expr ->  expr.AND expr1a 

I323
	initial ->  iconINITIAL expr SEMICOL.

I324
	locals ->  locals LOCAL varlist SEMICOL.

I325
	varlist ->  varlist COMMA.IDENT 
	varlist ->  varlist COMMA.IDENT ASSIGN expr1 

I326
	varlist ->  IDENT ASSIGN.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I327
	locals ->  locals STATIC stalist SEMICOL.

I328
	stalist ->  stalist COMMA.IDENT 
	stalist ->  stalist COMMA.IDENT ASSIGN expr1 

I329
	stalist ->  IDENT ASSIGN.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I330
	arglist ->  parmlist LBRACK RBRACK.

I331
	parmlist ->  parmlist COMMA arg.

I332
	arg ->  IDENT COLON IDENT.
	arg ->  IDENT COLON IDENT.COLON literal 
	arg ->  IDENT COLON IDENT.COLON AND IDENT 

I333
	arg ->  IDENT COLON literal.

I334
	arg ->  IDENT COLON AND.IDENT 

I335
	cl ->  classhead optsemi clocals methods optsemi initiallysection.END 

I336
	initiallysection ->  INITIALLY.SEMICOL locals initial procbody 
	initiallysection ->  INITIALLY.LPAREN arglist RPAREN SEMICOL locals initial procbody 

I337
	meth ->  methhead SEMICOL locals.initial procbody END 
	initial -> .
	initial -> .iconINITIAL expr SEMICOL 
	locals ->  locals.LOCAL varlist SEMICOL 
	locals ->  locals.STATIC stalist SEMICOL 

I338
	methhead ->  METHOD IDENT LPAREN.arglist RPAREN 
	arglist -> .
	arglist -> .parmlist 
	arglist -> .parmlist LBRACK RBRACK 
	parmlist -> .arg 
	parmlist -> .parmlist COMMA arg 
	arg -> .IDENT 
	arg -> .IDENT COLON IDENT 
	arg -> .IDENT COLON literal 
	arg -> .IDENT COLON IDENT COLON literal 
	arg -> .IDENT COLON AND IDENT 
	arg -> .IDENT COLON IDENT COLON AND IDENT 

I339
	clocals ->  clocals LOCAL varlist optsemi.

I340
	classhead ->  CLASS IDENT supers LPAREN carglist RPAREN.

I341
	carglist ->  cparmlist LBRACK.RBRACK 

I342
	cparmlist ->  cparmlist COMMA.carg 
	carg -> .priv arg 
	priv -> .
	priv -> .PLUS 
	priv -> .MINUS 

I343
	carg ->  priv arg.

I344
	packageref ->  IDENT COLONCOLON IDENT.

I345
	procbody ->  nexpr SEMICOL procbody.

I346
	expr ->  expr AND expr1a.
	expr1a ->  expr1a.QMARK expr1 

I347
	expr1a ->  expr1a QMARK expr1.

I348
	expr1 ->  expr2a SWAP expr1.

I349
	expr1 ->  expr2a ASSIGN expr1.

I350
	expr1 ->  expr2a REVSWAP expr1.

I351
	expr1 ->  expr2a REVASSIGN expr1.

I352
	expr1 ->  expr2a AUGCONCAT expr1.

I353
	expr1 ->  expr2a AUGLCONCAT expr1.

I354
	expr1 ->  expr2a AUGDIFF expr1.

I355
	expr1 ->  expr2a AUGUNION expr1.

I356
	expr1 ->  expr2a AUGPLUS expr1.

I357
	expr1 ->  expr2a AUGMINUS expr1.

I358
	expr1 ->  expr2a AUGSTAR expr1.

I359
	expr1 ->  expr2a AUGINTER expr1.

I360
	expr1 ->  expr2a AUGSLASH expr1.

I361
	expr1 ->  expr2a AUGMOD expr1.

I362
	expr1 ->  expr2a AUGCARET expr1.

I363
	expr1 ->  expr2a AUGNMEQ expr1.

I364
	expr1 ->  expr2a AUGEQUIV expr1.

I365
	expr1 ->  expr2a AUGNMGE expr1.

I366
	expr1 ->  expr2a AUGNMGT expr1.

I367
	expr1 ->  expr2a AUGNMLE expr1.

I368
	expr1 ->  expr2a AUGNMLT expr1.

I369
	expr1 ->  expr2a AUGNMNE expr1.

I370
	expr1 ->  expr2a AUGNEQUIV expr1.

I371
	expr1 ->  expr2a AUGSEQ expr1.

I372
	expr1 ->  expr2a AUGSGE expr1.

I373
	expr1 ->  expr2a AUGSGT expr1.

I374
	expr1 ->  expr2a AUGSLE expr1.

I375
	expr1 ->  expr2a AUGSLT expr1.

I376
	expr1 ->  expr2a AUGSNE expr1.

I377
	expr1 ->  expr2a AUGQMARK expr1.

I378
	expr1 ->  expr2a AUGAND expr1.

I379
	expr1 ->  expr2a AUGAT expr1.

I380
	expr2a ->  expr2a PMATCH expr2.
	expr2 ->  expr2.TO expr3 
	expr2 ->  expr2.TO expr3 BY expr3 
	expr2 ->  expr2.POR expr3 

I381
	expr2 ->  expr2 TO expr3.
	expr2 ->  expr2 TO expr3.BY expr3 

I382
	expr2 ->  expr2 POR expr3.

I383
	expr3 ->  expr4 PAND expr3.

I384
	expr3 ->  expr4 BAR expr3.

I385
	expr4 ->  expr4 PIMDASSN expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I386
	expr4 ->  expr4 PASSNONMATCH expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I387
	expr4 ->  expr4 SEQ expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I388
	expr4 ->  expr4 SGE expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I389
	expr4 ->  expr4 SGT expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I390
	expr4 ->  expr4 SLE expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I391
	expr4 ->  expr4 SLT expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I392
	expr4 ->  expr4 SNE expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I393
	expr4 ->  expr4 NMEQ expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I394
	expr4 ->  expr4 NMGE expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I395
	expr4 ->  expr4 NMGT expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I396
	expr4 ->  expr4 NMLE expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I397
	expr4 ->  expr4 NMLT expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I398
	expr4 ->  expr4 NMNE expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I399
	expr4 ->  expr4 EQUIV expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I400
	expr4 ->  expr4 NEQUIV expr5.
	expr5 ->  expr5.CONCAT expr6 
	expr5 ->  expr5.LCONCAT expr6 

I401
	expr5 ->  expr5 CONCAT expr6.
	expr6 ->  expr6.PLUS expr7 
	expr6 ->  expr6.DIFF expr7 
	expr6 ->  expr6.UNION expr7 
	expr6 ->  expr6.MINUS expr7 

I402
	expr5 ->  expr5 LCONCAT expr6.
	expr6 ->  expr6.PLUS expr7 
	expr6 ->  expr6.DIFF expr7 
	expr6 ->  expr6.UNION expr7 
	expr6 ->  expr6.MINUS expr7 

I403
	expr6 ->  expr6 PLUS expr7.
	expr7 ->  expr7.STAR expr8 
	expr7 ->  expr7.INTER expr8 
	expr7 ->  expr7.SLASH expr8 
	expr7 ->  expr7.MOD expr8 

I404
	expr6 ->  expr6 DIFF expr7.
	expr7 ->  expr7.STAR expr8 
	expr7 ->  expr7.INTER expr8 
	expr7 ->  expr7.SLASH expr8 
	expr7 ->  expr7.MOD expr8 

I405
	expr6 ->  expr6 UNION expr7.
	expr7 ->  expr7.STAR expr8 
	expr7 ->  expr7.INTER expr8 
	expr7 ->  expr7.SLASH expr8 
	expr7 ->  expr7.MOD expr8 

I406
	expr6 ->  expr6 MINUS expr7.
	expr7 ->  expr7.STAR expr8 
	expr7 ->  expr7.INTER expr8 
	expr7 ->  expr7.SLASH expr8 
	expr7 ->  expr7.MOD expr8 

I407
	expr7 ->  expr7 STAR expr8.

I408
	expr7 ->  expr7 INTER expr8.

I409
	expr7 ->  expr7 SLASH expr8.

I410
	expr7 ->  expr7 MOD expr8.

I411
	expr8 ->  expr9 CARET expr8.

I412
	expr9 ->  expr9 BACKSLASH expr10.

I413
	expr9 ->  expr9 AT expr10.

I414
	expr9 ->  expr9 SND expr10.

I415
	expr9 ->  expr9 SNDBK expr10.

I416
	expr9 ->  expr9 RCV expr10.

I417
	expr9 ->  expr9 RCVBK expr10.

I418
	expr9 ->  expr9 BANG expr10.

I419
	expr11 ->  expr11 LBRACK exprlist.RBRACK 
	exprlist ->  exprlist.COMMA nexpr 

I420
	section ->  expr11 LBRACK expr.sectop expr RBRACK 
	expr ->  expr.AND expr1a 
	sectop -> .COLON 
	sectop -> .PCOLON 
	sectop -> .MCOLON 

I421
	expr11 ->  expr11 LBRACE RBRACE.

I422
	expr11 ->  expr11 LBRACE pdcolist.RBRACE 
	pdcolist ->  pdcolist.COMMA nexpr 

I423
	pdcolist ->  nexpr.

I424
	expr11 ->  expr11 LPAREN exprlist.RPAREN 
	exprlist ->  exprlist.COMMA nexpr 

I425
	expr11 ->  expr11 DOLLAR INITIALLY.LPAREN exprlist RPAREN 

I426
	expr11 ->  expr11 DOLLAR IDENT.LPAREN exprlist RPAREN 
	expr11 ->  expr11 DOLLAR IDENT.DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 ->  expr11 DOLLAR IDENT.DOT IDENT LPAREN exprlist RPAREN 

I427
	expr11 ->  expr11 DOT IDENT.

I428
	expr11 ->  expr11 DOT INITIALLY.

I429
	expr11 ->  CRITICAL expr2a COLON.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I430
	expr11 ->  LPAREN exprlist RPAREN.

I431
	exprlist ->  exprlist COMMA.nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I432
	expr11 ->  LBRACE compound RBRACE.

I433
	compound ->  nexpr SEMICOL.compound 
	compound -> .nexpr 
	compound -> .nexpr SEMICOL compound 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I434
	expr11 ->  LBRACK caselist RBRACK.

I435
	caselist ->  caselist SEMICOL.cclause 
	cclause -> .DEFAULT COLON expr 
	cclause -> .expr COLON expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I436
	cclause ->  DEFAULT COLON.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I437
	cclause ->  expr COLON.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I438
	expr11 ->  LBRACK exprlist RBRACK.

I439
	expr11 ->  LBRACK COLON expr.COLON RBRACK 
	expr ->  expr.AND expr1a 

I440
	return ->  SUSPEND expr DO.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I441
	if ->  IF expr THEN.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 
	if ->  IF expr THEN.expr ELSE expr 

I442
	case ->  CASE expr OF.LBRACE caselist RBRACE 

I443
	while ->  WHILE expr DO.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I444
	until ->  UNTIL expr DO.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I445
	every ->  EVERY expr DO.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I446
	varlist ->  varlist COMMA IDENT.
	varlist ->  varlist COMMA IDENT.ASSIGN expr1 

I447
	varlist ->  IDENT ASSIGN expr1.

I448
	stalist ->  stalist COMMA IDENT.
	stalist ->  stalist COMMA IDENT.ASSIGN expr1 

I449
	stalist ->  IDENT ASSIGN expr1.

I450
	arg ->  IDENT COLON IDENT COLON.literal 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	arg ->  IDENT COLON IDENT COLON.AND IDENT 

I451
	arg ->  IDENT COLON AND IDENT.

I452
	cl ->  classhead optsemi clocals methods optsemi initiallysection END.

I453
	initiallysection ->  INITIALLY SEMICOL.locals initial procbody 
	locals -> .
	locals -> .locals LOCAL varlist SEMICOL 
	locals -> .locals STATIC stalist SEMICOL 

I454
	initiallysection ->  INITIALLY LPAREN.arglist RPAREN SEMICOL locals initial procbody 
	arglist -> .
	arglist -> .parmlist 
	arglist -> .parmlist LBRACK RBRACK 
	parmlist -> .arg 
	parmlist -> .parmlist COMMA arg 
	arg -> .IDENT 
	arg -> .IDENT COLON IDENT 
	arg -> .IDENT COLON literal 
	arg -> .IDENT COLON IDENT COLON literal 
	arg -> .IDENT COLON AND IDENT 
	arg -> .IDENT COLON IDENT COLON AND IDENT 

I455
	meth ->  methhead SEMICOL locals initial.procbody END 
	procbody -> .
	procbody -> .nexpr SEMICOL procbody 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I456
	methhead ->  METHOD IDENT LPAREN arglist.RPAREN 

I457
	carglist ->  cparmlist LBRACK RBRACK.

I458
	cparmlist ->  cparmlist COMMA carg.

I459
	expr2 ->  expr2 TO expr3 BY.expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I460
	expr11 ->  expr11 LBRACK exprlist RBRACK.

I461
	section ->  expr11 LBRACK expr sectop.expr RBRACK 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I462
	sectop ->  COLON.

I463
	sectop ->  PCOLON.

I464
	sectop ->  MCOLON.

I465
	expr11 ->  expr11 LBRACE pdcolist RBRACE.

I466
	pdcolist ->  pdcolist COMMA.nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I467
	expr11 ->  expr11 LPAREN exprlist RPAREN.

I468
	expr11 ->  expr11 DOLLAR INITIALLY LPAREN.exprlist RPAREN 
	exprlist -> .nexpr 
	exprlist -> .exprlist COMMA nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I469
	expr11 ->  expr11 DOLLAR IDENT LPAREN.exprlist RPAREN 
	exprlist -> .nexpr 
	exprlist -> .exprlist COMMA nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I470
	expr11 ->  expr11 DOLLAR IDENT DOT.INITIALLY LPAREN exprlist RPAREN 
	expr11 ->  expr11 DOLLAR IDENT DOT.IDENT LPAREN exprlist RPAREN 

I471
	expr11 ->  CRITICAL expr2a COLON expr.
	expr ->  expr.AND expr1a 

I472
	exprlist ->  exprlist COMMA nexpr.

I473
	compound ->  nexpr SEMICOL compound.

I474
	caselist ->  caselist SEMICOL cclause.

I475
	cclause ->  DEFAULT COLON expr.
	expr ->  expr.AND expr1a 

I476
	cclause ->  expr COLON expr.
	expr ->  expr.AND expr1a 

I477
	expr11 ->  LBRACK COLON expr COLON.RBRACK 

I478
	return ->  SUSPEND expr DO expr.
	expr ->  expr.AND expr1a 

I479
	if ->  IF expr THEN expr.
	expr ->  expr.AND expr1a 
	if ->  IF expr THEN expr.ELSE expr 

I480
	case ->  CASE expr OF LBRACE.caselist RBRACE 
	caselist -> .cclause 
	caselist -> .caselist SEMICOL cclause 
	cclause -> .DEFAULT COLON expr 
	cclause -> .expr COLON expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I481
	while ->  WHILE expr DO expr.
	expr ->  expr.AND expr1a 

I482
	until ->  UNTIL expr DO expr.
	expr ->  expr.AND expr1a 

I483
	every ->  EVERY expr DO expr.
	expr ->  expr.AND expr1a 

I484
	varlist ->  varlist COMMA IDENT ASSIGN.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I485
	stalist ->  stalist COMMA IDENT ASSIGN.expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I486
	arg ->  IDENT COLON IDENT COLON literal.

I487
	arg ->  IDENT COLON IDENT COLON AND.IDENT 

I488
	initiallysection ->  INITIALLY SEMICOL locals.initial procbody 
	initial -> .
	initial -> .iconINITIAL expr SEMICOL 
	locals ->  locals.LOCAL varlist SEMICOL 
	locals ->  locals.STATIC stalist SEMICOL 

I489
	initiallysection ->  INITIALLY LPAREN arglist.RPAREN SEMICOL locals initial procbody 

I490
	meth ->  methhead SEMICOL locals initial procbody.END 

I491
	methhead ->  METHOD IDENT LPAREN arglist RPAREN.

I492
	expr2 ->  expr2 TO expr3 BY expr3.

I493
	section ->  expr11 LBRACK expr sectop expr.RBRACK 
	expr ->  expr.AND expr1a 

I494
	pdcolist ->  pdcolist COMMA nexpr.

I495
	expr11 ->  expr11 DOLLAR INITIALLY LPAREN exprlist.RPAREN 
	exprlist ->  exprlist.COMMA nexpr 

I496
	expr11 ->  expr11 DOLLAR IDENT LPAREN exprlist.RPAREN 
	exprlist ->  exprlist.COMMA nexpr 

I497
	expr11 ->  expr11 DOLLAR IDENT DOT INITIALLY.LPAREN exprlist RPAREN 

I498
	expr11 ->  expr11 DOLLAR IDENT DOT IDENT.LPAREN exprlist RPAREN 

I499
	expr11 ->  LBRACK COLON expr COLON RBRACK.

I500
	if ->  IF expr THEN expr ELSE.expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I501
	case ->  CASE expr OF LBRACE caselist.RBRACE 
	caselist ->  caselist.SEMICOL cclause 

I502
	varlist ->  varlist COMMA IDENT ASSIGN expr1.

I503
	stalist ->  stalist COMMA IDENT ASSIGN expr1.

I504
	arg ->  IDENT COLON IDENT COLON AND IDENT.

I505
	initiallysection ->  INITIALLY SEMICOL locals initial.procbody 
	procbody -> .
	procbody -> .nexpr SEMICOL procbody 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I506
	initiallysection ->  INITIALLY LPAREN arglist RPAREN.SEMICOL locals initial procbody 

I507
	meth ->  methhead SEMICOL locals initial procbody END.

I508
	section ->  expr11 LBRACK expr sectop expr RBRACK.

I509
	expr11 ->  expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN.

I510
	expr11 ->  expr11 DOLLAR IDENT LPAREN exprlist RPAREN.

I511
	expr11 ->  expr11 DOLLAR IDENT DOT INITIALLY LPAREN.exprlist RPAREN 
	exprlist -> .nexpr 
	exprlist -> .exprlist COMMA nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I512
	expr11 ->  expr11 DOLLAR IDENT DOT IDENT LPAREN.exprlist RPAREN 
	exprlist -> .nexpr 
	exprlist -> .exprlist COMMA nexpr 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

I513
	if ->  IF expr THEN expr ELSE expr.
	expr ->  expr.AND expr1a 

I514
	case ->  CASE expr OF LBRACE caselist RBRACE.

I515
	initiallysection ->  INITIALLY SEMICOL locals initial procbody.

I516
	initiallysection ->  INITIALLY LPAREN arglist RPAREN SEMICOL.locals initial procbody 
	locals -> .
	locals -> .locals LOCAL varlist SEMICOL 
	locals -> .locals STATIC stalist SEMICOL 

I517
	expr11 ->  expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist.RPAREN 
	exprlist ->  exprlist.COMMA nexpr 

I518
	expr11 ->  expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist.RPAREN 
	exprlist ->  exprlist.COMMA nexpr 

I519
	initiallysection ->  INITIALLY LPAREN arglist RPAREN SEMICOL locals.initial procbody 
	initial -> .
	initial -> .iconINITIAL expr SEMICOL 
	locals ->  locals.LOCAL varlist SEMICOL 
	locals ->  locals.STATIC stalist SEMICOL 

I520
	expr11 ->  expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN.

I521
	expr11 ->  expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN.

I522
	initiallysection ->  INITIALLY LPAREN arglist RPAREN SEMICOL locals initial.procbody 
	procbody -> .
	procbody -> .nexpr SEMICOL procbody 
	nexpr -> .
	nexpr -> .expr 
	expr -> .expr1a 
	expr -> .expr AND expr1a 
	expr1a -> .expr1 
	expr1a -> .expr1a QMARK expr1 
	expr1 -> .expr2a 
	expr1 -> .expr2a SWAP expr1 
	expr1 -> .expr2a ASSIGN expr1 
	expr1 -> .expr2a REVSWAP expr1 
	expr1 -> .expr2a REVASSIGN expr1 
	expr1 -> .expr2a AUGCONCAT expr1 
	expr1 -> .expr2a AUGLCONCAT expr1 
	expr1 -> .expr2a AUGDIFF expr1 
	expr1 -> .expr2a AUGUNION expr1 
	expr1 -> .expr2a AUGPLUS expr1 
	expr1 -> .expr2a AUGMINUS expr1 
	expr1 -> .expr2a AUGSTAR expr1 
	expr1 -> .expr2a AUGINTER expr1 
	expr1 -> .expr2a AUGSLASH expr1 
	expr1 -> .expr2a AUGMOD expr1 
	expr1 -> .expr2a AUGCARET expr1 
	expr1 -> .expr2a AUGNMEQ expr1 
	expr1 -> .expr2a AUGEQUIV expr1 
	expr1 -> .expr2a AUGNMGE expr1 
	expr1 -> .expr2a AUGNMGT expr1 
	expr1 -> .expr2a AUGNMLE expr1 
	expr1 -> .expr2a AUGNMLT expr1 
	expr1 -> .expr2a AUGNMNE expr1 
	expr1 -> .expr2a AUGNEQUIV expr1 
	expr1 -> .expr2a AUGSEQ expr1 
	expr1 -> .expr2a AUGSGE expr1 
	expr1 -> .expr2a AUGSGT expr1 
	expr1 -> .expr2a AUGSLE expr1 
	expr1 -> .expr2a AUGSLT expr1 
	expr1 -> .expr2a AUGSNE expr1 
	expr1 -> .expr2a AUGQMARK expr1 
	expr1 -> .expr2a AUGAND expr1 
	expr1 -> .expr2a AUGAT expr1 
	expr2a -> .expr2 
	expr2a -> .expr2a PMATCH expr2 
	expr2 -> .expr3 
	expr2 -> .expr2 TO expr3 
	expr2 -> .expr2 TO expr3 BY expr3 
	expr2 -> .expr2 POR expr3 
	expr3 -> .expr4 
	expr3 -> .expr4 PAND expr3 
	expr3 -> .expr4 BAR expr3 
	expr4 -> .expr5 
	expr4 -> .expr4 PIMDASSN expr5 
	expr4 -> .expr4 PASSNONMATCH expr5 
	expr4 -> .expr4 SEQ expr5 
	expr4 -> .expr4 SGE expr5 
	expr4 -> .expr4 SGT expr5 
	expr4 -> .expr4 SLE expr5 
	expr4 -> .expr4 SLT expr5 
	expr4 -> .expr4 SNE expr5 
	expr4 -> .expr4 NMEQ expr5 
	expr4 -> .expr4 NMGE expr5 
	expr4 -> .expr4 NMGT expr5 
	expr4 -> .expr4 NMLE expr5 
	expr4 -> .expr4 NMLT expr5 
	expr4 -> .expr4 NMNE expr5 
	expr4 -> .expr4 EQUIV expr5 
	expr4 -> .expr4 NEQUIV expr5 
	expr5 -> .expr6 
	expr5 -> .expr5 CONCAT expr6 
	expr5 -> .expr5 LCONCAT expr6 
	expr6 -> .expr7 
	expr6 -> .expr6 PLUS expr7 
	expr6 -> .expr6 DIFF expr7 
	expr6 -> .expr6 UNION expr7 
	expr6 -> .expr6 MINUS expr7 
	expr7 -> .expr8 
	expr7 -> .expr7 STAR expr8 
	expr7 -> .expr7 INTER expr8 
	expr7 -> .expr7 SLASH expr8 
	expr7 -> .expr7 MOD expr8 
	expr8 -> .expr9 
	expr8 -> .postfixthreadop 
	expr8 -> .expr9 CARET expr8 
	expr9 -> .expr10 
	expr9 -> .expr9 BACKSLASH expr10 
	expr9 -> .expr9 AT expr10 
	expr9 -> .expr9 SND expr10 
	expr9 -> .expr9 SNDBK expr10 
	expr9 -> .expr9 RCV expr10 
	expr9 -> .expr9 RCVBK expr10 
	expr9 -> .expr9 BANG expr10 
	expr10 -> .expr11 
	expr10 -> .AT expr10 
	expr10 -> .SND expr10 
	expr10 -> .SNDBK expr10 
	expr10 -> .RCV expr10 
	expr10 -> .RCVBK expr10 
	expr10 -> .NOT expr10 
	expr10 -> .BAR expr10 
	expr10 -> .CONCAT expr10 
	expr10 -> .LCONCAT expr10 
	expr10 -> .DOT expr10 
	expr10 -> .BANG expr10 
	expr10 -> .DIFF expr10 
	expr10 -> .PLUS expr10 
	expr10 -> .STAR expr10 
	expr10 -> .SLASH expr10 
	expr10 -> .CARET expr10 
	expr10 -> .INTER expr10 
	expr10 -> .TILDE expr10 
	expr10 -> .MINUS expr10 
	expr10 -> .NMEQ expr10 
	expr10 -> .NMNE expr10 
	expr10 -> .SEQ expr10 
	expr10 -> .SNE expr10 
	expr10 -> .EQUIV expr10 
	expr10 -> .UNION expr10 
	expr10 -> .QMARK expr10 
	expr10 -> .NEQUIV expr10 
	expr10 -> .BACKSLASH expr10 
	expr10 -> .PSETCUR expr10 
	expr11 -> .literal 
	expr11 -> .section 
	expr11 -> .return 
	expr11 -> .if 
	expr11 -> .case 
	expr11 -> .while 
	expr11 -> .until 
	expr11 -> .every 
	expr11 -> .repeat 
	expr11 -> .SND 
	expr11 -> .SNDBK 
	expr11 -> .RCV 
	expr11 -> .RCVBK 
	expr11 -> .PUNEVAL 
	expr11 -> .CREATE expr 
	expr11 -> .THREAD expr 
	expr11 -> .CRITICAL expr2a COLON expr 
	expr11 -> .IDENT 
	expr11 -> .NEXT 
	expr11 -> .BREAK nexpr 
	expr11 -> .LPAREN exprlist RPAREN 
	expr11 -> .LBRACE compound RBRACE 
	expr11 -> .LBRACK caselist RBRACK 
	expr11 -> .LBRACK exprlist RBRACK 
	expr11 -> .LBRACK COLON expr COLON RBRACK 
	expr11 -> .expr11 LBRACK exprlist RBRACK 
	expr11 -> .expr11 LBRACE RBRACE 
	expr11 -> .expr11 LBRACE pdcolist RBRACE 
	expr11 -> .expr11 LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT INITIALLY LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOLLAR IDENT DOT IDENT LPAREN exprlist RPAREN 
	expr11 -> .expr11 DOT IDENT 
	expr11 -> .packageref 
	expr11 -> .expr11 DOT INITIALLY 
	expr11 -> .AND FAIL 
	expr11 -> .AND IDENT 
	literal -> .INTLIT 
	literal -> .REALLIT 
	literal -> .STRINGLIT 
	literal -> .CSETLIT 
	section -> .expr11 LBRACK expr sectop expr RBRACK 
	return -> .FAIL 
	return -> .RETURN nexpr 
	return -> .SUSPEND nexpr 
	return -> .SUSPEND expr DO expr 
	if -> .IF expr THEN expr 
	if -> .IF expr THEN expr ELSE expr 
	case -> .CASE expr OF LBRACE caselist RBRACE 
	while -> .WHILE expr 
	while -> .WHILE expr DO expr 
	until -> .UNTIL expr 
	until -> .UNTIL expr DO expr 
	every -> .EVERY expr 
	every -> .EVERY expr DO expr 
	repeat -> .REPEAT expr 
	packageref -> .IDENT COLONCOLON IDENT 
	packageref -> .COLONCOLON IDENT 
	postfixthreadop -> .expr9 SND 
	postfixthreadop -> .expr9 SNDBK 
	postfixthreadop -> .expr9 RCV 
	postfixthreadop -> .expr9 RCVBK 

