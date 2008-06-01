<!-- These pages don't use tiles, in case its tiles that's causing the problems -->

<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<html:html locale="true">

<head>
<title>Error page</title>
</head>

<body>

<h2>Oops an error had occured..</h2>
// this will retrieve the error message from the properties file
<bean:message key="error.input"/>
<br/><br/>
Go <a href="javascript:history.back()">back</a> to correct the problem
</body>
</html:html>