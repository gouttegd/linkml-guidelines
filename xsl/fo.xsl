<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:db="http://docbook.org/ns/docbook"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="1.0">

  <xsl:import href="https://cdn.docbook.org/release/xsl/1.79.2/fo/docbook.xsl" />

  <xsl:param name="fop1.extensions">1</xsl:param>

  <xsl:param name="admon.textlabel">0</xsl:param>
  <xsl:param name="admon.graphics">1</xsl:param>
  <xsl:param name="admon.graphics.extension">.svg</xsl:param>

  <xsl:param name="paper.type">A4</xsl:param>

  <xsl:attribute-set name="component.title.properties">
    <xsl:attribute name="text-align">center</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="section.title.properties">
    <xsl:attribute name="space-before.minimum">1.6em</xsl:attribute>
    <xsl:attribute name="space-before.optimum">1.8em</xsl:attribute>
    <xsl:attribute name="space-before.maximum">2em</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="section.title.level1.properties">
    <xsl:attribute name="font-size">
      <xsl:value-of select="$body.font.master * 1.6" />
      <xsl:text>pt</xsl:text>
    </xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="section.title.level2.properties">
    <xsl:attribute name="font-size">
      <xsl:value-of select="$body.font.master * 1.2" />
      <xsl:text>pt</xsl:text>
    </xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="section.title.level3.properties">
    <xsl:attribute name="font-size">
      <xsl:value-of select="$body.font.master * 1.2" />
      <xsl:text>pt</xsl:text>
    </xsl:attribute>
  </xsl:attribute-set>

  <xsl:param name="section.autolabel">1</xsl:param>

  <xsl:param name="ulink.show">0</xsl:param>

  <xsl:template match="db:property">
    <xsl:call-template name="inline.italicmonoseq" />
  </xsl:template>

</xsl:stylesheet>
