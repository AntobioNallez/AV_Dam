for $x in doc("artistas.xml")/artistas
return data ($x/artista[not(fallecimiento)]/nombreCompleto)
