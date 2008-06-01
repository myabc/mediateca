<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<f:loadBundle basename="org.mediateca.admin.resources.MessagesDefault" var="msg" />

<html>
	<head>
		<title>Edit EPerson</title>
	</head>
	<body>
		<f:view>
			
			<h:form name="editEPerson">

				<h:outputText value="#{msg['ePerson.email']}"/>
				<h:inputText id="email" value="#{ePersonForm.email}"/>
				
				<h:outputText value="#{msg['ePerson.lastName']}"/>
				<h:inputText id="lastName" value="#{ePersonForm.lastName}"/>
				
				<h:outputText value="#{msg['ePerson.firstName']}"/>	
				<h:inputText id="firstName" value="#{ePersonForm.firstName}"/>
				
				<h:outputText value="#{msg['ePerson.phone']}"/>	
				<h:inputText id="phone" value="#{ePersonForm.phone}"/>
				
					
				<h:outputText value="#{msg['ePerson.canLogIn']}"/>
				<h:outputText value="#{msg['ePerson.requireCertificate']}"/>
			


				
				<h:commandButton value="Reload" action="#{ePersonForm.load}"/>
				<h:commandButton value="Save" action="save"/>
				<h:commandButton value="Cancel" action="cancel"/>
			</h:form>
			
			
		</f:view>
	</body>	
</html>  
