<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>

<xsl:template match="racine">
	<xsl:text>
	Pour la rubrique </xsl:text><xsl:value-of select="./rubrique"/><xsl:text>
	Nom et prénom de l'étudiant : </xsl:text><xsl:value-of select="./nom"/><xsl:text>
	
Patron NOM-PREP-DET-NOM
		</xsl:text>
	<xsl:apply-templates select="./FILTRAGE/item"/>
</xsl:template>
	
<xsl:template match="racine/FILTRAGE/item">
	<xsl:for-each select="./titre/article/element">
		<xsl:if test="./data[contains(@type,'type')]='PRP' and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'NOM')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'DET')] and following-sibling::element[2]/data[contains(@type,'type')][contains(text(),'NOM')]">
		<xsl:value-of select="preceding-sibling::element[1]/data[contains(@type,'string')]"/><xsl:text> </xsl:text>
		<xsl:value-of select="./data[contains(@type,'string')]"/><xsl:text> </xsl:text>
		<xsl:value-of select="following-sibling::element[1]/data[contains(@type,'string')]"/><xsl:text> </xsl:text>
		<xsl:value-of select="following-sibling::element[2]/data[contains(@type,'string')]"/><xsl:text>		
		</xsl:text>		
		</xsl:if>
	</xsl:for-each>
	<xsl:for-each select="./description/article/element">
		<xsl:if test="./data[contains(@type,'type')]='PRP' and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'NOM')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'DET')] and following-sibling::element[2]/data[contains(@type,'type')][contains(text(),'NOM')]">
		<xsl:value-of select="preceding-sibling::element[1]/data[contains(@type,'string')]"/><xsl:text> </xsl:text>
		<xsl:value-of select="./data[contains(@type,'string')]"/><xsl:text> </xsl:text>
		<xsl:value-of select="following-sibling::element[1]/data[contains(@type,'string')]"/><xsl:text> </xsl:text>
		<xsl:value-of select="following-sibling::element[2]/data[contains(@type,'string')]"/><xsl:text>		
		</xsl:text>		
		</xsl:if>
	</xsl:for-each>
	
</xsl:template>

</xsl:stylesheet>