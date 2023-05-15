<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <style>

                    .verde{color:green}
                    .rojo{color:red}
                    td { border: 1px solid black;}

                </style>

            </head>
            <body>

                <h2>Mostrar una tabla con el nombre del disco en verde si el año es posterior al 2000, y en rojo si el año es anterior al 2000</h2>

                <table>

                    <xsl:for-each select="catalogo/cds/cd">

                        <tr>

                            <td>


                                <xsl:choose>

                                    <xsl:when test="año &gt; 2000">

                                        <p class="verde">

                                            <xsl:value-of select="titulo" />

                                        </p>


                                    </xsl:when>


                                    <xsl:otherwise>

                                         <p class="rojo">

                                            <xsl:value-of select="titulo" />

                                        </p>

                                    </xsl:otherwise>

                                </xsl:choose>

                                <xsl:if test="nacionalidad='España'">

                                    <xsl:value-of select="nombre" />

                                </xsl:if>

                            </td>

                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>