function hacerClick() {
    document.getElementById('zona3').innerHTML = "Gracias por pasarte";
}

function mostrarMensaje(mensaje) {
    mensaje = "Muchas Gracias";
    document.getElementById('zona1').innerHTML = mensaje;
}

function cambiarImagen(nuevaImagen) {
    document.getElementById('miImagen').src = nuevaImagen;
}

function restaurarImagen(imagenOriginal) {
    document.getElementById('miImagen').src = imagenOriginal;
}

function pulsarMouse() {
    document.getElementById('zona4').style.backgroundColor = 'red';
}

function soltarMouse() {
    document.getElementById('zona4').style.backgroundColor = 'blue';
}

function fuera() {
    document.getElementById('zona5').animate([
        { transform: "translateY(0px)" },
        { transform: "translateY(-300px)" },],

        {
            duration: 500,
            iterations: 1,
        },)
}

function pasarMouse() {
    document.getElementById('zona2').style.backgroundColor = 'red';
}

function salirMouse() {
    document.getElementById('zona2').style.backgroundColor = 'blue';
}