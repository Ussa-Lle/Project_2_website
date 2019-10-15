<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:template match='dico'>
        <xsl:variable name='newline'><xsl:text>
</xsl:text></xsl:variable>
        <xsl:value-of select="$newline" />
        <xsl:element name="dico">
            
        
        <xsl:for-each select="entry">
            <xsl:if test="position()&gt;=2001 and position()&lt;=2200 ">
                
                <xsl:copy-of select="."></xsl:copy-of>  
                
            </xsl:if>
        </xsl:for-each>
            
        </xsl:element> 

  
    </xsl:template>
  
    
</xsl:stylesheet>