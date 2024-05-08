(: Actividad 1 :)
(:for $tutor in doc("ActividadFinal.xml")//Tutor[not(@categoria = 'catedrático')]
return ($tutor/Nombre/text(), $tutor/@categoria, $tutor/Especialidad):)

(:Actividad 2:)
(:for $x in doc("ActividadFinal.xml")//Curso
let $y := $x/Tutor/Especialidad
group by $y
return ($y, sum($x/Num_alumnos)):)

(: Actividad 3 :)
(:count(
for $x in doc("ActividadFinal.xml")//Aula
where $x/@proyector = 'NO'
return $x
):)

(: Actividad 4 :)
(:count(
for $x in doc("ActividadFinal.xml")/Instit
to/Curso/Tutor
where $x/@categoria = 'secundaria'
return $x
):)

(: Actividad 5 :)
(:for $x in doc("ActividadFinal.xml")/Instituto/Enseñanzas/Enseñanza
return $x/text():)

(: Actividad 6 :)
(:for $x in doc("ActividadFinal.xml")/Instituto/Curso
where $x/Aula = 9
return $x/Nombre:)

(: Actividad 7 :)
(:count(
for $x in doc("ActividadFinal.xml")//Curso
where $x/Aula/@diurno or not($x/@turno)
return $x
):)

(: Actividad 8 :)
(:for $x in doc("ActividadFinal.xml")/Instituto/Curso
where $x/Num_alumnos > 19
return $x/Nombre:)

(: Actividad 9 :)
(:count(
for $x in doc("ActividadFinal.xml")/Instituto/Curso
where $x/Tutor/@categoria = 'catedrático'
return $x
):)

(: Actividad 10 :)
(:for $x in doc("ActividadFinal.xml")/Instituto/Curso
where $x/Tutor/Especialidad != 'Informática'
return $x/Nombre:)

(: Actividad 11 :)
(:count(
for $x in doc("ActividadFinal.xml")/Instituto/Curso
where $x/@turno = 'diurno' or not($x/@turno)
return $x
):)

(: Actividad 12 :)
(:count(
for $x in doc("ActividadFinal.xml")/Instituto/Curso
where $x/@turno = 'nocturno'
return $x
):)

(: Actividad 13 :)
(:sum(
for $x in  doc("ActividadFinal.xml")/Instituto/Curso
where $x/Tutor/Especialidad = 'Informática'
return $x/Num_alumnos
):)

(: Actividad 14 :)
(:sum(
for $curso in doc("ActividadFinal.xml")//Curso
where ($curso/@turno = "diurno" or not($curso/@turno))
return $curso/Num_alumnos
):)
