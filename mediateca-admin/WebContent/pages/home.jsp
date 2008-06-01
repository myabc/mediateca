<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://myfaces.apache.org/extensions" prefix="x"%>
<%@ taglib uri="/WEB-INF/xpshell.tld" prefix="xp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<f:view>
		<f:loadBundle basename="org.mediateca.admin.resources.MessagesDefault" var="msg" />
		<head>
			<title><h:outputText value="#{msg['home.pageTitle']}"/></title>
			
			<f:verbatim>
				<style type="text/css">
				@import url(/mediateca-admin/pages/app_jscsslib/xpshell.css);
				</style>
					
				<script src="/mediateca-admin/pages/app_jscsslib/defaultlib.js"></script>
				<script src="/mediateca-admin/pages/app_jscsslib/xpshell.js"></script>

			</f:verbatim>
			
		</head>
		<body>
			
			<h:form>
			<xp:xpShell
				id="home" 
				title="#{msg['home.pageTitle']}"
				mainTaskBoxName="System Tasks"
				otherPlaces="Control Panel, Bug Rat"
				initDetails="You are logged in as 
							Your highest access level is <br /><strong>#uCase(variables.highestAccessLevel)#</strong>">
				
				<f:facet name="tasks">
				
				</f:facet>
				
				<f:facet  name="body">
				<f:subview id="body">
				
				<f:selectItem id="crap" value="/pages/edit-item/general.jsp" itemValue="/pages/edit-item/general.jsp"/>
				
				<f:verbatim>
				<div class="welcomeHeaderContainer">
					<h2 class="welcomeHeader"><h:outputText value="#{msg['home.welcomeText']}"/>Welcome, #variables.currentUserName#</h2>
				</div>
				
				<h2>Mediateca <h:outputText value="#{msg['home.atAGlance']}"/></h2>
	
				<h3 class="folderGroupHeader">Files</h3>
				

				
				<div class="folderGroupContainer">
				<!---
				<a href="javascript:dlsSystem.launchPage('https://intra.builder.fws.gov/sii.fws.gov/dls/files/<Cfoutput>#variables.currentUserName#</CFOUTPUT>','','webfolder')"><img src="app_images/xtree/xp/folder.png" border="0" /> My Unregistered Files</a> (As WebFolder)<br />
				--->
				<a href="xpshell/files.cfm?folderName=myUnregisteredFiles"><img src="app_images/xtree/xp/folder.png" border="0" /> My Unregistered files</a><br />
				<a href="xpshell/files.cfm"><img src="app_images/xtree/xp/folder.png" border="0" /> My Files</a><BR>
				<a href="xpshell/files.cfm?folderName=systemFiles"><img src="app_images/xtree/xp/folder.png" border="0" /> System Files</a>
				</div>
				
				<h3 class="folderGroupHeader">My Records</h3>
				
				<div class="folderGroupContainer">
				<a href="xpshell/records.cfm?folderName=myStagedRecords"><img src="app_images/xtree/xp/folder.png" border="0" /> My Staged Records</a><BR>
				<a href="xpshell/records.cfm?folderName=myPublishedRecords"><img src="app_images/xtree/xp/folder.png" border="0" /> My Published Records</a><BR>
				<a href="xpshell/records.cfm?folderName=myRecycleBin"><img src="app_images/xtree/xp/folder.png" border="0" /> My Recycle Bin</a>
				</div>
				
				<h3 class="folderGroupHeader">Library Records</h3>
				
				<div class="folderGroupContainer">
				<cfoutput query="getLibraries">
				<a href="folders.cfm?folderName=&library_id=#library_id#"><img src="app_images/xtree/xp/folder.png" border="0" /> #libraryName# (#countValue# records)</a><br />
				</cfoutput>
				</div>
				
				<cfif variables.isSystemAdmin>
				
				<h3 class="folderGroupHeader">System Records</h3>
				
				<div class="folderGroupContainer">
				<a href="xpshell/records.cfm?folderName=systemStagedRecords"><img src="app_images/xtree/xp/folder.png" border="0" /> System Staged Records</a><BR>
				<a href="xpshell/records.cfm?folderName=systemPublishedRecords"><img src="app_images/xtree/xp/folder.png" border="0" /> System Published Records</a><BR>
				<a href="xpshell/records.cfm?folderName=systemRecycleBin"><img src="app_images/xtree/xp/folder.png" border="0" /> System Recycle Bin</a><BR>
				</div>
				
				
				
				</cfif>
				</f:verbatim>
				</f:subview>
				</f:facet>
		
			</xp:xpShell>
			</h:form>
			
		</f:view>
	</body>	
</html>  
