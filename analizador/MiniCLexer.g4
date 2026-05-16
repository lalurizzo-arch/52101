lexer grammar MiniCLexer;

SWITCH : 'switch';
CASE : 'case';
DEFAULT : 'default';
PRINTF : 'printf';
BREAK : 'break';

LPAREN : '(';
RPAREN : ')';
LBRACE : '{';
RBRACE : '}';
COLON : ':';
SEMICOLON : ';';

ID : [a-zA-Z][a-zA-Z0-9]*;

NUMERO : [0-9]+;

CADENA : '"' .*? '"';

WS : [ \t\r\n]+ -> skip;
