<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>

            <head>


            </head>


            <body>
                <h2>Tienda</h2>
                <ul>

                    <xsl:for-each select="tienda/producto">

                        <li>

                            <xsl:value-of select="articulo" />,
                            <xsl:value-of select="codigo" />, 
                            <xsl:value-of select="cantidad" /> 
                        
                        </li>

                    </xsl:for-each>
                </ul>


            </body>
        </html>


    </xsl:template>


</xsl:stylesheet>