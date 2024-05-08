<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    .tablaRow1 {
                        background-color: #8B4513;
                        color: white;/
                        font-size: 120%;
                        text-align: center;
                    }
                    .tabla {
                        margin: auto;
                    }
                    .no-proyector {
                        color: red; /* Texto en rojo */
                    }
                    td {
                        text-align: left; /* Alineación izquierda */
                    }
                    th {
                        text-align: center; /* Alineación centro */
                    }
                </style>
            </head>

            <body>
                <span style="color:blue">
                    <h1 style="text-align:center">
                        <xsl:value-of select="Instituto/NombreCentro" />
                    </h1>
                    <p style="text-align:center"> Director: <xsl:value-of select="Instituto/Director" />
                    </p>
                    <p style="text-align:center"> Enseñanzas: <xsl:apply-templates select="Instituto/Enseñanzas/Enseñanza" />
                    </p>
                </span>

                <table class="tabla" border="1">
                    <tr class="tablaRow1">
                        <th>Curso</th>
                        <th>Aula</th>
                        <th>Tutor</th>
                        <th>Alumnos</th>
                    </tr>
                    <xsl:for-each select="Instituto/Curso">
                        <xsl:sort select="Num_alumnos"/>
                        <tr>
                            <td>
                                <xsl:value-of select="concat(Nombre, ' ', @turno)" />
                            </td>
                            <td>
                                <xsl:value-of select="concat(Aula, ' ')"/>
                                <xsl:choose>
                                    <xsl:when test="Aula/@proyector = 'SI'">
                                        <span>(con)</span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <span class="no-proyector">(sin)</span>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                            <td>
                                <xsl:value-of select="Tutor/Nombre" />
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="Tutor/Especialidad" />
                                <xsl:text>)</xsl:text>
                            </td>
                            <td style="text-align:center">
                                <xsl:value-of select="Num_alumnos" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="Enseñanza">
        <xsl:if test="position() &gt; 1">, </xsl:if>
        <strong>
            <xsl:value-of select="." />
        </strong>
    </xsl:template>
</xsl:stylesheet>
