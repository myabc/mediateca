<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/xkins.tld" prefix="xkins" %>

<!--
*                        ___       __                 
*    ____ ___  ___  ____/ (_)___ _/ /____  _________ _
*   / __ `__ \/ _ \/ __  / / __ `/ __/ _ \/ ___/ __ `/
*  / / / / / /  __/ /_/ / / /_/ / /_/  __/ /__/ /_/ / 
* /_/ /_/ /_/\___/\__,_/_/\__,_/\__/\___/\___/\__,_/  
*                                                     
*  MEDIATECA - Open Source Digital Asset Management
-->
<html:html xhtml="true">
<head>
	<title><bean:message key="common.title"/></title>
	<script language="JavaScript" type="text/javascript" src="app_jscsslib/defaultlib.js"></script>
	<xkins:template name="stylesheet"/>
</head>

<div><tiles:insert attribute="header" /></div>

<table width="100%" cellspacing="0" cellpadding="0" border="0"
	summary="Table used for page layout">
<tr valign="top">
	<td width="5" _bgcolor="leftareabackground"><img src="app_images/spacer.gif" width="5" height="1" border="0" alt=""></td>
	<td width="140" _bgcolor="leftareabackground"><img src="app_images/spacer.gif" width="140" height="1" border="0" alt=""><br /><br />
		<tiles:insert attribute="menu" />
	</td>
	<td width="5" _bgcolor="leftareabackground"><img src="app_images/spacer.gif" width="5" height="1" border="0" alt=""></td>
	<td width="1" _bgcolor="tabsbackground"><img src="app_images/spacer.gif" width="1" height="1" border="0" alt=""></td>
	<td width="9" _bgcolor="contentbackground"><img src="app_images/spacer.gif" width="9" height="1" border="0" alt=""></td>
	<td _bgcolor="contentbackground">
		<tiles:insert attribute="body" />
	</td> 
	<td width="10" _bgcolor="contentbackground"><img src="app_images/spacer.gif" width="10" height="1" border="0" alt=""></td>
</tr>
</table>

<div><tiles:insert attribute="footer" /></div>

</body>
</html:html>


	
