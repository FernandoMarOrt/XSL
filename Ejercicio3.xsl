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


    <xsl:template match="ciclo">

        <li>
            <xsl:value-of select="nombre" />
        </li>
        
    </xsl:template>

</xsl:stylesheet>