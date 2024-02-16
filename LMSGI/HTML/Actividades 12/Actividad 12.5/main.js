function mostrarFecha() {
    var fechaActual = new Date();
    var fechaFormateada = fechaActual.toLocaleString();
    alert("La fecha actual es: " + fechaFormateada);
}

function reseteo() {
    text = "Estas seguro de que quieres borrarlo todo \n Presiona OK para ello o cancel si no es un error.";
    if (confirm(text) == true) {
      alert('Hola caracola');
    }
    document.getElementById("anular").innerHTML = text;
  }
