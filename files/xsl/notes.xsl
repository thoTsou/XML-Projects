<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
		
		
		<xsl:template match="cars" >
			<cars>
				<xsl:apply-templates />
			</cars>
		</xsl:template>
		
		<xsl:template match="car" >
			
		</xsl:template>
		
</xsl:template>
