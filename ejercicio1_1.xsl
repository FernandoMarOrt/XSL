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






    <!-- <?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio3</title>
            </head>
            <body>
          

                
                    <xsl:apply-templates />
                
              
                


            </body>
        </html>
    </xsl:template>


    <xsl:template match="ciclo">


            <xsl:if test="@id='DAW'">
            
            
                <xsl:value-of select="nombre" />

            </xsl:if>


            OTRA OPCION PARA NUMEROS


            <xsl:if test="decretoTitulo/@año &lt; 2009">
            
            
                <xsl:value-of select="nombre" />

            </xsl:if>



            <xsl:if test="decretoTitulo/@año &lt;= 2009">
            
            
                <xsl:value-of select="nombre" />

            </xsl:if>
           
        
    </xsl:template>


</xsl:stylesheet>-->



<!-- EL SWITCH EN ESTA WEA



<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio3</title>
                <style>
                
                .rojo{color:red}
                .amarillo{color:yellow}
                .verde{color:green}
                
                
                </style>
            </head>
            <body>
          

                
                    <xsl:apply-templates />
                
              
                


            </body>
        </html>
    </xsl:template>


    <xsl:template match="ciclo">


            <xsl:choose>
            
                <xsl:when test="decretoTitulo/@año = 2008">
                
                    <p class="rojo">
                        
                        <xsl:value-of select="nombre">
                        
                        
                        </xsl:value-of>

                    </p>
                
                </xsl:when>


                 <xsl:when test="decretoTitulo/@año = 2009">
                
                    <p class="amarillo">
                        
                        <xsl:value-of select="nombre">
                        
                        
                        </xsl:value-of>
                        
                    </p>
                
                </xsl:when>


                <xsl:otherwise>
                
                     <p class="verde">
                        
                        <xsl:value-of select="nombre">
                        
                        
                        </xsl:value-of>
                        
                    </p>

                </xsl:otherwise>
            
            </xsl:choose>
  
           
        
    </xsl:template>

</xsl:stylesheet>


-->


</xsl:stylesheet>