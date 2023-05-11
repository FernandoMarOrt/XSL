<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio1B</title>
                <style>

                    .rojo{color:red}
                    .amarillo{color:yellow}
                    .verde{color:green}


                </style>
            </head>
            <body>


                <table border = "1px solid black">


                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="titulo" order="descending" />


                        <tr>
                            <td>


                                <p>

                                    <xsl:value-of select="titulo" />

                                </p>

                            </td>

                             <td>


                                <p>

                                    <xsl:value-of select="autor/nombre" />
                                     <xsl:value-of select="autor/apellido" />
                                    
                                    
                                </p>

                            </td>

                        
                            <td>


                                <p>

                                    <xsl:value-of select="editorial" />

                                </p>

                            </td>

                        </tr>

                    </xsl:for-each>


                </table>


            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>


<!--     <xsl:choose>


                            <xsl:when test="precio > 100">

                                <p class="rojo">

                                    <xsl:value-of select="titulo" />

                                </p>

                            </xsl:when>


                            <xsl:otherwise>

                                <p>

                                    <xsl:value-of select="titulo" />

                                </p>

                            </xsl:otherwise>


                        </xsl:choose>-->