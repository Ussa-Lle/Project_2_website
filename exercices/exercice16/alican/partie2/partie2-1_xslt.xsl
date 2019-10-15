<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method ="xml" version ="1.0" encoding ="utf-8" indent="yes"/>
	<xsl:template match="dico">
		<dico>
			<xsl:text></xsl:text>
			<xsl:for-each select="./entry[position() &lt;= 2200][position() &gt;= 2001]">
				<xsl:copy-of select="."/>
				<xsl:text></xsl:text>
			</xsl:for-each>
		</dico>
	</xsl:template>
</xsl:stylesheet>