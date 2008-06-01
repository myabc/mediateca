<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<html:html xhtml="true" locale="true">
<head>
<title><bean:message key="welcome.title"/></title>
<html:base/>
</head>

<body>

<logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
  <font color="red">
    ERROR:  Application resources not loaded -- check servlet container
    logs for error messages.
  </font>
</logic:notPresent>


<h1>BROWSE</h1>

<h3><bean:message key="welcome.heading"/></h3>
<p><bean:message key="welcome.message"/></p>


  <table class="pageBanner" width="100%" border=0 cellpadding=0 cellspacing=0>

            
            <tr>
                <td>
                    <A HREF="/"><img src="/image/dspace-blue.gif" alt="DSpace" width=198 height=79 border=0></A></td>
                <td class="tagLine" width="99%" cellpadding=10> 
                    <A class="tagLineText" target=_blank href="http://libraries.mit.edu/dspace-mit/">About DSpace</A>
                </td>
                <td nowrap valign=middle>
                    &nbsp;&nbsp;&nbsp;<A HREF="http://libraries.mit.edu/"><img src="/image/dome-bluewhite-smaller.gif" border=0 alt="MIT Libraries"></A>&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr class="stripe"> 
                <td colspan=3>&nbsp;</td>
            </tr>
        </table>

        

        
        <table class="centralPane" width="100%" border=0 cellpadding=3 cellspacing=1>

            
            <tr valign=top>

            

            <td class="navigationBar">
                















<form method=GET action="/simple-search">

 
  <table width="100%" class="searchBox">
    <tr>
      <td>
        <table width="100%" border=0 cellspacing=0 padding=2>
          <tr>
            <td class="searchBoxLabel">Search&nbsp;DSpace:</td>
          </tr>
          <tr>
            <td class="searchBoxLabelSmall" valign=middle nowrap>
              <input type=text name=query size=10><input type=image border=0 src="/image/search-go.gif" name=submit alt="Go" value="Go">
              <br><a href="/advanced-search">Advanced Search</A>
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
  </table>
</form>


<table width="100%" border="0" cellspacing="2" cellpadding="2">

  <tr class="navigationBarItem">
    <td>
      <img alt="" src="/image/arrow-highlight.gif" width="16" height="16">
    </td>
    <td nowrap class="navigationBarItem">
      <a href="/">Home</a>
    </td>
  </tr>

  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>

  <tr>
    <td nowrap colspan="2" class="navigationBarSublabel">Browse</td>
  </tr>

  <tr class="navigationBarItem">
    <td>
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </td>
    <td nowrap class="navigationBarItem">
      <a href="/community-list">Communities<br />&amp;&nbsp;Collections</a>
    </td>
  </tr>

  <tr class="navigationBarItem">
    <td>
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </td>
    <td nowrap class="navigationBarItem">
      <a href="/browse-title">Titles</a>
    </td>
  </tr>

  <tr class="navigationBarItem">
    <td>
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </td>
    <td nowrap class="navigationBarItem">
      <a href="/browse-author">Authors</a>
    </td>
  </tr>

  <tr class="navigationBarItem">
    <td>
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </td>
    <td nowrap class="navigationBarItem">
      <a href="/browse-date">By Date</a>
    </td>
  </tr>

  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>

  <tr>
    <td nowrap colspan="2" class="navigationBarSublabel">Sign on to:</td>
  </tr>

  <tr class="navigationBarItem">
    <td>
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </td>
    <td nowrap class="navigationBarItem">
      <a href="/subscribe">Receive email<br>updates</a>
    </td>
  </tr>

  <tr class="navigationBarItem">
    <td>
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </td>
    <td nowrap class="navigationBarItem">
      <a href="/mydspace">My DSpace</a><br><small>authorized users</small>
    </td>
  </tr>

  <tr class="navigationBarItem">
    <td>
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </td>
    <td nowrap class="navigationBarItem">
      <a href="/profile">Edit Profile</a>
    </td>
  </tr>

  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>

  <tr class="navigationBarItem">
    <td>
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </td>
    <td nowrap class="navigationBarItem">
      <SCRIPT TYPE="text/javascript">
<!-- Javascript starts here
document.write('<A HREF="#" onClick="var popupwin = window.open(\'/help/index.html\',\'dspacepopup\',\'height=600,width=550,resizable,scrollbars\');popupwin.focus();return false;">Help<\/a>');
// -->
</SCRIPT><NOSCRIPT><A HREF="/help/index.html" TARGET="dspacepopup">Help</A></NOSCRIPT>
    </td>
  </tr>

  <tr class="navigationBarItem">
    <td>
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </td>
    <td nowrap class="navigationBarItem">
      <a href="http://libraries.mit.edu/dspace-mit/">About DSpace</a>
    </td>
  </tr>

</table>

            </td>

            

            
            
            
            <td class="pageContents" width="100%">

                

                





<P class="locationBar">
<html:link action="Welcome">Mediateca</html:link>
</P>



Browse by: 
<html:link action="Browse">Community</html:link> | 
<html:link action="Browse">Title</html:link> | 
<html:link action="Browse">Creator</html:link> | 
<html:link action="Browse">Date</html:link> | 
<html:link action="Browse">Subject</html:link>




















                    
                    <P>&nbsp;</P>
                </td>

            

                <td class="sidebar">
		
		
		</td>

            </tr>

            

             <tr class="pageFooterBar">
                <td colspan=3 class="pageFootnote">
                    <table class="pageFooterBar" width="100%">
                        <tr>
                            <td><A target=_blank HREF="http://www.hpl.hp.com/mit/"><img src="/image/hp-mit.gif" alt="invent @ MIT: The HP-MIT Alliance" border=0></A></td>
                            <td class="pageFootnote">
                                Copyright&nbsp;&copy;&nbsp;2005&nbsp Mondiale Digital -
                                <a target=_blank href="/feedback?fromPage=https%3A%2F%2Fdspace.mit.edu%2Findex.jsp">Feedback</a>
                            </td>
                            <td nowrap valign=middle> 
                                &nbsp;&nbsp;&nbsp;<A HREF="http://www.hp.com/"><img src="/image/hp.gif" border=0 alt="Hewlett Packard"></A>&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>



</body>
</html:html>
