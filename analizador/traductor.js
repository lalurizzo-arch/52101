const fs = require('fs');

const codigo = fs.readFileSync('ejemplo_correcto_1.txt', 'utf8');

console.log("=== CODIGO ORIGINAL ===");
console.log(codigo);

let traducido = codigo.replace(/printf/g, 'console.log');

console.log("\n=== CODIGO TRADUCIDO ===");
console.log(traducido);

console.log("\n=== EJECUCION ===");

eval(traducido);
