<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>

        <h2>Mostrar una lista con los autores españoles:</h2>


        <table border="1px solid black">

          <tr>
              <th>Codigo</th>
              <th>Articulo</th>
              <th>Cantidad</th>
          </tr>

          <xsl:for-each select="tienda/producto">
            
            <tr>
              <td>
                <xsl:value-of select="codigo" />

              </td>


              <td>
                <xsl:value-of select="articulo" />

              </td>


              <td>

                <xsl:value-of select="cantidad" />
              </td>

            </tr>

          </xsl:for-each>
        </table>


      </body>
    </html>
  </xsl:template>


</xsl:stylesheet>