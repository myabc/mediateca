<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://myfaces.apache.org/extensions" prefix="x"%>





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



%>

<html>
	<head>
		<title>Communities</title>
	</head>
	<body>
		<f:view>


                <H3>Communities in DSpace</H3>
              
              
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
                        <td><button name="Edit">Edit</button></td>
                        <td><button name="Delete">Delete</button></td>
                    </tr>
<%
    }
%>
</table>
		
		</f:view>
	</body>	
</html>  
