<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="cars">
	<html>
			<head>
				<title> Sort By CO2 Emissions </title> 
			</head>
			
			<body>		
				<h2>Sort By CO2 Emissions </h2> 
				<table border="1">
				<tr>
					<th>Manufacturer Brand</th>
					<th>Model</th>
					<th>CO2 Emissions</th>
				</tr>
				
				<xsl:for-each select="car">
					<xsl:sort select="main_characteristics/CO2_emissions" order="ascending"/>
						<xsl:if test="main_characteristics/CO2_emissions > 110">
						<tr>
							<td> <xsl:value-of select="manufacturer_brand" /> </td>
							<td> <xsl:value-of select="manufacturer_brand/model" /> </td>
							<td> <xsl:value-of select="main_characteristics/CO2_emissions"/> gr/km</td>
						</tr>
						</xsl:if>
				</xsl:for-each>	
				
				</table>
			</body>
	</html>
</xsl:template>
</xsl:stylesheet>


