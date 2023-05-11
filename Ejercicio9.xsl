<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio9</title>
                <style>

                    .rojo{color:red}
                    .amarillo{color:yellow}
                    .verde{color:green}


                </style>
            </head>
            <body>

                <xsl:for-each select="ies/ciclos/ciclo">
                <xsl:sort select="nombre" order="descending"/>

                    <xsl:choose>

                        <xsl:when test="precio > 100">

                            <p class="rojo">

                                <xsl:value-of select="nombre">


                                </xsl:value-of>

                            </p>

                        </xsl:when>



                        <!-- 
                        <xsl:otherwise>

                            <p class="verde">

                                <xsl:value-of select="nombre">


                                </xsl:value-of>

                            </p>

                        </xsl:otherwise>
                        -->

                    </xsl:choose>

                </xsl:for-each>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>