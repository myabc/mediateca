<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://myfaces.apache.org/extensions" prefix="x"%>

<f:subview id="date">
	<f:loadBundle basename="org.mediateca.admin.resources.DublinCoreTerms" var="dcTerms" />	
	
	  <x:inputCalendar monthYearRowClass="yearMonthHeader" weekRowClass="weekHeader"
                    currentDayCellClass="currentDayCell" 
                   
 
                    value="" />
                    
                    <!--  renderAsPopup="true" requires the JS files -->
	
	
	<h:outputText value="WELOCME"/>
	<h:panelGrid columns="2">
		<h:outputText value="dsagasd"/>
		<h:outputText value="sagdsgsa"/>
	</h:panelGrid>
</f:subview>