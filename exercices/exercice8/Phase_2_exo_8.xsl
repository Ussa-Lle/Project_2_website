<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
        <xsl:output method="xml"/>
     
        <xsl:template match="/doc">
            <xsl:copy>
                <xsl:apply-templates/>  
            </xsl:copy>
        </xsl:template>
        
    <xsl:template match="ref">
        <xsl:copy-of select="."/>
    </xsl:template>
    <xsl:template match="taggersent">
        <xsl:copy>
                <xsl:apply-templates select="taggertoken"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="taggertoken">
        <xsl:variable name='v1' select='@wordform'/>
        <xsl:variable name='v2' select='@pos'/>
        <xsl:variable name='v2_c' select="substring-after(@pos,':')"/>
        <xsl:variable name='v2_p' select="substring-before(@pos,':')"/>
     <xsl:choose>
            <xsl:when test="contains($v2, ':')">
                
                <xsl:element name="{$v2_p}">
                    <xsl:attribute name="gram">
                        <xsl:value-of select="$v2_c"/>      
                    </xsl:attribute>
                    <xsl:value-of select="$v1"/>  
                </xsl:element>   
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="{$v2}">
                    <xsl:attribute name="gram">
                        <xsl:value-of select="$v2_c"/>      
                    </xsl:attribute>
                    <xsl:value-of select="$v1"/>  
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>   
    
    </xsl:template>
</xsl:stylesheet>