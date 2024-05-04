(:Actividad 14.1:)

(:for $x in doc("alumnos.xml")/clase/alumno
where $x/@sexo = "femenino"
return <alumno>{$x/nombre}</alumno>:)

(:Actividad 14.2***:)

(:for $x in doc("alumnos.xml")/clase/alumno
where $x/apellidos = "Ruiz"
return $x:)

(:Actividad 14.3:)

(:for $x in doc("alumnos.xml")/clase/alumno
where $x/nombre ="Víctor"
return <alumno>{$x/apellidos, $x/edad}</alumno>:)

(:Actividad 14.4:)(:
count(
for $x in doc("alumnos.xml")/clase/alumno
where $x/edad >= 20
return $x
):)

(:Actividad 14.5:)

(:let $x := doc("alumnos.xml")/clase/alumno[@sexo = "femenino"]
return count($x):)

(:Actividad 14.6***:)


(:Actividad 14.7:)
(:for $x in doc("alumnos.xml")/clase/alumno
where starts-with($x/apellidos, "P")
return $x/nombre:)

(:Actividad 14.8:)
(:for $x in doc("alumnos.xml")/clase/alumno
where ends-with($x/apellidos, "z")
return $x/nombre:)

(:Actividad 14.9:)
(:count(
for $x in doc("alumnos.xml")/clase/alumno
where $x/apellidos = "Rubio" and $x/@sexo = "masculino"
return $x
):)

(:Actividad 14.10:)(:
for $x in doc("alumnos.xml")/clase/alumno
where $x/pueblo != "Logroño"
return $x/nombre:)

(:Actividad 14.11:)(:
count(
for $x in doc("alumnos.xml")/clase/alumno
where $x/pueblo = "Villamediana de Iregua"
return $x
):)

(:Actividad 14.12:)
(:for $x in doc("alumnos.xml")/clase/alumno
where $x/pueblo = "Calahorra"
return ($x/nombre, $x/edad):)

(:Actividad 14.13:)(:
for $x in doc("alumnos.xml")/clase/alumno
where $x/pueblo = "Santo Domingo de la Calzada"
return $x/nombre:)

(:Actividad 14.14:)(:
for $x in doc("alumnos.xml")/clase/alumno[@sexo = "femenino"]
return $x/pueblo:)

(:Actividad 14.15:)(:
for $x in doc("alumnos.xml")/clase/alumno[@sexo = "femenino"]
where $x/pueblo = "Logroño"
return $x:)

(:Actividad 14.16:)(:
for $x in doc("alumnos.xml")/clase/alumno
where starts-with($x/nombre, "O") and starts-with($x/apellidos, "O")
return $x:)

(:Actividad 14.17:)(:
for $x in doc("alumnos.xml")/clase/alumno
where $x/pueblo = "Villamediana de Iregua" and $x/edad > 25
return $x:)

(:Actividad 14.18:)(:
for $x in doc("alumnos.xml")/clase/alumno
where $x/pueblo = "Calahorra" and $x/edad = 18
return $x:)

(:Actividad 14.19:)(:
count(
for $x in doc("alumnos.xml")/clase/alumno
where $x/pueblo = "Logroño" and $x/@sexo = "masculino"
return $x
):)

(:Actividad 14.20:)
(:for $x in doc("alumnos.xml")/clase/alumno
where $x/edad
return <alumno>{$x/apellidos, $x/pueblo}</alumno>:)




