<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8"/>

  <!--règle à partir de la racine pour structure de la page html-->
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
          background: url(../banner.jpg);
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
                    color: white;
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
                    
                    img.grande {
                    height:auto;
                    margin:5px;
                    padding:0px;
                    float: none;
                    width: 95%;
                    }
                    img.petite{
                    height:auto;
                    margin-left: 300px;
                    padding: 10px;
                    float: none;
                    width: 25%;
                    display: block;
                    }
                    img.moyenne{
                    height:auto;
                    margin-left: 200px;
                    padding: 35px;
                    float: none;
                    width: 40%;
                    display: block;
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
                    opacity: 0.7;
                    }

                    div.p {
                    text-align: justify;
                    height: auto;
                    width:900px;
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
                    div.commentaire {
                    text-align: justify;
                    width:870px;
                    margin: auto;
                    font-size: 14px;
                    }
                    div.footer {
                    text-align: left;
                    font-size: 11px;
                    width:870px;
                    margin: auto;
                    border-style: solid;
                    border-top-width: 0;
                    border-bottom-width: 0;
                    border-left-width: 0;
                    border-right-width:0;
                    }
                    div.code {
                    text-align: justify;
                    font-family: Monospace;
                    }
                    .button {
                    display: inline-block;
                    padding: 15px 25px;
                    font-size: 18px;
                    cursor: pointer;
                    text-align: center;
                    text-decoration: none;
                    outline: none;
                    color: #FFF;
                    border: 2px dotted #FF2400;
                    border-radius: 50px;
                    margin: 5px 5px;
                    }
                    .button1{background-color: black;}
                    .button1:hover {background-color: null}
                    
                    .button1 {
                    background-color: black;
                    }
                    .button1:active {
                    background-color: black;
                    transform: translateY(4px);
                    }
                    .button2 {background-color: black;}
                    .button2:hover {background-color: null}
                    .button2:active {
                    background-color: #FFA62F;
                    transform: translateY(4px);
                    }
                    .button3 {background-color: black;}
                    .button3:hover {background-color: null}
                    .button3:active {
                    background-color: #FFFF00;
                    transform: translateY(4px);
                    }
                    .button4 {background-color: black;}
                    .button4:hover {background-color: null}
                    .button4:active {
                    background-color: #80FF00;
                    transform: translateY(4px);
                    }
                    
                </style>
            </head>
            <body> <!--corps de la page-->
                
                <div class="sidenav">
                    <li><a href="../accueil.xml">Accueil</a></li>
                    <li><a href="exercice1.xml"><xsl:if test="devoir/exercice/@num=1"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 1</a></li>
                    <li><a href="exercice2.xml"><xsl:if test="devoir/exercice/@num=2"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 2</a></li>
                    <li><a href="exercice3.xml"><xsl:if test="devoir/exercice/@num=3"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 3</a></li>
                    <li><a href="exercice6.xml"><xsl:if test="devoir/exercice/@num=6"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 6</a></li>
                    <li><a href="exercice7.xml"><xsl:if test="devoir/exercice/@num=7"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 7</a></li>
                    <li><a href="exercice8.xml"><xsl:if test="devoir/exercice/@num=8"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 8</a></li>
                    <li><a href="exercice13.xml"><xsl:if test="devoir/exercice/@num=13"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 13</a></li>
                    <li><a href="exercice16.xml"><xsl:if test="devoir/exercice/@num=16"><xsl:attribute name="class">active</xsl:attribute></xsl:if>Exercice 16</a></li>
                </div>
                <xsl:apply-templates select="devoir/exercice"/>
                <div class="footer">
                    <p>Alican YÜKSEL - Oussama ID ALİ - M1TAL - 2018/2019</p>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="devoir/exercice"> <!--mise en forme de chaque exo-->
        <font color="#800000"><h2>Exercice <xsl:value-of select="./@num"/> : <xsl:value-of select="./titre"/></h2></font>
        <xsl:if test="./commentaire"> <!--commentaire-->
            <div class="commentaire">
                <p><b>PS: </b><xsl:value-of select="./commentaire"/></p>
            </div>
        </xsl:if>
        <xsl:for-each select="./partie"> <!--gestion des parties-->
            <xsl:if test="./@num > 0"> <!--pour les exos avec plus d'une partie-->
                <h3><u>Partie <xsl:value-of select="./@num"/></u><xsl:if test="./@titre"> : <xsl:value-of select="./@titre"/></xsl:if></h3>
            </xsl:if>

            <div class="p"> <!--corps de chaque partie d'exercice-->
                <xsl:for-each select="./question">
                    <xsl:for-each select="./enonce">
                        <p><b><xsl:if test="./@num">Enoncé <xsl:value-of select="./@num"/> : </xsl:if><xsl:value-of select="."/></b></p> <!--enonce-->
                    </xsl:for-each>
                    <xsl:if test="./reponse/texte"><!--reponse texte-->
                        <p><xsl:value-of select="./reponse/texte"/></p>
                    </xsl:if>
                    <xsl:if test="./reponse/liste"> <!--reponse liste-->
                        <ul class="autre">
                            <xsl:for-each select="./reponse/liste/element">
                                <li class="autre"><b><xsl:value-of select="./@titre"/> : </b><br/><div class="code"><xsl:value-of select="."/></div>
                                    <xsl:if test="./image"><!--réponse image-->
                                        <xsl:for-each select="./image"> <!--au cas où il y a plusieurs images associées-->
                                            <img><xsl:attribute name="src"><xsl:value-of select="./@nom"/></xsl:attribute><xsl:attribute name="class"><xsl:value-of select="./@taille"/></xsl:attribute></img>
                                        </xsl:for-each>
                                    </xsl:if></li>
                            </xsl:for-each>

                        </ul>
                    </xsl:if>
                    <xsl:if test="./reponse/image"><!--réponse image-->
                        <xsl:for-each select="./reponse/image"> <!--au cas où il y a plusieurs images associées-->
                            <img><xsl:attribute name="src"><xsl:value-of select="./@nom"/></xsl:attribute><xsl:attribute name="class"><xsl:value-of select="./@taille"/></xsl:attribute></img>
                        </xsl:for-each>
                    </xsl:if>
                    <div class="boutons">
                        <xsl:if test="./reponse/fichier[contains(@type,'xml')]"> <!--réponse fichier xml-->
                            <xsl:for-each select="./reponse/fichier[contains(@type,'xml')]">
                                <a target="_blank"><xsl:attribute name="href"><xsl:value-of select="./@nom"/></xsl:attribute><button class="button button1">Fichier xml<xsl:if test="./@num"><xsl:value-of select="./@num"/></xsl:if></button></a>
                            </xsl:for-each>
                        </xsl:if>
                        <xsl:if test="./reponse/fichier[contains(@type,'dtd')]"> <!--réponse fichier dtd-->
                            <xsl:for-each select="./reponse/fichier[contains(@type,'dtd')]">
                                <a target="_blank"><xsl:attribute name="href"><xsl:value-of select="./@nom"/></xsl:attribute><button class="button button2">DTD<xsl:if test="./@num"><xsl:value-of select="./@num"/></xsl:if></button></a>
                            </xsl:for-each>
                        </xsl:if>
                        <xsl:if test="./reponse/fichier[contains(@type,'xsl')]"> <!--réponse fichier xsl-->
                            <xsl:for-each select="./reponse/fichier[contains(@type,'xsl')]">
                                <a target="_blank"><xsl:attribute name="href"><xsl:value-of select="./@nom"/></xsl:attribute><button class="button button3">XSLT<xsl:if test="./@num"><xsl:value-of select="./@num"/></xsl:if></button></a>
                            </xsl:for-each>
                        </xsl:if>
                        <!--pour que le bouton fichier texte, s'il n'y en a qu'un, soit sur la même ligne-->
                        <xsl:if test="count(./reponse/fichier[contains(@type,'texte')]) = '1'">
                            <a target="_blank"><xsl:attribute name="href"><xsl:value-of select="./reponse/fichier[contains(@type,'texte')]/@nom"/></xsl:attribute><button class="button button4">Fichier Texte<xsl:if test="./@num"><xsl:value-of select="./@num"/></xsl:if></button></a>
                        </xsl:if>
                    </div>
                    <xsl:if test="count(./reponse/fichier[contains(@type,'texte')]) &gt; '1'"> <!--réponse fichier txt quand plusieurs fichiers textes-->
                        <div class="fic_texte">
                            <xsl:for-each select="./reponse/fichier[contains(@type,'texte')]">
                                <a target="_blank"><xsl:attribute name="href"><xsl:value-of select="./@nom"/></xsl:attribute><button class="button button4">Fichier Texte<xsl:if test="./@num"><xsl:value-of select="./@num"/></xsl:if></button></a>
                            </xsl:for-each>
                        </div>
                    </xsl:if>
                </xsl:for-each>

            </div>
        </xsl:for-each>

    </xsl:template>
</xsl:stylesheet>
