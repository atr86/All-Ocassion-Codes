<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
<html>
<body>
    <h2>Student Details</h2>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Marks</th>
        </tr>
        <xsl:for-each select="students/student">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="marks"/></td>
        </tr>
        </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>

</xsl:stylesheet>
