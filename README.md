# Analizador Sintáctico con ANTLR4 y JavaScript

## Descripción

Este proyecto implementa un analizador léxico y sintáctico para un sub-lenguaje reducido de C utilizando ANTLR4 y JavaScript.

El analizador permite:

- reconocer tokens
- validar la sintaxis
- detectar errores
- construir el árbol sintáctico
- traducir instrucciones básicas a JavaScript

---

## Herramientas utilizadas

- ANTLR4
- JavaScript
- Node.js
- Visual Studio Code

---

## Archivos principales

- `MiniCLexer.g4`
- `MiniCParser.g4`
- `traductor.js`

---

## Ejecución

1. Abrir el proyecto en Visual Studio Code.
2. Abrir una terminal.
3. Ejecutar:

```bash
node traductor.js
```

---

## Ejemplos incluidos

El repositorio contiene ejemplos correctos e incorrectos para probar el analizador.

- ejemplo_correcto_1.txt
- ejemplo_correcto_2.txt
- ejemplo_error_1.txt
- ejemplo_error_2.txt

---

## Uso del analizador con ejemplos

### Ejemplo correcto

```c
switch(x){
case 1:
printf("hola");
break;
default:
printf("chau");
}
```

Resultado esperado:

- análisis léxico correcto
- análisis sintáctico correcto
- generación del árbol sintáctico

---

### Ejemplo con error

```c
switch(x){
case 1
printf("hola");
}
```

Resultado esperado:

El analizador detecta un error sintáctico indicando la línea y la causa del problema.

---

## Traducción e interpretación

El archivo `traductor.js` realiza una traducción básica del código fuente al lenguaje JavaScript reemplazando:

```c
printf("texto");
```

por:

```javascript
console.log("texto");
```

Luego ejecuta el código traducido simulando el comportamiento de un intérprete básico.
