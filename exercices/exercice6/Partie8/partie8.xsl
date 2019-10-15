<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="iso-8859-1"/>
    
    <!--1ère règle en commençant par la racine, pour page html-->
    <xsl:template match="/">
        <!--application des règles concernant le noeud contenant un vers-->
        <xsl:apply-templates select="TEI/text/group/text/body/lg/lg/l"/>
    </xsl:template>
    
    <xsl:template match="l">
        <xsl:if test="contains(text(), ';') or contains(text(), ':')">
            <xsl:value-of select="."/><xsl:text>
</xsl:text>
        </xsl:if>
    </xsl:template>
    
</xsl:stylesheet>
