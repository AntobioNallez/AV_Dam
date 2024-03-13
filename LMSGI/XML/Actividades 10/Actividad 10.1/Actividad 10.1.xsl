<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca</h1>
                <table border="1">
                    <tr bgcolor="#EDB623">
                        <th style="text-align:left">Titulo</th>
                        <th style="text-align:left">Autor</th>
                        <th style="text-align:left">Número de páginas</th>
                      </tr>
                      <xsl:for-each select="Libros/libro">
                      <tr>
                        <td style="color: blue;"><xsl:value-of select="Titulo"/></td>
                        <xsl:for-each select="Autores/autor">
                            <td><xsl:value-of select="@codigo"/></td>
                        </xsl:for-each>
                        <td><xsl:value-of select="NumPaginas"/></td>
                      </tr>
                      </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>