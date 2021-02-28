<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/hotel/rooms">
	<html>
			<head>
				<title>Beds Per Room</title> 
			</head>
			
			<body>		
				<h2>Beds Per Room</h2> 
				<table border="1">
				<tr>
					<th>Room Name</th>
					<th>Singles (Beds)</th>
					<th>Doubles</th>
					<th>Doubles+</th>
					<th>Sofa-Beds</th>
				</tr>
				
				<xsl:for-each select="room">
					<tr>
						<td> <xsl:value-of select="roomName" /> </td>
						<xsl:choose>
							<xsl:when test="beds/single">
								<td> <xsl:value-of select="beds/single" /> </td>
							</xsl:when>
							<xsl:otherwise>
								<td>0</td>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:choose>
							<xsl:when test="beds/double">
								<td> <xsl:value-of select="beds/double" /> </td>
							</xsl:when>
							<xsl:otherwise>
								<td>0</td>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:choose>
							<xsl:when test="beds/XL">
								<td> <xsl:value-of select="beds/XL" /> </td>
							</xsl:when>
							<xsl:otherwise>
								<td>0</td>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:choose>
							<xsl:when test="beds/bedCouch">
								<td> <xsl:value-of select="beds/bedCouch" /> </td>
							</xsl:when>
							<xsl:otherwise>
								<td>0</td>
							</xsl:otherwise>
						</xsl:choose>
						
					</tr>
				</xsl:for-each>	
				
				</table>
			</body>
	</html>
</xsl:template>
</xsl:stylesheet>


