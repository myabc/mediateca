<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:subview id="general">
	<f:loadBundle basename="org.mediateca.admin.resources.DublinCoreTerms" var="dcTerms" />	

	<h:panelGrid>
		<!-- Primary -->
					
		<h:panelGroup>
			<h:outputText value="#{dcTerms['element.title']}"/>
			<f:verbatim>: </f:verbatim>
			<h:inputText id="title" value="#{itemForm.title}">
				<f:validateLength minimum="10" maximum="100"/>
			</h:inputText>
			<h:message for="title"/>
			<h:selectOneMenu id="title_language">
				<f:selectItems value="#{itemForm.languageItems}"/>
			</h:selectOneMenu>
		</h:panelGroup>

								
		<h:panelGroup>
			<h:outputText value="#{dcTerms['qualifier.alternative']}"/>
			<h:inputText id="title_alternative" value=""/>
			<h:message for="title_alternative"/>
			<h:selectOneMenu id="title_alternative_language">
				<f:selectItems value="#{itemForm.languageItems}"/>
			</h:selectOneMenu>
		</h:panelGroup>
					
		<h:panelGroup>
						<h:outputText value="#{dcTerms['element.creator']}"/>
						<f:verbatim>: </f:verbatim>
						<h:inputText id="creator" value=""/>
						<h:message for="creator"/>
						<h:selectOneMenu id="creator_language">
							<f:selectItems value="#{itemForm.languageItems}"/>
						</h:selectOneMenu>
					</h:panelGroup>
					
					<h:panelGroup>
						<h:outputText value="#{dcTerms['element.publisher']}"/>
						<f:verbatim>: </f:verbatim>
						<h:inputText id="publisher" value=""/>
						<h:message for="publisher"/>
						<h:selectOneMenu id="publisher_language">
							<f:selectItems value="#{itemForm.languageItems}"/>
						</h:selectOneMenu>
					</h:panelGroup>
					
					<h:panelGroup>
						<h:outputText value="#{dcTerms['element.contributor']}"/>
						<f:verbatim>: </f:verbatim>
						<h:inputText id="contributor" value=""/>
						<h:message for="contributor"/>
						<h:selectOneMenu id="contributor_language">
							<f:selectItems value="#{itemForm.languageItems}"/>
						</h:selectOneMenu>
					</h:panelGroup>
					
					<h:panelGroup>
						<h:outputText value="#{dcTerms['element.language']}"/>
						<f:verbatim>: </f:verbatim>
						<h:selectOneListbox id="language" size="5" onchange="changeMainLanguage()">
							<f:selectItems value="#{itemForm.languageItems}"/>
						</h:selectOneListbox>
					</h:panelGroup>
					
				
					
					
					<h:panelGroup>
					Collectionsadsa
					</h:panelGroup>
				
					<h:panelGroup>
						<h:outputText value="#{dcTerms['element.source']}"/>
					</h:panelGroup>
					
					<h:panelGroup>
						
					</h:panelGroup>
					
					<h:panelGroup>
						<h:outputText value="#{dcTerms['element.rights']}"/>
					</h:panelGroup>
					
					<h:panelGroup>
						<h:outputText value="#{dcTerms['element.subject']}"/>
					</h:panelGroup>
					
				</h:panelGrid>
	
</f:subview>