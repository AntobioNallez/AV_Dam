<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:template match="/">
        <html>
            <body>
                <h1>Mis pilotos favoritos</h1>
                <table border="1">
                    <tr bgcolor="#EDB623">
                        <th style="text-align:left">Nombre</th>
                        <th style="text-align:left">Escuderia</th>
                      </tr>
                      <xsl:for-each select="Pilotos/piloto">
                      <xsl:sort select="Nombre" />
                    <!--  <xsl:sort select="Escuderia" /> -->
                    <!--  <xsl:sort select="Nacionalidad" /> -->
                      <tr>
                        <td><xsl:value-of select="Nombre"/></td>
                        <td><xsl:value-of select="Escuderia"/></td>
                      </tr>
                      </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>