<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio4</title>
                <style>

                    table{border-collapse:collapse}
                    table.td{border:1px solid black}
                
                </style>
            </head>
            <body>
              

                <table border="1px solid black">


                    <xsl:apply-templates />


                </table>


            </body>
        </html>
    </xsl:template>


    <xsl:template match="ciclo">
        <tr>

            <td>
                <xsl:value-of select="nombre" />
            </td>
        </tr>


    </xsl:template>
