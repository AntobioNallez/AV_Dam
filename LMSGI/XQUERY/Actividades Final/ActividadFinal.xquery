(: Actividad 1 :)
(: for $tutor in doc("ActividadFinal.xml")//Tutor[not(@categoria = 'catedrático')]
return ($tutor/Nombre/text(), $tutor/@categoria, $tutor/Especialidad) :)

(: Actividad 2 :)
(: for $especialidad in distinct-values(doc("ActividadFinal.xml")//Tutor/Especialidad)
let $totalAlumnos := sum(doc("ActividadFinal.xml")//Tutor[Especialidad = $especialidad]/../Num_alumnos)
return ($especialidad, $totalAlumnos) :)

(: Actividad 3 :)
(: count(doc("ActividadFinal.xml")//Aula[not(@proyector = 'SI')]) :)

(: Actividad 4 :)
(: count(doc("ActividadFinal.xml")//Tutor[@categoria = 'secundaria']) :)

(: Actividad 5 :)
(: distinct-values(doc("ActividadFinal.xml")//Instituto[NombreCentro = 'IES Comercio']/Enseñanzas/Enseñanza) :)

(: Actividad 6 :)
(: doc("ActividadFinal.xml")//Curso[Aula = '9']/Nombre :)

(: Actividad 7 :)
(: count(distinct-values(doc("ActividadFinal.xml")//Curso/Aula)) - count(doc("ActividadFinal.xml")//Curso/Aula) :)

(: Actividad 8 :)
(: doc("ActividadFinal.xml")//Curso[Num_alumnos > 19]/Nombre :)

(: Actividad 9 :)
(: count(doc("ActividadFinal.xml")//Tutor[@categoria = 'catedrático']) :)

(: Actividad 10 :)
(: doc("ActividadFinal.xml")//Tutor[not(Especialidad = 'Informática')]/Nombre :)

(: Actividad 11 :)
(: count(doc("ActividadFinal.xml")//Curso[@turno = 'diurno']) :)

(: Actividad 12 :)
(: count(doc("ActividadFinal.xml")//Curso[@turno = 'nocturno']) :)

(: Actividad 13 :)
(: sum(doc("ActividadFinal.xml")//Tutor[Especialidad = 'Informática']/../Num_alumnos) :)

(: Actividad 14 :)
sum(doc("ActividadFinal.xml")//Curso[@turno = 'diurno']/Num_alumnos) 
