<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="iso-8859-1"/>
    
    <!--on matche la racine pour la structure de la page html-->
    <xsl:template match="/table">
        <html>
            <style>
                table,tr,td {
                border: 2px solid black;
                border-spacing: 1px;
                }
                td {
                align: left;
                }
            </style>
            <body>
                <h1 align="center">Infirmi�res</h1>
                
                <table width="30%" align="center">
                    <tr><td><i>Num�ro</i></td><td><i>�ge</i></td><td><i>Ann�es d'�tude</i></td><td><i>Dipl�me</i></td><td><i>Anciennet�</i></td><td><i>Service</i></td></tr>
                    <!--pour chaque item ligne-->
                    <xsl:for-each select="ligne">
                        <!--si le contenu de la balise classe anciennete courante est diff�rente de la pr�c�dente-->
                        <xsl:if test="not(preceding-sibling::ligne/classe_anciennete=./classe_anciennete)">
                            <!--on r�cup�re le contenu et on l'affiche-->
                            <tr><td align="center" colspan="6"><b><xsl:value-of select="./classe_anciennete"/></b></td></tr>
                        </xsl:if>
                        <!--ensuite on r�cup�re le contenu textuel et on le met dans les bonnes cases--> 
                        <tr><td><xsl:value-of select="./infirmiere"/></td><td><xsl:value-of select="./age"/></td><td><xsl:value-of select="./annees_etudes"/></td><td><xsl:value-of select="./diplome"/></td><td><xsl:value-of select="./anciennete_neonatalite"/></td><td><xsl:value-of select="./service"/></td></tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
