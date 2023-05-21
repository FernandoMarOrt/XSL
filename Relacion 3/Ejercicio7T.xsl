<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <style>

                    .verde{ background-color: green; }
                    .azul{ background-color: blue; }
                    .rojo{ background-color: red; }

                </style>
            </head>
            <body>

                <h2>Mostrar una lista con los autores españoles:</h2>


                <table border="1px solid black">

                    <tr>
                        <th>Codigo</th>
                        <th>Articulo</th>
                        <th>Cantidad</th>
                        <th>Imagen</th>
                    </tr>

                    <xsl:for-each select="tienda/producto">
                        <xsl:sort select="articulo" />
                        <tr>
                            <xsl:choose>

                                <xsl:when test="codigo &lt; 100">

                                    <td class="verde">
                                        <xsl:value-of select="codigo" />

                                    </td>


                                    <td
                                        class="verde">
                                        <xsl:value-of select="articulo" />

                                    </td>


                                    <td
                                        class="verde">

                                        <xsl:value-of select="cantidad" />
                                    </td>

                                </xsl:when>

                                <xsl:when test="codigo &gt; 100">

                                    <td class="azul">
                                        <xsl:value-of select="codigo" />

                                    </td>


                                    <td
                                        class="azul">
                                        <xsl:value-of select="articulo" />

                                    </td>


                                    <td
                                        class="azul">

                                        <xsl:value-of select="cantidad" />
                                    </td>


                                </xsl:when>


                                <xsl:otherwise>
                                    <td class="rojo">
                                        <xsl:value-of select="codigo" />

                                    </td>


                                    <td
                                        class="rojo">
                                        <xsl:value-of select="articulo" />

                                    </td>


                                    <td class="rojo">

                                        <xsl:value-of select="cantidad" />
                                    </td>

                                </xsl:otherwise>

                            </xsl:choose>
                            

                            <td>
                                <img src="">
                                    <xsl:attribute name="src"> Imagenes/<xsl:value-of select="imagen" />
                                    </xsl:attribute>
                                </img>
                            </td>
                        </tr>

                    </xsl:for-each>
                </table>


            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>

<!-- añadir etiqueta a imagen a xml <imagen>radio.jpg</imagen y poner esto en xml xsl atrivute con
name src y dentro de eso que ponga Imagenes/<xsl:value-of select="imagen">>-->