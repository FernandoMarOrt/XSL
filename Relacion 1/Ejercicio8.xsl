<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio8</title>

            </head>
            <body>
          

                <ul>
                    <xsl:apply-templates />
                
                </ul>
                


            </body>
        </html>
    </xsl:template>


    <xsl:template match="ciclo">

        <li>
            <xsl:value-of select="@id" /><br/><xsl:value-of select="nombre" /> , Ciclo Formativo de Grado Superior creado en <xsl:value-of select="decretoTitulo/@año" />
        </li>
        
    </xsl:template>

</xsl:stylesheet>