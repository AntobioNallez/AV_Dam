var canvas = document.getElementById("banderaCanvas");
var ctx = canvas.getContext("2d");

var rojo = "#FF0000";
var blanco = "#FFFFFF";
var azul = "#0000FF";

var altura = canvas.height;
var ancho = canvas.width;

ctx.fillStyle = rojo;
ctx.fillRect(0, 0, ancho, altura);

var alturaBlanco = altura * 0.2;
ctx.fillStyle = blanco;
ctx.fillRect(0, (altura - alturaBlanco) / 2, ancho, alturaBlanco);

ctx.fillStyle = azul;
ctx.fillRect(0, alturaBlanco + (altura - alturaBlanco) / 2, ancho, altura - alturaBlanco);


var milienzo = document.getElementById("canvas01");
var micontexto = milienzo.getContext("2d"); var i = 0; var x = 5; var y = 5; var ancho = 390; var alto = 290;
for (i = 0; i <= 25; i++) {
    micontexto.strokeStyle = "#" + Math.floor(Math.random() * 16777215).toString(16);
    micontexto.strokeRect(x, y, ancho, alto); x = x + 5; y = y + 5; ancho = ancho - 10; alto = alto - 10;
    
}