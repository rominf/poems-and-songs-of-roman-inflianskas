<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet 
                xmlns:m="http://www.w3.org/1998/Math/MathML"
                xmlns:tei="http://www.tei-c.org/ns/1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="tei m"
                version="3.0">
    <xsl:import href="../../../latex/latex.xsl"/>
    <xsl:param name="sansFont">CMU Serif</xsl:param>
    <xsl:template name="latexPreambleHook">
        <xsl:value-of select="latexPreambleHook"/>
        \setmainfont{CMU Serif}
        \pagestyle{plain}
    </xsl:template>
<xsl:template match="tei:lg">
    <div class="stanza">
        <xsl:apply-templates/>
    </div>
    <xsl:text>\bigskip</xsl:text>
</xsl:template>
</xsl:stylesheet>
