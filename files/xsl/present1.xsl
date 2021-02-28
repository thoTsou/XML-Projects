<?xml version="1.0" encoding="UTF-8"?>



<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
  <head>
	<title> Cars Quick Details </title> 
 </head>
 
  <body>
		<h2>Sort Review Of Cars</h2><br>
		<table border="1">
			<tr>
				<th>Manufacturer</th>
				<th>Model</th>
				<th>Color</th>
				<th>Mini Model Description</th>
			</tr>
			
				<xsl:apply-templates />
			
		</table>
  </body>
</html>
</xsl:template>

<xsl:template match="/cars/car">
	<tr>
		<td> <xsl:value-of select="manufacturer_brand" /> </td>
		<td> <xsl:value-of select="manufacturer_brand/model" /> </td>
		<td> <xsl:value-of select="extra_car_info/@color" /> </td>
		<td> <xsl:value-of select="extra_car_info/@mini_model_description" /> </td>
	</tr>
</xsl:template>



</xsl:stylesheet>