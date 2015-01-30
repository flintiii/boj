<!-- Source:http://stackoverflow.com/questions/29004/parsing-xml-using-unix-terminal --> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text"/>
  <xsl:template match="root">
    <xsl:for-each select="myel">
      <xsl:value-of select="@name"/>
      <xsl:text>,</xsl:text>
      <xsl:if test="not(position() = last())">
        <xsl:text>&#xA;</xsl:text>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
