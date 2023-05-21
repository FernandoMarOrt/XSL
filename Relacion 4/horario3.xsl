<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
    <html>
		<head>
			<title>Transformación 3</title>
		</head>
		<body>
			<xsl:for-each select="horario/dia">
			<xsl:sort select="numdia"/>
				<xsl:choose>
						<xsl:when test="numdia=1">
							Lunes
						</xsl:when>
						<xsl:when test="numdia=2">
							Martes
						</xsl:when>
						<xsl:when test="numdia=3">
							Miércoles
						</xsl:when>
						<xsl:when test="numdia=4">
							Jueves
						</xsl:when>
						<xsl:otherwise>
							Viernes
						</xsl:otherwise>
				</xsl:choose>
				<ul>
				<xsl:for-each select="tarea">
					<li><strong><xsl:value-of select="nombre"/></strong>
						<xsl:if test="@prioridad!=''"> - Prioridad:  
						</xsl:if>
						<xsl:value-of select="@prioridad"/>
					<br/>
					De <xsl:value-of select="hora-ini"/> a <xsl:value-of select="hora-fin"/>
					</li>
				</xsl:for-each>
				</ul>
			</xsl:for-each>
		</body>
	</html>
 </xsl:template>
  

</xsl:stylesheet>
