<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="iso-8859-1"/>
    
    
    <!--comme on veut le texte brut, on n'utilise pas de balises html-->
    <xsl:template match="/">
        <!-- des balises xql:text nous permet de faire apparaître des retours à la ligne en texte brut-->
        <xsl:text>Titre : </xsl:text><xsl:value-of select="TEI/text/group/text/front/head"/><xsl:text>
</xsl:text>
        <xsl:text>Date : </xsl:text><xsl:value-of select="TEI/text/group/text/front/dateline"/><xsl:text>

</xsl:text>
        <xsl:apply-templates select="TEI/text/group/text/body/lg/lg/l"/>
    </xsl:template>
    <xsl:template match="l">
        <xsl:value-of select="."/><xsl:text>
</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>
