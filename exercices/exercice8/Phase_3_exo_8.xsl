<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/doc">
        <html>
            <body >
                <h1 align="left">Recommandation XSLT 1.0</h1>
         
             
             <xsl:apply-templates/>  
            
         
                
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ref">
      
    </xsl:template>
        <xsl:template match="taggersent">
            <p>
            <xsl:apply-templates select="taggertoken"/>
            </p>
    </xsl:template>
    
    <xsl:template match="taggertoken">
        <xsl:variable name='v1' select='@wordform'/>
        <xsl:variable name='v2' select='@pos'/>


        <xsl:choose>
            <xsl:when test="contains($v2, 'DET:femi')">
                <span style="color:red"> <xsl:value-of select="$v1"/>&#160;</span>
            </xsl:when>
            <xsl:when test="contains($v2, 'DET:masc')">
                <span style="color:blue"> <xsl:value-of select="$v1"/>&#160;</span>
            </xsl:when>
            <xsl:otherwise>
                <span style="color:black">  <xsl:value-of select="$v1"/>&#160;</span>
            </xsl:otherwise>
        </xsl:choose>   
        
    </xsl:template>
    
    
</xsl:stylesheet>