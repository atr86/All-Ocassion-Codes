<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <h2>Books with Attributes</h2>
        <table border="1">
          <tr>
            <th>Element</th>
            <th>Attributes</th>
          </tr>

          <xsl:for-each select="//book">
            <tr>
              <td><xsl:value-of select="name()"/></td>
              <td>
                <xsl:for-each select="@*">
                  <b><xsl:value-of select="name()"/>:</b>
                  <xsl:value-of select="."/><br/>
                </xsl:for-each>
              </td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
