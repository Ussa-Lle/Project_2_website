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
                width: 250px;
                height: auto;
                margin: auto;
                border-style: dotted;
                border-top-width: 2px;
                border-bottom-width: 2px;
                border-left-width: 2px;
                border-right-width: 2px;
                }
            </style>
            <body border="solid">
                <center>
                 <div class="p">
                <p><b><u>Auteur</u></b> : <xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/author"/></p>
                <p><b><u>Titre</u></b> : <xsl:value-of select="TEI/text/group/text/front/head"/></p>
                <p><b><u>Date</u></b> : <xsl:value-of select="TEI/text/group/text/front/dateline"/></p>
                <p><b><u>Recueil</u></b> : <xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title"/></p>
                 </div>
                </center>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
