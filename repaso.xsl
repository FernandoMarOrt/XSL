<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    .verde{ background-color: green; }
                </style>
            </head>
            <body>
                <table border="1px solid black">
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                    <xsl:for-each select="">
                        <xsl:sort select="" />
                        <tr>
                            <xsl:choose>
                                <xsl:when test="codigo &lt; 100">
                                    <td class="">
                                        <xsl:value-of select="" />
                                    </td>
                                    <td></td>
                                    <td>
                                        <img src="">
                                            <xsl:attribute name="src"> Imagenes/<xsl:value-of
                                                    select="imagen" />
                                            </xsl:attribute>
                                        </img>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:if test=""><xsl:value-of select="nombre" /> </xsl:if>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>