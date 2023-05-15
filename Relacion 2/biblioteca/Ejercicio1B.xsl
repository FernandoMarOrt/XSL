<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio1B</title>
                <style>

                    td { border: 1px solid black; padding: 5px; }
                    .rojo{color:red}

                </style>
            </head>
            <body>


                <table border="1px solid black">

                    <tr>
                        <th>Título del libro</th>
                        <th>Autores</th>
                        <th>Editores</th>
                    </tr>

                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="titulo" order="descending" />


                        <tr>
                            <td>
                                <p>

                                    <xsl:choose>

                                        <xsl:when test="precio &gt; 100">

                                            <p class="rojo">

                                                <xsl:value-of select="concat(titulo, ' (Caro)')" />

                                            </p>


                                        </xsl:when>

                                        <xsl:otherwise>

                                            <xsl:value-of select="titulo" />

                                        </xsl:otherwise>

                                    </xsl:choose>

                                </p>
                            </td>

                            <td>
                                <p>

                                    <xsl:for-each select="autor">

                                        <xsl:value-of select="nombre" />

                                        <xsl:text> </xsl:text>

                                        <xsl:value-of select="apellido" />

                                        <xsl:if test="position() != last()">

                                            <xsl:text>, </xsl:text>

                                        </xsl:if>
                                        
                                    </xsl:for-each>


                                </p>
                            </td>

                            <td>
                                <p>

                                    <xsl:for-each select="editor">

                                        <xsl:value-of select="nombre" />

                                        <xsl:text> </xsl:text>

                                        <xsl:value-of select="apellido" />

                                        <xsl:text> (</xsl:text>

                                        <xsl:value-of select="afiliacion" />

                                        <xsl:text>)</xsl:text>

                                        <xsl:if test="position() != last()">

                                            <xsl:text>, </xsl:text>

                                        </xsl:if>
                                    </xsl:for-each>

                                </p>
                            </td>

                        </tr>

                    </xsl:for-each>


                </table>


            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
