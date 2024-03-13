<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca</h1>
                <table border="1">
                    <tr bgcolor="#EDB623">
                        <th style="text-align:left">Título</th>
                        <th style="text-align:left">Autor</th>
                        <th style="text-align:left">Número de páginas</th>
                    </tr>
                    <xsl:for-each select="Libros/libro[Autores/autor/@nacionalidad='España']">
                        <xsl:variable name="current_title" select="Titulo" />
                        <xsl:variable name="num_autores" select="count(Autores/autor)" />
                        <xsl:for-each select="Autores/autor[@nacionalidad='España']">
                            <tr>
                                <xsl:if test="position() = 1">
                                    <td rowspan="{$num_autores}" style="color: blue;">
                                        <xsl:value-of select="$current_title"/>
                                    </td>
                                </xsl:if>
                                <td>
                                    <xsl:value-of select="concat('(', @codigo, ') - ', Nombre, ' ', Apellidos)"/>
                                </td>
                                <td>
                                    <xsl:value-of select="../../NumPaginas"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
