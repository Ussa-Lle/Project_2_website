<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>

<xsl:template match="racine">
	<xsl:text>
	Pour la rubrique </xsl:text><xsl:value-of select="./rubrique"/><xsl:text>
	Nom et prénom de l'étudiant : </xsl:text><xsl:value-of select="./nom"/><xsl:text>
	
</xsl:text>
	<xsl:apply-templates select="./FILTRAGE/item"/>
</xsl:template>

<xsl:template match="racine/FILTRAGE/item">
	<xsl:text>Item n°</xsl:text><xsl:value-of select="./@number"/><xsl:text>
	
	</xsl:text>
	<xsl:for-each select="./titre/article/element">
	<xsl:text>&lt;pos&gt;</xsl:text>
		<xsl:value-of select="./data[contains(@type,'type')]"/>
	<xsl:text>&lt;/pos&gt;&lt;lemme&gt;</xsl:text>
		<xsl:value-of select="./data[contains(@type,'lemma')]"/>
	<xsl:text>&lt;/lemme&gt;&lt;mot&gt;</xsl:text>
		<xsl:value-of select="./data[contains(@type,'string')]"/>
	<xsl:text>&lt;/mot&gt;	
	</xsl:text>
	</xsl:for-each>
	<xsl:text>
	</xsl:text>
	<xsl:for-each select="./description/article/element">
	<xsl:text>&lt;pos&gt;</xsl:text>
		<xsl:value-of select="./data[contains(@type,'type')]"/>
	<xsl:text>&lt;/pos&gt;&lt;lemme&gt;</xsl:text>
		<xsl:value-of select="./data[contains(@type,'lemma')]"/>
	<xsl:text>&lt;/lemme&gt;&lt;mot&gt;</xsl:text>
		<xsl:value-of select="./data[contains(@type,'string')]"/>
	<xsl:text>&lt;/mot&gt;	
	</xsl:text>
	</xsl:for-each>
	<xsl:text>
</xsl:text>
	

</xsl:template>


</xsl:stylesheet>