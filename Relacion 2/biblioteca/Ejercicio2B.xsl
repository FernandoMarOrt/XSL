<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio2B</title>
                <style>

                    td { border: 1px solid black; padding: 5px; }
                    .rojoFondo { background-color: red; }
                    .cursiva { font-style: italic; }

                </style>
            </head>
            <body>


                <table border="1px solid black">

                    <tr>
                        <th>Precio</th>
                        <th>Titulo</th>
                        <th>Año</th>
                    </tr>

                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" />

                        <tr>
                            <td>
                                <p>

                                    <xsl:value-of select="precio" />

                                </p>
                            </td>


                            <xsl:choose>

                                <xsl:when test="precio &gt; 100">

                                    <td class="rojoFondo">

                                        <xsl:value-of select="titulo" />

                                    </td>


                                </xsl:when>

                                <xsl:otherwise>

                                    <td>

                                        <xsl:value-of select="titulo" />

                                    </td>

                                </xsl:otherwise>

                            </xsl:choose>


                            <td>
                                <p class="cursiva">

                                    <xsl:value-of select="@año" /> <!-- tambien puede aplicarle
                                    cursiva con <em> <xsl:value-of select="@año" /> </em> -->

                                </p>
                            </td>

                        </tr>

                    </xsl:for-each>


                </table>


            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>