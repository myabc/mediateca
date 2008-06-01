<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:subview id="description">
	<f:loadBundle basename="org.mediateca.admin.resources.DublinCoreTerms" var="dcTerms" />	

	
	<h:panelGrid columns="3">
		<!-- Abstract -->
		<h:outputText value="#{dcTerms['qualifier.abstract']}"/>
		
		<h:inputTextarea id="abstract" value="">
			
		</h:inputTextarea>
		<h:selectOneMenu id="abstract_language">
			<f:selectItems value="#{itemForm.languageItems}"/>
		</h:selectOneMenu>
		
		<!-- Table of Contents -->
		<h:outputText value="#{dcTerms['qualifier.tableOfContents']}"/>
		<h:inputTextarea id="tableOfContents" value="">
			
		</h:inputTextarea>
		<h:selectOneMenu id="tableOfContents_language">
			<f:selectItems value="#{itemForm.languageItems}"/>
		</h:selectOneMenu>
	</h:panelGrid>
</f:subview>