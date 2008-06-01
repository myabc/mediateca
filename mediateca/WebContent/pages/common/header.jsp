<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/xkins.tld" prefix="xkins" %>
<f:loadBundle basename="org.mediateca.resources.ApplicationResources" var="msg" />

<noscript>
<h1>The Digital Library System software Requires JavaScript</h1>
<p>Please upgrade your browser or enable JavaScript before proceeding.</p>
<hr />
</noscript>


<!-- Additional Styles For DLS Front Page -->
<style type="text/css">


a.portalLink:link,a.portalLink:active,a.portalLink:visited
 {font-size:15px;
 font-family:Arial,Helvetica,sans-serif;
 font-weight:bold;
 color:#003399;
 text-decoration:none;}
 
a.portalLink:hover
 {font-size:15px;
 font-family:Arial,Helvetica,sans-serif;
 font-weight:bold;
 color:#ffffff;
 background-color:#003399;
 text-decoration:none;}

.portalDesc
{margin:5px;
font-size:11px;
font-family:Verdana,sans-serif
}
 
a.collectionLink:link,a.collectionLink:active,a.collectionLink:visited
 {font-size:13px;
 font-family:Arial,Helvetica,sans-serif;
 font-weight:bold;
 color:#66CC00;
 text-decoration:none;}

a.collectionLink:hover
 {font-size:13px;
 font-family:Arial,Helvetica,sans-serif;
 font-weight:bold;
 color:#ffffff;
 background-color:#66CC00;
 text-decoration:none;}
 

</style>

<xkins:template name="globalHeader"/>

<table width="100%" border="0" cellpadding="2" cellspacing="0">
	<tr valign="top">
		<td class="tabs"><img src="<html:rewrite page='/app_images/spacer.gif'/>" width="150" height="1" alt="" /></td>
		<td class="tabs" nowrap="nowrap">
		<html:link action="home">
			<bean:message key="common.tabs.home" />
		</html:link></td>
		<td class="tabs"><img src="<html:rewrite page='/app_images/spacer.gif'/>" width="10" height="1" alt="" /></td>
		<td class="tabs" nowrap="nowrap">
		<html:link action="browse" title="">
			<bean:message key="common.tabs.browse"/>
		</html:link></td>
		<td class="tabs"><img src="<html:rewrite page='/app_images/spacer.gif'/>" width="10" height="1" alt="" /></td>
		<td class="tabs" nowrap="nowrap">
		<html:link action="advanced-search" title="">
			<bean:message key="common.tabs.advancedSearch"/>
		</html:link></td>
		<td class="tabs" width="100%">&nbsp;</td>
		<td class="tabs" nowrap="nowrap">
		<html:link action="help" title="">
			<bean:message key="common.tabs.help"/>
		</html:link></td>
		<td class="tabs"><img src="<html:rewrite page='/app_images/spacer.gif'/>" width="10" height="1" alt="" /></td>
	</tr>
</table>

