<?xml version="1.0" encoding="UTF-8" ?>
<!-- Source:https://help.ubuntu.com/community/Converting%20CSV%20to%20XML --> 
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
      xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
      xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0">

   <xsl:template match="office:spreadsheet">
      <document>
         <xsl:apply-templates/>
      </document>
   </xsl:template>

   <xsl:template match="table:table">
      <table>
         <xsl:attribute name="name">
            <xsl:value-of select="@table:name"/>
         </xsl:attribute>
         <xsl:apply-templates/>
      </table>
   </xsl:template>

   <xsl:template match="table:table-row">
      <row>
         <xsl:apply-templates/>
      </row>
   </xsl:template>

   <xsl:template match="table:table-cell">
      <xsl:element name="cell{position()}">
         <xsl:value-of select="text:p"/>
      </xsl:element>
   </xsl:template>

</xsl:stylesheet> 
