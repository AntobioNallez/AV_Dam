(:Act 12.2:)
(:for $x in doc("impresoras.xml")/impresoras/impresora
where count($x/tamaño) > 1
return <impresora>{$x/marca, $x/modelo}</impresora>:)

(:Act 12.3:)
(:for $x in doc("impresoras.xml")/impresoras/impresora
where $x/tamaño = "A3"
return <impresora>{$x/marca, $x/modelo}</impresora>:)

(:Act 12.4:)
(:for $x in doc("impresoras.xml")/impresoras/impresora
where $x/tamaño = "A3" and count($x/tamaño) = 1
return <impresora>{$x/marca, $x/modelo}</impresora> :)

(:Act 12.5:)
(:for $x in doc("impresoras.xml")/impresoras/impresora
where exists($x/enred)
return $x/modelo:)

(:Act 12.6:)
(:let $impresoras := doc("impresoras.xml")//impresora[enred]
return count($impresoras):)

(:Act 12.7:)
(:for $x in doc("impresoras.xml")/impresoras/impresora
where $x/marca = "HP" and $x[@tipo = "matricial"]
return <impresora>{$x/marca, $x/modelo}</impresora>:)

(:Act 12.8:)
(:for $x in doc("impresoras.xml")/impresoras/impresora
where $x/peso > 2.5
return <impresora>{$x/@numSerie}</impresora>:)

(:Actividad 12.9:)
(:for $x in doc("impresoras.xml")/impresoras/impresora
where count($x/tamaño) = 1
return <impresora>{$x/@numSerie, $x/marca}</impresora>:)

(:Actividad 12.10:)
(:for $impresora in doc("impresoras.xml")//impresora[not(tamaño = 'A3')]
return <impresora>
          <marca>{ $impresora/marca/text() }</marca>
          <numSerie>{ $impresora/@numSerie }</numSerie>
       </impresora>:)

(:Actividad 12.11:)
(:let $impresoras := doc("impresoras.xml")//impresora[enred]
return count($impresoras):)

(:Actividad 12.12:)
(:for $x in doc("impresoras.xml")/impresoras/impresora
return <impresora>{$x/@numSerie, count($x/tamaño)}</impresora>:)

(:Actividad 12.13:)
(:for $x in doc("impresoras.xml")/impresoras/impresora
where $x[@tipo = "láser"] and $x/cartucho != "C-456P"
return <impresora>{$x/marca, $x/modelo}</impresora>:)

(:Actividad 12.14:)
(:for $x in doc("impresoras.xml")/impresoras/impresora
let $y := $x/marca
group by $y
return <marcas nombre="{$y}" numero_impresoras="{count($x)}"/>:)

(:Actividad 12.15:)
(:for $x in doc("impresoras.xml")/impresoras/impresora
where ($x/peso > 3.5 and $x[@tipo = "matricial"])
return <impresora>{$x/@numSerie, $x/marca}</impresora>:)