<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>


<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.sql.SQLException" %>

<%@ page import="org.apache.log4j.Logger" %>
<%@ page import="org.dspace.app.webui.util.JSPManager" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>
<%@ page import="org.dspace.content.Community" %>
<%@ page import="org.dspace.core.Context" %>
<%@ page import="org.dspace.core.LogManager" %>

<%@ page import="org.dspace.core.ConfigurationManager" %>
<%@ page import="org.dspace.core.Constants" %>



<logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
	<font color="red">
		ERROR:  Application resources not loaded -- check servlet container logs
		for error messages.
	</font>
</logic:notPresent>




<%
    
    Context context = null;

    try
    {
        // Obtain a context so that the location bar can display log in status
        context = UIUtil.obtainContext(request);
        
        // Home page shows community list
        Community[] communities = Community.findAllTop(context);
        request.setAttribute("communities", communities);
        
        // Show home page JSP
        //JSPManager.showJSP(request, response, "/home.jsp");
    }
    catch (SQLException se)
    {
        // Database error occurred.
        Logger log = Logger.getLogger("org.dspace.jsp");
        log.warn(LogManager.getHeader(context,
            "database_error",
            se.toString()), se);

        // Also email an alert
        UIUtil.sendAlert(request, se);

        JSPManager.showInternalError(request, response);
    }
    finally {
      context.abort();
    }
    
    Community[] communities = (Community[]) request.getAttribute("communities");

    String topNews = ConfigurationManager.readNewsFile(Constants.NEWS_TOP);
    String sideNews = ConfigurationManager.readNewsFile(Constants.NEWS_SIDE);

%>




	<html:form action="Search">
		Please click the button:
		<html:submit/>
	</html:form>
	

                <H3>Communities in DSpace</H3>
                <P>Select a community to browse its collections.</P>
                <table border=0 cellpadding=2>
<%
    for (int i = 0; i < communities.length; i++)
    {
%>                  <tr>
                        <td class="standard">
                            <A HREF="<%= request.getContextPath() %>/handle/<%= communities[i].getHandle() %>"><%= communities[i].getMetadata("name") %></A>
<%
        if (ConfigurationManager.getBooleanProperty("webui.strengths.show"))
        {
%>
            [<%= communities[i].countItems() %>]
<%
        }

%>
                        </td>
                    </tr>
<%
    }
%>
                </table>
	
	
<c:forEach var="community" items="${communities}">
        <c:out value="${community.handle}<br />" escapeXml="false" />
</c:forEach>
	
<%= topNews %>

<%= sideNews %>

