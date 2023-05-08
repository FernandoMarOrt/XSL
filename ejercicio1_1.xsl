<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio1</title>
            </head>
            <body>
                <h1>Sin Etiquetas</h1>
                <ul>

                    <xsl:apply-templates />
                
                </ul>
               
            </body>
        </html>
    </xsl:template>

    <!-- Ejemplo 1
    <xsl:template match="libro">
        <p><xsl:value-of select="titulo"/></p>
    </xsl:template>
    -->

    <!-- Ejemplo 2
    <xsl:template match="libro">
        <p><xsl:value-of select="titulo"/> - <xsl:value-of select="autor"/> </p> 
    </xsl:template>
    -->

    <!-- Ejemplo 3 
    <xsl:template match="libro">
        <p>
            <xsl:value-of select="titulo" /> (<xsl:value-of select="fechaPublicacion/@año"/>) <xsl:value-of
                select="autor" />
        </p>
    </xsl:template>
    -->

    <!-- Ejemplo 4 
    <xsl:template match="libro">
        <p>
            <xsl:value-of select="titulo" /> (<xsl:value-of select="fechaPublicacion/@año"/>) <xsl:value-of
                select="autor" /> (<xsl:value-of select="autor/@fechaNacimiento"/>)
        </p>
    </xsl:template>
    -->

        <!-- Ejemplo 4 -->
    <xsl:template match="libro">
        <li>
            <xsl:value-of select="titulo" /> (<xsl:value-of select="fechaPublicacion/@año"/>) <xsl:value-of
                select="autor" /> (<xsl:value-of select="autor/@fechaNacimiento"/>)
        </li>
    </xsl:template>


</xsl:stylesheet>