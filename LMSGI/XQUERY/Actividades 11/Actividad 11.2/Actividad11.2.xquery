for $x in doc("artistas.xml")/artistas/artista
where $x[nacimiento<1500]
return data ($x/nombreCompleto)