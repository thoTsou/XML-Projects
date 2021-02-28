<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="cars">
	<html>
			<head>
				<title> Cars To Rent </title> 
			</head>
			
			<body>		
				<h2>Cars To Rent</h2> <br>
				<cars_to_rent>
				
				<xsl:for-each select="car">
					<car>
						<xsl:value-of select="manufacturer_brand/model" /> 
						<xsl:for-each select="equipment/basic_equipment/equip">
							<xsl:value-of select="."/>
						</xsl:for-each>
					</car>
				</xsl:for-each>	
				
				</cars_to_rent>
			</body>
	</html>
</xsl:template>
</xsl:stylesheet>


