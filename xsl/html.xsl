<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml"
  version="1.0">

  <xsl:import href="https://cdn.docbook.org/release/xsl/1.79.2/xhtml-1_1/docbook.xsl" />

  <xsl:param name="admon.graphics.path">imgs/docbook/</xsl:param>
  <xsl:param name="callout.graphics.path">imgs/docbook/callouts/</xsl:param>
  <xsl:param name="html.stylesheet">docbook.css</xsl:param>

  <xsl:param name="admon.graphics">1</xsl:param>
  <xsl:param name="admon.graphics.extension">.gif</xsl:param>
  <xsl:param name="admon.style">0</xsl:param>
  <xsl:param name="css.decoration">0</xsl:param>
  <xsl:param name="section.autolabel">1</xsl:param>

  <xsl:template name="user.head.content">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </xsl:template>

</xsl:stylesheet>
