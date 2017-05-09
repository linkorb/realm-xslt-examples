<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>
  <xsl:param name="filter"/>
  <xsl:template match="section">
    <xsl:variable name="type" select="@type"/>
    <xsl:choose>
      <xsl:when test="count(document($filter)//allow[@section_type=$type])!=0">
        <xsl:copy>
          <xsl:copy-of select="@*"/>
          <xsl:apply-templates/>
        </xsl:copy>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="value">
    <xsl:variable name="type" select="../../@type"/>
    <xsl:variable name="concept" select="@concept"/>
    <xsl:if test="count(document('filter.xml')//allow[@section_type=$type][@concept=$concept])!=0">
      <xsl:copy-of select="."/>
    </xsl:if>
  </xsl:template>
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
