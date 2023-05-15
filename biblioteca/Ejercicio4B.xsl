<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>

        <h2>Títulos de libros con precio menor de 100:</h2>


        <ol>

          <xsl:for-each select="bib/libro">

            <li>

              <xsl:if test="precio &lt; 100">

                <xsl:value-of select="titulo" />

              </xsl:if>

            </li>

          </xsl:for-each>

        </ol>


      </body>
    </html>
  </xsl:template>


</xsl:stylesheet>
