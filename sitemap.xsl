<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:html="http://www.w3.org/TR/REC-html40" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" indent="yes" encoding="UTF-8"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <meta http-equiv="X-UA-Compatible"                    content="IE=edge,chrome=1"/>
      <meta http-equiv="Content-Type"                       content="text/html;charset=UTF-8"/>
      <meta name="fragment"                                 content="!"/>
      <meta name="robots"                                   content="archive,follow,imageindex,index,odp,snippet,translate"/>
      <meta name="viewport"                                 content="height=device-height,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no,width=device-width,minimal-ui"/>
      <meta name="revisit-after"                            content="1 days"/>
      <meta name="format-detection"                         content="telephone=no,date=no,address=no,email=no,url=no"/>
      <meta name="HandheldFriendly"                         content="True"/>
      <meta name="MSThemeCompatible"                        content="no"/>
      <meta name="apple-mobile-web-app-capable"             content="yes"/>
      <meta name="apple-mobile-web-app-status-bar-style"    content="translucent black"/>
      <meta name="msapplication-navbutton-color"            content="translucent black"/>
      <meta name="mssmarttagspreventparsing"                content="true"/>
      <meta name="theme-color"                              content="#b1cff4"/>
      <meta http-equiv="imagetoolbar"                       content="no"/>
      <meta http-equiv="cleartype"                          content="on"/>
      <meta http-equiv="Page-Enter"                         content="RevealTrans(Duration=1.0,Transition=1)"/>
      <meta http-equiv="Page-Exit"                          content="RevealTrans(Duration=1.0,Transition=1)"/>
      <meta name="description"                              content="sitemap.xml"/>
      <title>XML Sitemap</title>
      <style media="all" type="text/css">
      @charset "UTF-8";
      @namespace "http://www.w3.org/1999/xhtml";
      *{
        -webkit-font-smoothing:   none;
        text-rendering:           optimizeSpeed;
        font-feature-settings:    "kern" 0;
        font-kerning:             none !important;
        text-size-adjust:         100%;
        box-sizing:               border-box;
      }
      html{
        font:                     14pt 'Noto Mono', 'Roboto Mono', 'Courier New', monospace;
        background:               none transparent;
      }
      html,body{
        height:                   100%;
        width:                    100%;
        padding:                  0;
        margin:                   0;
      }
      [id="intro"]{
        background-color:         #CFEBF7;
        border:1px                #2580B2 solid;
        padding:                  5px 13px 5px 13px;
        margin:                   10px;
      }
      [id="intro"] p{
        line-height:              17px;
      }
      [id="intro"] strong{
        font-weight:              normal;
      }
      td{
        font-size:                11px;
      }
      th{
        text-align:               center;
        padding-right:            30px;
        font-size:                11px;
      }
      tr:nth-child(even){         background: none #FEE7AF; }
      tr:nth-child(odd){          background: none #EAD6F2; }

      tr[class="high"]{
        background-color:         whitesmoke;
      }
      [id="footer"]{
        padding:                  2px;
        margin-top:               10px;
        font-size:                8pt;
        color:                    gray;
      }
      [id="footer"] a{
        color:                    gray;
      }
      a{
        color:                    black;
      }
      </style>
    </head>
    <body>
      <xsl:apply-templates></xsl:apply-templates>
      <div id="footer">
        <p>Generated with <a rel="external nofollow" href="http://www.arnebrachhold.de/redir/sitemap-home/" title="Google (XML) Sitemap Generator Plugin for WordPress">Google (XML) Sitemaps Generator Plugin for WordPress</a> by <a rel="external nofollow" href="http://www.arnebrachhold.de/">Arne Brachhold</a>. This XSLT template is released under the GPL and free to use.</p>
        <p>If you have problems with your sitemap please visit the <a rel="external nofollow" href="http://www.arnebrachhold.de/redir/sitemap-x-faq/" title="Google (XML) sitemaps FAQ">plugin FAQ</a> or the <a rel="external nofollow" href="http://www.arnebrachhold.de/redir/sitemap-x-support/">support forum</a></p>
      </div>
    </body>
    </html>
</xsl:template>

<xsl:template match="sitemap:urlset">
  <h1>XML Sitemap</h1>
  <div id="intro">
    <p>This is a XML Sitemap which is supposed to be processed by search engines which follow the XML Sitemap standard like Ask.com, Bing, Google and Yahoo.</p>
    <p>It was generated using the Blogging-Software <a rel="external nofollow" href="http://wordpress.org/">WordPress</a> and the <strong><a rel="external nofollow" href="http://www.arnebrachhold.de/redir/sitemap-home/" title="Google (XML) Sitemaps Generator Plugin for WordPress">Google Sitemap Generator Plugin</a></strong> by <a rel="external nofollow" href="http://www.arnebrachhold.de/">Arne Brachhold</a>.</p>
    <p>You can find more information about XML sitemaps on <a rel="external nofollow" href="http://sitemaps.org">sitemaps.org</a> and Google's <a rel="external nofollow" href="http://code.google.com/p/sitemap-generators/wiki/SitemapGenerators">list of sitemap programs</a>.</p>
  </div>
  <div id="content">
    <xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'"/>
    <xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
    <table cellpadding="5">
      <tr style="border-bottom:1px black solid;"><th>URL</th><th>Priority</th><th>Change frequency</th><th>Last modified (GMT)</th></tr>
      <xsl:for-each select="./sitemap:url">
        <tr>
          <xsl:if test="position() mod 2 != 1"><xsl:attribute  name="class">high</xsl:attribute></xsl:if>
          <td><xsl:variable name="itemURL"><xsl:value-of select="sitemap:loc"/></xsl:variable><a href="{$itemURL}"><xsl:value-of select="sitemap:loc"/></a>                       </td>
          <td><xsl:value-of select="concat(sitemap:priority*100,'%')"/>                                                                                                           </td>
          <td><xsl:value-of select="concat(translate(substring(sitemap:changefreq, 1, 1),concat($lower, $upper),concat($upper, $lower)),substring(sitemap:changefreq, 2))"/>      </td>
          <td><xsl:value-of select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)))"/>                                                       </td>
        </tr>
      </xsl:for-each>
    </table>
  </div>
</xsl:template>

<xsl:template match="sitemap:sitemapindex">
  <h1>XML Sitemap Index</h1>
  <div id="intro">
    <p>This is a XML Sitemap which is supposed to be processed by search engines which follow the XML Sitemap standard like Ask.com, Bing, Google and Yahoo.</p>
    <p>It was generated using the Blogging-Software <a rel="external nofollow" href="http://wordpress.org/">WordPress</a> and the <strong><a rel="external nofollow" href="http://www.arnebrachhold.de/redir/sitemap-home/" title="Google (XML) Sitemaps Generator Plugin for WordPress">Google Sitemap Generator Plugin</a></strong> by <a rel="external nofollow" href="http://www.arnebrachhold.de/">Arne Brachhold</a>.</p>
    <p>You can find more information about XML sitemaps on <a rel="external nofollow" href="http://sitemaps.org">sitemaps.org</a> and Google's <a rel="external nofollow" href="http://code.google.com/p/sitemap-generators/wiki/SitemapGenerators">list of sitemap programs</a>.</p>
    <p>This file contains links to sub-sitemaps, follow them to see the actual sitemap content.</p>
  </div>
  <div id="content">
    <table cellpadding="5">
      <tr style="border-bottom:1px black solid;"><th>URL of sub-sitemap</th><th>Last modified (GMT)</th></tr>
      <xsl:for-each select="./sitemap:sitemap">
        <tr>
          <xsl:if test="position() mod 2 != 1"><xsl:attribute  name="class">high</xsl:attribute></xsl:if>
          <td><xsl:variable name="itemURL"><xsl:value-of select="sitemap:loc"/></xsl:variable><a href="{$itemURL}"><xsl:value-of select="sitemap:loc"/></a></td>
          <td><xsl:value-of select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)))"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </div>
</xsl:template>
</xsl:stylesheet>
