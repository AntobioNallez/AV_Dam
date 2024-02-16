function dibujar() {

   var miLienzo = document.getElementById("prueba4");
   var miContexto = miLienzo.getContext("2d");
   var botonesColor = document.getElementsByName("color");
   for (i = 0; i < botonesColor.length; i++) {
      if (botonesColor[i].checked) {
         color = botonesColor[i].value;
      }
   }

   miContexto.fillStyle = color;
   miContexto.fillRect(5, 5, 500, 200);

}

function escribir() {
   var miLienzo = document.getElementById("prueba4");
   var miContexto = miLienzo.getContext("2d");
   var texto = document.getElementById("textoAEscribir").value;
   var botonesColor = document.getElementsByName("color");

   for (var i = 0; i < botonesColor.length; i++) {
      if (botonesColor[i].checked) {
         color = botonesColor[i].value;
      }
   }

   miContexto.font = "30px Arial";
   miContexto.fillStyle = color;
   miContexto.fillText(texto, 250, 100);
}