<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<html:html xhtml="true">
<head>
<title>Mediateca</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>

<body>
<div><tiles:insert attribute="header" /></div>
<table width="100%" border="1">
  <tr>
    <td><tiles:insert attribute="menu" /></td>
    <td><tiles:insert attribute="body" /></td>
  </tr>
  <tr>
    <td colspan="2"><tiles:insert attribute="footer" /></td>
  </tr>
</table>
</body>
</html:html>