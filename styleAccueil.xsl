<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8"/>
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>Alican YÜKSEL - Oussama ID ALİ</title>
         <style> <!--CSS-->
          body {
          font-family: "Lucida Console", Courier, monospace;
          color: black;
          background-color: black;
          }

          body::after {
          content: "";
          background: url(./banner.jpg);
          background-size: cover;
          background-attachment: fixed;
          opacity: 1;
          top: 0;
          left: 0;
          bottom: 0;
          right: 0;
          position: fixed;
          z-index: -1;  
          }

          /* The sidebar menu */
          .sidenav {
         
          height: 100%; /* Full-height: remove this if you want "auto" height */
          width: 180px; /* Set the width of the sidebar */
          position: fixed; /* Fixed Sidebar (stay in place on scroll) */
          z-index: 1; /* Stay on top */
          top: 0; /* Stay at the top */
          left: 1;
          background-color: null;
          overflow-x: hidden; /* Disable horizontal scroll */
          padding-top: 150px;
          border-style: dotted;
          border-radius: 5px;

          border-top-width: 0;
          border-bottom-width: 0;
          border-left-width: 0;
          border-right-width: 3px;
          border-color: #800000;

          opacity: 0.9;
          }

          /* The navigation menu links */
          .sidenav a {
           padding: 2px 8px 6px 16px;
           text-decoration: none;
           font-size: 22px;
           
           display: flex;
           
          }

          /* When you mouse over the navigation links, change their color */
          .sidenav a:hover {
          color: white;
          }
            .active {
          background-color: #800000;
          color: white;
          
          
          }
          li {float: left;}
          li a {
          margin: 0;
          display: block;
          color: black;
          text-align: center;
          padding: 20px 16px;
          text-decoration: none;
          }
          a:hover:not(.active) {
          display: block flow;
          background-color: #800000;
          color: white;
          }
          
          ul.autre {
          list-style-type: disc;
          margin-right: 25px;
          }
          li.autre {
          color: black;
          float: none;
          }
          li.autre a.autre{
          margin: 5px;
          display: inline;
          color: black;
          text-align: justify;
          padding: 0px;
          text-decoration: underline;
          }
          h1,h2,h3,h4 {
          text-align: center;
          }
          h2{width:800px;
          margin-left:300px;
          margin-top:45px;}

          div.image {
          
          border-radius: 0%;
          display: block;
          margin-left: auto;
          margin-right: auto;
          max-width: 100%;
          background-size: cover;
         width: 1800px;
          height: 300px;
          margin:center;
          
          padding: auto;
          
          
          }

          div.t {
           /* Full-height: remove this if you want "auto" height */
           width: 100%; /* Set the width of the sidebar */
           position: center; /* Fixed Sidebar (stay in place on scroll) */
           z-index: 1; /* Stay on top */
           top: 0; /* Stay at the top */
           left: 0;
           background-color: null; /* Black */
           overflow-x: hidden; /* Disable horizontal scroll */
           padding-top: 20px;
           
          }

          div.p {
          text-align: justify;
          height: 400px;
          width: 900px;
          margin: auto;
          border-style: solid;
          border-top-width: 3px;
          border-bottom-width: 3px;
          border-left-width: 0px;
          border-right-width:0px;
          
          border-radius: 10px;
          background-color: null;
          opacity: 0.9
          
          }
          div.footer {
          text-align: center;
          font-size: 11px;
          
          margin: auto;
          border-style: solid;
          border-top-width: 0;
          border-bottom-width: 0;
          border-left-width: 0;
          border-right-width:0;
          
          }
          .container {
          position: sticky;
          width: 15%;
          margin-left:100px;
          display:inline-block;
          
          }
          img.image {
          display: inline-block;
          width: 100%;
          height: auto;
          margin:0;
          
          }
          .overlay {
          position: absolute;
          top: 0;
          bottom: 0;
          left: 0;
          right: 0;
          height: 100%;
          width: 100%;
          opacity: 0;
          transition: .5s ease;
          background-color: #000000;
          }
          .container:hover .overlay {
          opacity: 1;
          }
          .text {
          font-size: 16px;
          position: absolute;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
          -ms-transform: translate(-50%, -50%);}
          a.bouton{text-decoration:none;color:white;background-color:#000000;}
          a.bouton:hover{color:grey;background-color:#000000}
          .outils{background-color:#f1f1f1;padding:0.01em 16px;margin:20px 0;box-shadow:0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12)!important}

                   

        </style>
      </head>
      
      

      <body>

      <!-- Side navigation -->
       <div class="sidenav">
          <li><a href="accueil.xml"><xsl:if test="racine/page"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Accueil</a></li>
          <li><a href="./exercices/exercice1.xml"><xsl:if test="devoir/exercice/@num=1"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 1</a></li>
          <li><a href="./exercices/exercice2.xml"><xsl:if test="devoir/exercice/@num=2"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 2</a></li>
          <li><a href="./exercices/exercice3.xml"><xsl:if test="devoir/exercice/@num=3"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 3</a></li>
          <li><a href="../exercices/exercice6.xml"><xsl:if test="devoir/exercice/@num=6"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 6</a></li>
          <li><a href="./exercices/exercice7.xml"><xsl:if test="devoir/exercice/@num=7"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 7</a></li>
          <li><a href="./exercices/exercice8.xml"><xsl:if test="devoir/exercice/@num=8"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 8</a></li>
          <li><a href="./exercices/exercice13.xml"><xsl:if test="devoir/exercice/@num=13"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 13</a></li>
          <li><a href="./exercices/exercice16.xml"><xsl:if test="devoir/exercice/@num=16"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 16</a></li>
        </div>
        <xsl:apply-templates select="racine/page"/>
        <div class="footer">
          <p>Alican YÜKSEL - Oussama ID ALİ - M1TAL - 2018/2019</p>
        </div>
      </body>
    </html>
  </xsl:template>

  
  <xsl:template match="racine/page">
  
   <div class="t">
    <p><h1><xsl:value-of select="./titre"/></h1></p>
    <p><h2><xsl:value-of select="./corps/titre2"/></h2></p>
  </div>
    
   <xsl:for-each select="./corps/accueil">
      <div class="p">
        <xsl:for-each select="./paragraphe">
          <p><xsl:value-of select="./texte"/></p>
          
          <ul class="autre">
            <xsl:for-each select="./liste/element">
              <li class="autre"><a class="autre" target="_blank"><xsl:attribute name="href"><xsl:value-of select="./@lien"/></xsl:attribute><b><xsl:value-of select="."/></b></a> : <xsl:value-of select="./@titre"/></li>
            </xsl:for-each>
          </ul>

          <xsl:for-each select="./image"> <!--au cas où il y a plusieurs images associées-->
            <div class="container"><img class="image"><xsl:attribute name="src"><xsl:value-of select="./@nom"/></xsl:attribute></img><div class="overlay"><div class="text"><a class="bouton" target="_blank"><xsl:attribute name="href"><xsl:value-of select="./@lien"/></xsl:attribute><xsl:value-of select="."/></a></div></div></div>
          </xsl:for-each>
        </xsl:for-each>
      </div>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
