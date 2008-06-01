<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>


<html:form action="Search">

  <table width="100%" class="searchBox">
    <tr>
      <td>
        <table width="100%" border=0 cellspacing=0 padding=2>
          <tr>
            <td class="searchBoxLabel"><font size="2" face="Arial, Helvetica, sans-serif">Search&nbsp;DSpace:</font></td>
          </tr>
          <tr>
            <td class="searchBoxLabelSmall" valign=middle nowrap><font size="2" face="Arial, Helvetica, sans-serif">
              <input type=text name=query size=10>
      
              <br>

              
              <html:submit value="Search" />
		<br />
              <html:link action="advanced-search">Advanced Search</html:link>
              
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
  </table>

</html:form>



<table width="100%" border="0" cellspacing="2" cellpadding="2">

  <tr class="navigationBarItem">
    <td><font size="2" face="Arial, Helvetica, sans-serif">
      <img alt="" src="/image/arrow-highlight.gif" width="16" height="16">
    </font></td>
    <td nowrap class="navigationBarItem"><font size="2" face="Arial, Helvetica, sans-serif">

	<html:link action="home">Home</html:link>

      
    </font></td>
  </tr>

  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>

  <tr>
    <td nowrap colspan="2" class="navigationBarSublabel"><font size="2" face="Arial, Helvetica, sans-serif">Browse</font></td>
  </tr>

  <tr class="navigationBarItem">
    <td><font size="2" face="Arial, Helvetica, sans-serif">
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </font></td>
    <td nowrap class="navigationBarItem"><font size="2" face="Arial, Helvetica, sans-serif">
      <a href="/community-list">Communities<br />
&amp;&nbsp; Collections</a>
    </font></td>
  </tr>

  <tr class="navigationBarItem">
    <td><font size="2" face="Arial, Helvetica, sans-serif">
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </font></td>
    <td nowrap class="navigationBarItem"><font size="2" face="Arial, Helvetica, sans-serif">

<html:link action="browse/title">Titles</html:link>     


    </font></td>
	
    <tr>
	<td>
	<html:link action="browse/subject">Subject</html:link>
	</td>
    </tr>


  </tr>

  <tr class="navigationBarItem">
    <td><font size="2" face="Arial, Helvetica, sans-serif">
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </font></td>
    <td nowrap class="navigationBarItem"><font size="2" face="Arial, Helvetica, sans-serif">

<html:link action="browse/contributor">Contributor</html:link>

<!-- TODO: Creator needs to be added here -->

    </font></td>
  </tr>

  <tr class="navigationBarItem">
    <td><font size="2" face="Arial, Helvetica, sans-serif">
      <img alt="" src="/image/arrow.gif" width="16" height="16">
    </font></td>
    <td nowrap class="navigationBarItem"><font size="2" face="Arial, Helvetica, sans-serif">

<html:link action="browse/date">By Date</html:link>

    </font></td>
  </tr>

</table>

<br /><br />

Language:

<html:form action="/ChangeLocale">
    <html:select property="language">
        <html:option value="en">English</html:option>
        <html:option value="fr">French</html:option>
        <html:option value="ru">Russian</html:option>
    </html:select>
    <html:hidden property="page" value="/do/home"/>
    <html:submit value="go"/>
</html:form>

Skin:

<html:form action="/ChangeSkin">
	<html:select property="skin">
		<html:option value="base">Default</html:option>
		<html:option value="alaska">Alaska</html:option>
		<html:option value="historic">Historic</html:option>
	</html:select>
	<html:hidden property="page" value="/do/home"/>
	<html:submit value="go"/>
</html:form>

