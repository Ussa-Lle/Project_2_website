<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="iso-8859-1"/>
	
	<xsl:template match="/">
		<html>
			<!-- comme on veut une page bien formée pourquoi pas un petit peu de CSS ? :) -->
			<style>
				body {
				font-family: "Gill Sans", sans-serif;
				color: black;
				background-color: white;
				}
				div.p {
				text-align: center;
				width: 400px;
				height: auto;
				margin: auto;
				border-style: dotted;
				border-top-width: 2px;
				border-bottom-width: 2px;
				border-left-width: 2px;
				border-right-width: 2px;
				}
				
			</style>
			
			
			<body>
				<div class="p">
				<head>Le Dormeur du Val - Affichage - Partie 4</head>
				<h4>1er quatrain</h4>
				<!--on selectionne le 1er quatrain-->
				<p><xsl:apply-templates select="TEI/text/group/text/body/lg/lg[1]/l"/></p>
				</div>
			</body>
		</html>
	</xsl:template>
	

	<xsl:template match="l">
		<xsl:value-of select="."/><br/>
	</xsl:template>
	
</xsl:stylesheet>