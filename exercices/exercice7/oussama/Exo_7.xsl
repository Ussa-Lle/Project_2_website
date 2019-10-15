<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
 
    <xsl:template match="/table">
      <html>
        <body >
          <h1 align="center">Infirmières</h1>
          <center>
            <table border="1" bgcolor="#F0F8FF">
              <tr bgcolor="#6495ED">
              
              <th>Numéro</th>
              <th>âge</th>
              <th>années d'études</th>
              <th>diplôme</th>
              <th>ancienneté</th>
              <th>service</th>
       
              
            </tr>
          <xsl:for-each select="ligne">
            <xsl:if test="not(preceding-sibling::ligne/classe_anciennete=./classe_anciennete)">
             
              <tr align="center">
                <td colspan="6">
                  <span style="font-weight:bold">
                  <xsl:value-of select="./classe_anciennete"/>
                 </span>
                </td>
              </tr>
                
            </xsl:if>
                <tr>
                  
                  <td align="center"><xsl:value-of select="infirmiere"/></td>
                  <td align="center"><xsl:value-of select="age"/></td>
                  <td align="center"><xsl:value-of select="annees_etudes"/></td>
                  <td align="center"><xsl:value-of select="diplome"/></td>
                  <td align="center"><xsl:value-of select="anciennete_neonatalite"/></td>
                  <td align="center"><xsl:value-of select="service"/></td>

                </tr>
             
           
           
          </xsl:for-each>
  
          </table>
            </center>
   
            
          
        </body>
      </html>
    </xsl:template>
    
    
    
  </xsl:stylesheet>
