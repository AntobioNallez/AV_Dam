for $x in doc("artistas.xml")/artistas/artista
return <artista>{$x/nombreCompleto,$x/pais}</artista>