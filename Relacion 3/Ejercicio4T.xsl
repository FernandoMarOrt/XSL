<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>

            <head>
                <style>

                    td { border: 1px solid black;}

                </style>

            </head>


            <body>
                <h2>Tienda</h2>
                <table>

                    <tr>
                        <th>ARTICULOS DE MI TIENDA</th>
                        <th>PRODUCTOS</th>

                    </tr>


                    <xsl:for-each select="tienda/producto">

                       
                        <tr>
                            <td>ARTICULOS DE MI TIENDA</td>

                            <td>


                                <xsl:value-of select="articulo" />, <xsl:value-of select="codigo" />
        , <xsl:value-of
                                    select="cantidad" />
                            </td>
                        </tr>

                    </xsl:for-each>

                </table>


            </body>
        </html>


    </xsl:template>


</xsl:stylesheet>