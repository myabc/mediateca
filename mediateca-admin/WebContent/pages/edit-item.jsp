<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="/WEB-INF/tabbedpane.tld" prefix="m" %>


<html>

		<f:view locale="#{facesContext.externalContext.request.locale}">
			
				<head>
		
		<title>EDIT ITEMS</title>
	
	
	

			
			<f:verbatim>
		<script>
		function changeItemLanguage() {
			confirm("Do you want to change the rest of the languages");
		}
		</script>
		<style type="text/css">
	.saveBtn {
		position:absolute;
		left:418px;top:438px;
		width:75px;height:24px;
		padding:0px;
		font-family:Tahoma,Verdana,Arial,sans-serif;font-size:8pt;
	}
	.cancelBtn {
		position:absolute;
		left:336px;top:438px;
		width:75px;height:24px;
		padding:0px;
		font-family:Tahoma,Verdana,Arial,sans-serif;font-size:8pt;
	}
		</style>
		
			<style type="text/css" media="screen">
			@import "app_jscsslib/defaultstyles.css";
			@import "app_jscsslib/application.css";

			</style>
			
		<link rel="stylesheet" href="app_jscsslib/tabs.css" type="text/css" />
	</f:verbatim>
			
			
			</head>
	
	<body>
			<f:loadBundle basename="org.mediateca.admin.resources.DublinCoreTerms" var="dcTerms" />	
			<h:form id="editItem">

				<div style="position:absolute;top:0px;left:0px;height:200px;scroll:auto">
				<m:tabbedPane id="cool" rendered="true">
					<f:selectItems value="#{itemForm.tabs}"/>
				</m:tabbedPane>
				</div>

			
				<h:commandButton id="saveBtn" value="Save" action="" styleClass="saveBtn"/>
				<h:commandButton id="cancelBtn" value="Cancel" action="cancel" styleClass="cancelBtn"/>
				
			</h:form>
			
		</f:view>
	</body>	
</html>  
