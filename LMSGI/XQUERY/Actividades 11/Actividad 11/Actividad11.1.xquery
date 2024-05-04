(:Actividad 11.1:)
(:for $x in doc("artistas.xml")/artistas/artista
return <artista>{$x/nombreCompleto,$x/pais}</artista>:)

(:Actividad 11.2:)
(:for $x in doc("artistas.xml")/artistas/artista
where $x[nacimiento<1500]
return data ($x/nombreCompleto):)

(:Actividad 11.3:)
(:for $x in doc("artistas.xml")/artistas
return data ($x/artista[not(fallecimiento)]/nombreCompleto) :)

(:Actividad 11.4:)
(:for $x in doc("artistas.xml")/artistas/artista
where $x/pais = "España"
return data($x/nombreCompleto) :)

(:Actividad 11.5:)
for $x in doc("artistas.xml")/artistas
let $y := $x/artista[number(nacimiento) < 1600]
return count($y)