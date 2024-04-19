for $x in doc("artistas.xml")/artistas
let $y := $x/artista[number(nacimiento) < 1600]
return count($y)