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

DSpace at MIT&nbsp;&gt;

</P>





















    <table class="miscTable" width="95%" align="center">
        <tr>
            <td class="oddRowEvenCol"><H3>Welcome to MIT's digital repository!</h3><P></p><P><strong>Individual MIT faculty & researchers, <A HREF="http://libraries.mit.edu/dspace-mit/contact/mit-communities.html">create</a> your own collections in  DSpace. </strong></p><P><A HREF="http://dspace.org/news/dspace-news.html">More news...</a></p></td>
        </tr>
    </table>
  
    <br>

    <form action="/simple-search" method=GET>
        <table class="miscTable" width="95%" align="center">
            <tr>
                <td class="oddRowEvenCol">
                    <H3>Search</H3>
                      <P>Enter some text in the box below to search DSpace.</P>
                      <P><input type=text name=query size=20>&nbsp;<input type=submit name=submit value="Go"></P>
                </td>
            </tr>
        </table>
    </form>

    <table class="miscTable" width="95%" align="center">
        <tr>
            <td class="oddRowEvenCol">
                <H3>Communities in DSpace</H3>
                <P>Select a community to browse its collections.</P>
                <table border=0 cellpadding=2>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7752">Biological Engineering Division</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/3549">Center for Global Change Science</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/3764">Center for Innovation in Product Development (CIPD)</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7530">Center for International Studies (CIS)</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/16165">Center for Reflective Community Practice (CRCP)</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/1773">Center for Technology, Policy, and Industrial Development (CTPID)</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/5458">Computer Science and Artificial Intelligence Lab (CSAIL)</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7758">Department of Aeronautics and Astronautics</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7749">Department of Architecture</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7761">Department of Biology</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7776">Department of Brain and Cognitive Sciences</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7786">Department of Chemical Engineering</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7792">Department of Chemistry</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7797">Department of Civil and Environmental Engineering</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7803">Department of Earth, Atmospheric, and Planetary Sciences</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7808">Department of Economics</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7813">Department of Electrical Engineering and Computer Sciences</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7819">Department of Humanities</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7824">Department of Interdisciplinary Science</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7829">Department of Linguistics and Philosophy</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7835">Department of Materials Science and Engineering</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7841">Department of Mathematics</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7846">Department of Mechanical Engineering</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7852">Department of Nuclear Engineering</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/1774">Department of Ocean Engineering</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7864">Department of Physics</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/5427">Department of Political Science</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7873">Department of Urban Studies and Planning</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7883">Engineering Systems Division</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7507">Faculty and Researchers</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7889">Harvard-MIT Division of Health Sciences and Technology</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/6749">Hatsopoulos Microfluids Laboratory (HML)</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7932">History</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/1775">Laboratory for Information and Decision Systems (LIDS)</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7896">Media Arts & Sciences</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7581">MIT Libraries</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/1776">MIT Press</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7294">MIT Workplace Center</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7351">Nonlinear Systems Laboratory (NSL)</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/5066">Operations Research Center</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/4058">Research Laboratory for Electronics (RLE)</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7911">Science, Technology & Society</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/3649">Singapore-MIT Alliance (SMA)</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/1777">Sloan School of Management</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7920">Systems Design & Management</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/7925">Technology and Policy Program</A>
                        </td>
                    </tr>
                  <tr>
                        <td class="standard">
                            <A HREF="/handle/1721.1/5549">Warren M. Rohsenow Heat and Mass Transfer Laboratory</A>
                        </td>
                    </tr>

                </table>
            </td>
        </tr>
    </table>

  








                    
                    <P>&nbsp;</P>
                </td>

            

                <td class="sidebar">
                    <H2>What&nbsp;can&nbsp;you find&nbsp;in&nbsp;DSpace?</h2><P><strong>MIT</strong> Research in digital form, including preprints, technical reports, working papers, conference papers, images, and more.</P><br><H2>Is this all of MIT's&nbsp;research?</H2><P>No. DSpace is limited to digital research products. For items in print, go to <A HREF="http://libraries.mit.edu/barton">Barton: MIT Libraries' catalog</a>. DSpace is young and growing rapidly. Check back often.</P>
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
