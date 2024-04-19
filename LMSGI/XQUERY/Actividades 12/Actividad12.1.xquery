for $x in doc("impresoras.xml")/impresoras/impresora
where $x[@tipo="láser"]
return data ($x/modelo)