<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>Lista de autores ordenados por apellidos:</h2>

        <ol>

          <xsl:for-each select="bib/libro/autor">


            <xsl:sort select="apellido" />

            <li>
              <xsl:value-of select="concat(apellido, ', ', nombre)" />
            </li>

          </xsl:for-each>

        </ol>

      </body>
    </html>
  </xsl:template>



</xsl:stylesheet>