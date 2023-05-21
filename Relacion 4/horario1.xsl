<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
    <html>
		<head>
			<title>Transformación 1</title>
		</head>
		<body>
			<xsl:for-each select="horario/dia">
				Día <xsl:value-of select="numdia"/>
				<ul>
				<xsl:for-each select="tarea">
					<li><strong><xsl:value-of select="nombre"/></strong> - Prioridad: <xsl:value-of select="@prioridad"/> <br/>
					De <xsl:value-of select="hora-ini"/> a <xsl:value-of select="hora-fin"/>
					</li>
				</xsl:for-each>
				</ul>
			</xsl:for-each>
		</body>
	</html>
 </xsl:template>
  

</xsl:stylesheet>
