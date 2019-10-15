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
            
            <div class="p">
            <head>Le Dormeur du Val - Affichage - Partie 5</head>
            <h4><xsl:value-of select="TEI/text/group/text/front/head"/></h4>
            <h5><xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/author"/></h5>
            <body>
                <!--application d'une règle pour les noeud des strophes-->
                <xsl:apply-templates select="/TEI/text/group/text/body/lg/lg"/>
                <p><i><xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title"/></i><xsl:text>,</xsl:text><xsl:value-of select="TEI/text/group/text/front/dateline"/></p>
            </body>
            </div>
        </html>
    </xsl:template>
    
    <!--utilisation d'un outil html afin de pouvoir numéroter les vers-->
    <xsl:template match="lg">
        <ol>
            <xsl:apply-templates select="./l"/><br/>
        </ol>
    </xsl:template>
    
    
    <xsl:template match="l">
        <!-- chaque vers est un élément de la liste-->
        <li><xsl:value-of select="."/></li>
    </xsl:template>
    
</xsl:stylesheet>