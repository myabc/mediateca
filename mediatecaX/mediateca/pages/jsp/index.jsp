<%@ taglib url="/tags/struts-logic" prefix="logic" %>
<logic:redirect forward="home"/>

<%--

Redirect default requests to the Welcome global ActionForward.
By using a redirect, the user-agent will change address to match the path of our Welcome ActionForward.

--%>