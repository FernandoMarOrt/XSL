<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>

        <h2>Mostrar una lista con los autores españoles:</h2>


        <ol>

          <xsl:for-each select="catalogo/artistas/artista">

            <li>

              <xsl:if test="nacionalidad='España'">

                <xsl:value-of select="nombre" />

              </xsl:if>

            </li>

          </xsl:for-each>

        </ol>


      </body>
    </html>
  </xsl:template>


</xsl:stylesheet>
