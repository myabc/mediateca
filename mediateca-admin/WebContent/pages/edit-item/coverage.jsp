<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:subview id="coverage">
	<h:outputText value="WELOCME"/>
	<h:panelGrid columns="2">
		<h:outputText value="dsagasd"/>
		<h:outputText value="sagdsgsa"/>
	</h:panelGrid>
	
					<h:panelGrid>
					<h:outputText value="#{dcTerms['element.description']}"/>

					<h:panelGroup>
						<h:outputText value="#{dcTerms['qualifier.tableOfContents']}"/>
					</h:panelGroup>
					<h:panelGroup>
						<h:outputText value="#{dcTerms['qualifier.abstract']}"/>
					</h:panelGroup>
				</h:panelGrid>
				<h:panelGrid>
					
					<h:outputText value="#{dcTerms['element.date']}"/>
					
					Created
					<h:inputText id="date_created" value="">
						<f:convertDateTime dateStyle="default"/>
					</h:inputText>
					<h:message for="date_created"/>
					Valid
					<h:inputText id="date_valid" value="">
						<f:convertDateTime dateStyle="default"/>
					</h:inputText>
					<h:message for="date_valid"/>
					
				</h:panelGrid>
				<h:panelGrid>
					<h:outputText value="#{dcTerms['element.relation']}"/>
					
					Is Version Of
					Has Version
					Is Replaced By
				</h:panelGrid>
				<h:panelGrid>
					<h:outputText value="#{dcTerms['element.coverage']}"/>
					
					<h:outputText value="#{dcTerms['qualifier.spatial']}"/>
					<h:outputText value="#{dcTerms['qualifier.temporal']}"/>
					
				</h:panelGrid>
				<h:panelGrid>
					Files (Bitstream)
				
				</h:panelGrid>
	
</f:subview>