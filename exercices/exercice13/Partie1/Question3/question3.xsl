<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8"/>

<xsl:template match="racine">
<html>
<head>
<meta charset="UTF-8"/>
<title>Alican Yüksel - Exercice 13 - Partie1/Question 3</title>
<style>
	body {font-family: "Gill Sans", sans-serif;}
	div.header {text-align:center; font-size:11px;}
	h5 {margin-left:100px; border-style: dotted; border-top-width: 3px; border-bottom-width: 0px; border-left-width: 0px; border-right-width:0px;}
	div.item {text-align:justify; margin-left:150px;margin-right:250px;}
	p{margin:0px;}
	patron {background-color: #CD49EE;}
	patron2 {background-color: #EE7A49;}
	lemme {font-size:10px;font-weight:bold;color:#34DE89;}
	pos {font-size: 10px;font-weight:bold;color:#34DED8;}
	
</style>
</head>
<body>
<div class="header">
	<p><xsl:text>La rubrique : </xsl:text><xsl:value-of select="./rubrique"/></p>
	<p><xsl:text>Nom et prénom de l'étudiant : </xsl:text><xsl:value-of select="./nom"/><xsl:text></xsl:text></p>
</div>
<h3>Patron DET-ADJ-NOM et DET-NOM-ADJ</h3>	
<p><patron>patron DET-ADJ-NOM</patron> (<lemme>lemme</lemme>,<pos>POS</pos>)</p>
<p><patron2>patron DET-NOM-ADJ</patron2> (<lemme>lemme</lemme>,<pos>POS</pos>)</p>
	<xsl:apply-templates select="./FILTRAGE/item"/>
</body>
</html>
</xsl:template>

<xsl:template match="racine/FILTRAGE/item">
<h5>Item n°<xsl:value-of select="./@number"/></h5>
<div class="item">
	<xsl:for-each select="./titre">
	<p>
	<xsl:for-each select="./article/element">
	<xsl:choose>
		<xsl:when test="./data[contains(@type,'type')][contains(text(),'DET')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'ADJ')] and following-sibling::element[2]/data[contains(@type,'type')][contains(text(),'NOM')]">
		<patron><xsl:value-of select="./data[contains(@type,'string')]"/></patron> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
		</xsl:when>
		<xsl:when test="./data[contains(@type,'type')]='ADJ' and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'DET')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'NOM')]">
		<patron><xsl:value-of select="./data[contains(@type,'string')]"/></patron> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
		</xsl:when>
		<xsl:when test="./data[contains(@type,'type')]='NOM' and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'ADJ')] and preceding-sibling::element[2]/data[contains(@type,'type')][contains(text(),'DET')]">
		<patron><xsl:value-of select="./data[contains(@type,'string')]"/></patron> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
		</xsl:when>
		<xsl:when test="./data[contains(@type,'type')][contains(text(),'DET')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'NOM')] and following-sibling::element[2]/data[contains(@type,'type')][contains(text(),'ADJ')]">
		<patron2><xsl:value-of select="./data[contains(@type,'string')]"/></patron2> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
		</xsl:when>
		<xsl:when test="./data[contains(@type,'type')]='NOM' and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'DET')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'ADJ')]">
		<patron2><xsl:value-of select="./data[contains(@type,'string')]"/></patron2> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
		</xsl:when>
		<xsl:when test="./data[contains(@type,'type')]='ADJ' and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'NOM')] and preceding-sibling::element[2]/data[contains(@type,'type')][contains(text(),'DET')]">
		<patron2><xsl:value-of select="./data[contains(@type,'string')]"/></patron2> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="./data[contains(@type,'string')]"/><xsl:text> </xsl:text>
		</xsl:otherwise>
	</xsl:choose>
	</xsl:for-each>
	</p>
	</xsl:for-each>
	
	<xsl:for-each select="./description">
	<p>
	<xsl:for-each select="./article/element">
	<xsl:choose>
		<xsl:when test="./data[contains(@type,'type')][contains(text(),'DET')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'ADJ')] and following-sibling::element[2]/data[contains(@type,'type')][contains(text(),'NOM')]">
		<patron><xsl:value-of select="./data[contains(@type,'string')]"/></patron> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
		</xsl:when>
		<xsl:when test="./data[contains(@type,'type')]='ADJ' and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'DET')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'NOM')]">
		<patron><xsl:value-of select="./data[contains(@type,'string')]"/></patron> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
		</xsl:when>
		<xsl:when test="./data[contains(@type,'type')]='NOM' and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'ADJ')] and preceding-sibling::element[2]/data[contains(@type,'type')][contains(text(),'DET')]">
		<patron><xsl:value-of select="./data[contains(@type,'string')]"/></patron> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
		</xsl:when>
		<xsl:when test="./data[contains(@type,'type')][contains(text(),'DET')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'NOM')] and following-sibling::element[2]/data[contains(@type,'type')][contains(text(),'ADJ')]">
		<patron2><xsl:value-of select="./data[contains(@type,'string')]"/></patron2> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
		</xsl:when>
		<xsl:when test="./data[contains(@type,'type')]='NOM' and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'DET')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'ADJ')]">
		<patron2><xsl:value-of select="./data[contains(@type,'string')]"/></patron2> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
		</xsl:when>
		<xsl:when test="./data[contains(@type,'type')]='ADJ' and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'NOM')] and preceding-sibling::element[2]/data[contains(@type,'type')][contains(text(),'DET')]">
		<patron2><xsl:value-of select="./data[contains(@type,'string')]"/></patron2> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="./data[contains(@type,'string')]"/><xsl:text> </xsl:text>
		</xsl:otherwise>
	</xsl:choose>
	</xsl:for-each>
	</p>
	</xsl:for-each>
</div>
</xsl:template>

</xsl:stylesheet>