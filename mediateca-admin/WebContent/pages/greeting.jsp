<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>


<HTML>
<HEAD> <title>Greeting Page</title> </HEAD>
	
<body bgcolor="white">
	<f:view>
		<f:loadBundle basename="demo.bundle.Messages" var="Message"/>
		<h3>
			<h:outputText value="#{Message.greeting_text}" />,
			<h:outputText value="#{nameBean.userName}" />!
		</h3>
	</f:view>
</body>	
</HTML>  
