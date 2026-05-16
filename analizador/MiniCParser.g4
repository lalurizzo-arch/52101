parser grammar MiniCParser;

options {
    tokenVocab=MiniCLexer;
}

programa
    : instrucciones EOF
    ;

instrucciones
    : instruccion+
    ;

instruccion
    : seleccion
    ;

seleccion
    : SWITCH LPAREN ID RPAREN LBRACE casos RBRACE
    ;

casos
    : caso+
    ;

caso
    : CASE NUMERO COLON sentencia
    | DEFAULT COLON sentencia
    ;

sentencia
    : salida
    | salida sentencia
    | terminar
    ;

salida
    : PRINTF LPAREN CADENA RPAREN SEMICOLON
    ;

terminar
    : BREAK SEMICOLON
    ;
