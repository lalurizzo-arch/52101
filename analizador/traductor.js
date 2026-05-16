const fs = require('fs');

let codigo = fs.readFileSync('ejemplo_correcto_1.txt', 'utf8');

codigo = "let x = 1;\n" + codigo;

console.log("=== CODIGO ORIGINAL ===");
console.log(codigo);

let traducido = codigo.replace(/printf/g, 'console.log');

console.log("\n=== CODIGO TRADUCIDO ===");
console.log(traducido);

console.log("\n=== EJECUCION ===");

eval(traducido);
