(:Actividad 13.1:)
(:for $x in doc("catalogo_cd.xml")/CATALOGO/CD
where $x/DISCOGRAFICA = "Atlantic"
return $x/TITULO:)

(:Actividad 13.2:)
(:for $x in doc("catalogo_cd.xml")/CATALOGO/CD
where count($x/ARTISTA) > 1
return <CD>{$x/TITULO, $x/AÑO}</CD>:)

(:Actividad 13.3:)
(:for $x in doc("catalogo_cd.xml")/CATALOGO/CD
where $x/PRECIO[@MONEDA = "LIBRA"]
return <CD>{$x/TITULO, $x/ARTISTA}</CD>:)

(:Actividad 13.4:)
(:for $x in doc("catalogo_cd.xml")/CATALOGO/CD
where $x/PAIS = "USA"
return <CD>{$x/DISCOGRAFICA}</CD>:)

(:Actividad 13.5:)
(:for $x in doc("catalogo_cd.xml")/CATALOGO/CD
where $x/AÑO < 1987
order by $x/AÑO
return <CD>{$x/TITULO}</CD>:)

(:Actividad 13.6:)
(:let $x := doc("catalogo_cd.xml")//CD[PAIS = "UK"]
return count($x):)

(:Actividad 13.7:)
(:for $x in doc("catalogo_cd.xml")/CATALOGO/CD
where $x/PRECIO = 7.80 and $x/PAIS = "EU"
return <CD>{$x/TITULO}</CD>:)

(:Actividad 13.8:)
(:for $x in doc("catalogo_cd.xml")/CATALOGO/CD
where $x/PAIS = "Norway"
return <CD>{$x/ARTISTA}</CD>:)

(:Actividad 13.9:)
(:for $x in doc("catalogo_cd.xml")/CATALOGO/CD
where $x/AÑO = 1991
return <CD>{$x/TITULO, $x/ARTISTA}</CD>:)

(:Actividad 13.10:)
(:for $x in doc("catalogo_cd.xml")/CATALOGO/CD
where $x/PAIS != "USA"
return <CD>{$x/TITULO, $x/ARTISTA}</CD>:)

(:Actividad 13.11:)
(:let $x := doc("catalogo_cd.xml")//CD/PRECIO[@MONEDA = "EURO"]
return count($x):)

(:Actividad 13.12:)
(:for $x in doc("catalogo_cd.xml")/CATALOGO/CD
where $x/ARTISTA = "Tina Turner"
return <CD>{$x/TITULO}</CD>:)

(:Actividad 13.13:)
(:for $x in doc("catalogo_cd.xml")/CATALOGO/CD
where $x/PAIS != "UK"
return <CD>{$x/ARTISTA}</CD>:)

(:Actividad 13.14:)
(:for $x in doc("catalogo_cd.xml")/CATALOGO/CD
let $y := $x/PAIS
group by $y
return <PAIS nombre="{$y}" numero_cds="{count($x)}"/>:)

(:Actividad 13.15:)
(:count(
for $x in doc("catalogo_cd.xml")/CATALOGO/CD
where $x/AÑO > 1989
return $x
):)