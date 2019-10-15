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
                width: 600px;
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
            <head>Le Dormeur du Val - Affichage - Partie 9</head>
                <!-- Pour que ça soit beau, on commence par mettre le titre-->
            <h4><i><xsl:value-of select="TEI/text/group/text/front/head"/></i></h4>
            
            <body>
                <xsl:apply-templates select="/TEI/text/group/text/body/lg/lg"/>
                <!-- Et on place le nom de l'auteur à la fin-->
                <p><u><xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/author"/></u></p>
                <p><i><xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title"/></i><xsl:text>,</xsl:text><xsl:value-of select="TEI/text/group/text/front/dateline"/></p>
            </body>
            </div>
        </html>
    </xsl:template>
    <xsl:template match="lg">
        <xsl:if test="count(child::*)=4">
            <xsl:for-each select="./l">
                <b><xsl:value-of select="."/></b><br/>
            </xsl:for-each>
        </xsl:if>
        <xsl:if test="count(child::*)=3">
            <xsl:for-each select="./l">
                <i><xsl:value-of select="."/></i><br/>
            </xsl:for-each>
        </xsl:if>
        <br/>
    </xsl:template>
    
</xsl:stylesheet>