<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>

	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8"/>
				<title>XSLT</title>
			</head>
			<body>
				<h2>People</h2>
				<table border="2">
					<tr>
						<th>Born</th>
						<th>FirstName</th>
						<th>LastName</th>
						<th>Profession</th>
					</tr>
					<xsl:for-each select="people/person">
						<tr>
							<td><xsl:value-of select="@born"/></td>
							<td><xsl:value-of select="name/firstname"/></td>
							<td><xsl:value-of select="name/lastname"/></td>
							<td><xsl:value-of select="profession"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>