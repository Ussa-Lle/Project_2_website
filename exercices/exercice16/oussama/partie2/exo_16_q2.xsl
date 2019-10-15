<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    
    <xsl:template match="/dico">
        <xsl:text>Les verbes et tous leurs formes:&#xA; </xsl:text>
  
    
        <xsl:for-each select="entry">
          
            <xsl:if test="pos/@name='verb'">
                
                <xsl:value-of select="concat('Lemma',':','&#160;',lemma,'&#xA;','Les formes',':','&#xA;')"/>   
                <xsl:for-each select="inflected">
                <xsl:value-of select="concat('-',form,'&#xA;')"/>  
                </xsl:for-each>
            </xsl:if>
        </xsl:for-each>
       
       
        



        
  
        
    </xsl:template>
</xsl:stylesheet>