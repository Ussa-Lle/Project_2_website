<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="iso-8859-1"/> 

    <xsl:template match="/">
        <html>    
            <style>
                body {
                font-family: "Gill Sans", sans-serif;
                color: black;
                background-color: white;
                }
                div.p {
                text-align: center;
                width: auto;
                height: auto;
                margin: auto;
                border-style: dotted;
                border-top-width: 2px;
                border-bottom-width: 2px;
                border-left-width: 2px;
                border-right-width: 2px;
                }
                table,tr,td {
                border: 2px solid;
                border-spacing: 1px;
                }
                td {
                align: left;
                }
                
            </style>
            
            <div class="p">
            <head>Le Dormeur du Val - Affichage - Partie 7</head>
           
            <body>
                <table width="25%" align="center">
                    <caption><i><xsl:value-of select="TEI/text/group/text/front/head"/></i> - <xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/author"/></caption>
                    <!--application d'une règle pour les noeuds des strophes-->
                    <xsl:apply-templates select="/TEI/text/group/text/body/lg/lg"/>
                </table>
            </body>
            </div>
        </html>
    </xsl:template>
    
    <!--2e règle pour les strophes-->
    <xsl:template match="lg">
        <xsl:apply-templates select="./l"/>
        <tr><td>---------------------------------------------------------</td></tr>
    </xsl:template>
    
    <!--3e règle pour les vers-->
    <xsl:template match="l">
        <tr><td style="background-color: #F39393"><xsl:value-of select="."/></td></tr>
    </xsl:template>
    
</xsl:stylesheet>