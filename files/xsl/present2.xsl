<?xml version="1.0"?>



<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="cars">
<HTML>
  <HEAD>
	<TITLE>Sort Cars By Manufacturer Name</TITLE> 
 </HEAD>
 
  <BODY>
		<h2>Sort Cars By Manufacturer Name</h2><br>
		<table border="1">
			<tr>
				<th>Manufacturer</th>
				<th>Model</th>
				<th>Color</th>
				<th>Mini Model Description</th>
			</tr>
			
				<xsl:apply-templates />
			
		</table>
  </BODY>
</HTML>
</xsl:template>

<xsl:template match="car">
	<xsl:sort select="manufacturer_brand" order="ascending"/>
	<tr>
		<td> <xsl:value-of select="manufacturer_brand" /> </td>
		<td> <xsl:value-of select="manufacturer_brand/model" /> </td>
		<td> <xsl:value-of select="extra_car_info/@color" /> </td>
		<td> <xsl:value-of select="extra_car_info/@mini_model_description" /> </td>
	</tr>
</xsl:template>



</xsl:stylesheet>