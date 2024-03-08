<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <xsl:template match="/">
    <html>
      <body>
        <h1>Mis pilotos favoritos</h1>
        <table border="1">
          <tr bgcolor="#EDB623">
            <th style="text-align:left">Nombre</th>
            <th style="text-align:left">Escuderia</th>
            <th style="text-align:left">Nacionalidad</th>
          </tr>
          <xsl:for-each select="Pilotos/piloto">
            <tr>
              <td><xsl:value-of select="Nombre"/></td>
              <td><xsl:value-of select="Escuderia"/></td>
              <xsl:variable name="nacionalidad" select="Nacionalidad" />
              <xsl:choose>
                <xsl:when test="$nacionalidad = 'Español'">
                  <td>
                    <span style="color: red;">
                      <xsl:value-of select="$nacionalidad" />
                    </span>
                  </td>
                </xsl:when>
                <xsl:when test="$nacionalidad = 'Inglés'">
                  <td>
                    <span style="color: blue;">
                      <xsl:value-of select="$nacionalidad"/>
                    </span>
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td>
                    <xsl:value-of select="$nacionalidad" />
                  </td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>