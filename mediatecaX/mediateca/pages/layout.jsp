<%@ taglib uri="http://java.sun.com/jsf/core"  prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-tiles" prefix="tiles" %>


	<table width="100%">
	
	<tr><td colspan="2">
	
	<f:subview id="header">
	<tiles:insert attribute="header"/>
	</f:subview>
	
	</td></tr>
	
	<tr><td>
	
	<f:subview id="menu">
	<tiles:insert attribute="menu"/>
	</f:subview>
	
	</td>
	<td>
	
	<f:subview id="body">
	<tiles:insert attribute="body"/>
	</f:subview>
	
	</td></tr>
	
	<tr><td colspan="2">
	
	<f:subview id="footer">
	<tiles:insert attribute="footer"/>
	</f:subview>
	
	</td></tr>
	
	</table>

