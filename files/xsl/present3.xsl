<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="cars">
	<html>
			<head>
				<title> Cars Sort By Monthly Leasing Price </title> 
			</head>
			
			<body>		
				<h2>Cars in descending order by monthly leasing </h2> 
				<table border="1">
				<tr>
					<th>Manufacturer Brand</th>
					<th>Model</th>
					<th>Monthly leasing price before taxes</th>
				</tr>
				
				<xsl:for-each select="car">
					<xsl:sort select="economic_info_leasing/monthly_leasing[@without_tax='true']" order="descending"/>
					<tr>
						<td> <xsl:value-of select="manufacturer_brand" /> </td>
						<td> <xsl:value-of select="manufacturer_brand/model" /> </td>
						<td> <xsl:value-of select="economic_info_leasing/monthly_leasing[@without_tax='true']"/> </td>
					</tr>
				</xsl:for-each>	
				
				</table>
			</body>
	</html>
</xsl:template>
</xsl:stylesheet>


