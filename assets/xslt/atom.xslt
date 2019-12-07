<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
    <xsl:output method="html" encoding="utf-8" />
    <xsl:template match="/atom:feed">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html &gt;</xsl:text>
        <html>
            <head>
                <xsl:text disable-output-escaping="yes"><![CDATA[
                    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atom Feed (Styled)</title>

    <link rel="stylesheet" type="text/css" href="/assets/css/styles_feeling_responsive.css">

    <!-- Search Engine Optimization -->
    <meta name="description" content="An idiomatic GUI Rust library, based on GTK+">
    
    <link rel="canonical" href="/assets/xslt/atom.xslt">

    <link rel="stylesheet" href="/css/asciidoc-pygments.css">

    <link type="text/plain" rel="author" href="/humans.txt">

    

	<link rel="icon" sizes="32x32" href="https://relm.antoyo.xyz/assets/img/favicon-32x32.png">

	<link rel="icon" sizes="192x192" href="https://relm.antoyo.xyz/assets/img/touch-icon-192x192.png">

	<link rel="apple-touch-icon-precomposed" sizes="180x180" href="https://relm.antoyo.xyz/assets/img/apple-touch-icon-180x180-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="152x152" href="https://relm.antoyo.xyz/assets/img/apple-touch-icon-152x152-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://relm.antoyo.xyz/assets/img/apple-touch-icon-144x144-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="https://relm.antoyo.xyz/assets/img/apple-touch-icon-120x120-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://relm.antoyo.xyz/assets/img/apple-touch-icon-114x114-precomposed.png">

	
	<link rel="apple-touch-icon-precomposed" sizes="76x76" href="https://relm.antoyo.xyz/assets/img/apple-touch-icon-76x76-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://relm.antoyo.xyz/assets/img/apple-touch-icon-72x72-precomposed.png">

	<link rel="apple-touch-icon-precomposed" href="https://relm.antoyo.xyz/assets/img/apple-touch-icon-precomposed.png">	

	<meta name="msapplication-TileImage" content="https://relm.antoyo.xyz/assets/img/msapplication_tileimage.png">

	<meta name="msapplication-TileColor" content="#fabb00">


    

                    ]]></xsl:text>
            </head>
            <body id="top-of-page">
                <xsl:text disable-output-escaping="yes"><![CDATA[
                    
<div id="navigation" class="sticky">
  <nav class="top-bar" role="navigation" data-topbar>
    <ul class="title-area">
      <li class="name">
      <h1 class="show-for-small-only"><a href="/" class="icon-tree"> Relm Blog</a></h1>
    </li>
       <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
      <li class="toggle-topbar menu-icon"><a href="#"><span>Nav</span></a></li>
    </ul>
    <section class="top-bar-section">

      <ul class="right">
        

          
          
        

          
          
        

          
          
        

          
          
        
        

        <a href="https://www.patreon.com/antoyo"><img class="patreon" src="https://c5.patreon.com/external/logo/become_a_patron_button.png"/></a>
      </ul>

      <ul class="left">
        

          
          

            
            
              <li><a  href="/">Index</a></li>
              <li class="divider"></li>

            
            
          
        

          
          

            
            
              <li><a  href="/getting-started/">Getting Started</a></li>
              <li class="divider"></li>

            
            
          
        

          
          

            
            

              <li class="has-dropdown">
                <a  href="/documentation/">Documentation</a>

                  <ul class="dropdown">
                    

                      <li><a  href="/documentation/tutorial/">Tutorial</a></li>
                    

                      <li><a  href="/documentation/reference/">Reference</a></li>
                    
                  </ul>

              </li>
              <li class="divider"></li>
            
          
        

          
          

            
            
              <li><a  href="/blog/">Blog</a></li>
              <li class="divider"></li>

            
            
          
        
        
      </ul>
    </section>
  </nav>
</div><!-- /#navigation -->

                    

<div id="masthead-no-image-header">
    <div class="row">
        <div class="small-12 columns">
            <a id="logo" href="https://relm.antoyo.xyz/" title="Relm Blog – An easy-to-use ORM from Rust">
                <img src="/assets/img/logo.png" alt="Relm Blog – An easy-to-use ORM from Rust">
            </a>
        </div><!-- /.small-12.columns -->
    </div><!-- /.row -->
</div><!-- /#masthead -->









                    


<div class="alert-box warning text-center"><p>This <a href="https://en.wikipedia.org/wiki/RSS" target="_blank">Atom feed</a> is meant to be used by <a href="https://en.wikipedia.org/wiki/Template:Aggregators" target="_blank">RSS reader applications and websites</a>.</p>
</div>



                    ]]></xsl:text>
                <header class="t30 row">
	<p class="subheadline"><xsl:value-of select="atom:subtitle" disable-output-escaping="yes" /></p>
	<h1>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="atom:id" />
			</xsl:attribute>
			<xsl:value-of select="atom:title" />
		</xsl:element>
	</h1>
</header>
<ul class="accordion row" data-accordion="">
	<xsl:for-each select="atom:entry">
		<li class="accordion-navigation">
			<xsl:variable name="slug-id">
				<xsl:call-template name="slugify">
					<xsl:with-param name="text" select="atom:id" />
				</xsl:call-template>
			</xsl:variable>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="concat('#', $slug-id)"/></xsl:attribute>
				<xsl:value-of select="atom:title"/>
				<br/>
				<small><xsl:value-of select="atom:updated"/></small>
			</xsl:element>
			<xsl:element name="div">
				<xsl:attribute name="id"><xsl:value-of select="$slug-id"/></xsl:attribute>
				<xsl:attribute name="class">content</xsl:attribute>
				<h1>
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="atom:id"/></xsl:attribute>
						<xsl:value-of select="atom:title"/>
					</xsl:element>
				</h1>
				<xsl:value-of select="atom:content" disable-output-escaping="yes" />
			</xsl:element>
		</li>
	</xsl:for-each>
</ul>

                <xsl:text disable-output-escaping="yes"><![CDATA[
                        <div id="up-to-top" class="row">
      <div class="small-12 columns" style="text-align: right;">
        <a class="iconfont" href="#top-of-page">&#xf108;</a>
      </div><!-- /.small-12.columns -->
    </div><!-- /.row -->


    <footer id="footer-content" class="bg-grau">
      <div id="footer">
        <div class="row">
          <div class="medium-6 large-5 columns">
            <h5 class="shadow-black">About This Site</h5>

            <p class="shadow-black">
              An idiomatic GUI Rust library, based on GTK+
            </p>
          </div><!-- /.large-6.columns -->


          <div class="small-6 medium-3 large-3 large-offset-1 columns">
            
              
                <h5 class="shadow-black">News Feed</h5>
              
            
              
            
              
            

              <ul class="no-bullet shadow-black">
              
                
                  <li >
                    <a href=""  title=""></a>
                  </li>
              
                
                  <li >
                    <a href="/feed.xml"  title="Subscribe to RSS Feed">RSS</a>
                  </li>
              
                
                  <li >
                    <a href="/atom.xml"  title="Subscribe to Atom Feed">Atom</a>
                  </li>
              
              </ul>
          </div><!-- /.large-4.columns -->


          <div class="small-6 medium-3 large-3 columns">
            
              
                <h5 class="shadow-black">Links</h5>
              
            
              
            
              
            

            <ul class="no-bullet shadow-black">
            
              
                <li >
                  <a href=""  title=""></a>
                </li>
            
              
                <li >
                  <a href="https://github.com/antoyo/relm" target="_blank"  title="">GitHub</a>
                </li>
            
              
                <li >
                  <a href="https://gitter.im/relm-rs/Lobby" target="_blank"  title="">Gitter</a>
                </li>
            
            </ul>
          </div><!-- /.large-3.columns -->
        </div><!-- /.row -->

      </div><!-- /#footer -->


      <div id="subfooter">
        <nav class="row">
          <section id="subfooter-left" class="small-12 medium-6 text-right columns credits">
              Contribute on GitHub
          </section>

          <section id="subfooter-right" class="small-12 medium-6 columns">
            <ul class="inline-list social-icons">
            
              <li><a href="http://github.com/antoyo/relm" class="icon-github" title="Relm"></a></li>
            
            </ul>

            <a href="https://www.patreon.com/antoyo"><img class="patreon" src="https://c5.patreon.com/external/logo/become_a_patron_button.png"/></a>
          </section>
        </nav>
      </div><!-- /#subfooter -->
    </footer>

                    ]]></xsl:text>
            </body>
        </html>
    </xsl:template>
    <xsl:template name="slugify">
        <xsl:param name="text" select="''" />
        <xsl:variable name="dodgyChars" select="' ,.#_-!?*:;=+|&amp;/\\'" />
        <xsl:variable name="replacementChar" select="'-----------------'" />
        <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
        <xsl:variable name="lowercased"><xsl:value-of select="translate( $text, $uppercase, $lowercase )" /></xsl:variable>
        <xsl:variable name="escaped"><xsl:value-of select="translate( $lowercased, $dodgyChars, $replacementChar )" /></xsl:variable>
        <xsl:value-of select="$escaped" />
    </xsl:template>
</xsl:stylesheet>
