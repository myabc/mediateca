<%--
 Mediateca: Open Source Digital Asset Management
 
 U.S. Fish & Wildlife Serivce, 2005. All Rights Reserved.
 Portions Copyright (C) 2005, Mondiale Digital.

 This library is free software; you can redistribute it and/or modify it under the terms 
 of the GNU Lesser General Public License as published by the Free Software Foundation; 
 either version 2.1 of the License, or (at your option) any later version.

 This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
 without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
 See the GNU Lesser General Public License for more details.

 You should have received a copy of the GNU Lesser General Public License along with this library; 
 if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA 

 --%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://myfaces.apache.org/extensions" prefix="x"%>


<html>
	<head>
		<title>Groups</title>
	</head>
	<body>
		<f:view>
			<h:form>
			
			<p>Note that you do not need to manually add users to the "anonymous" group - all users are members implicitly.</p>
			<p>Warning - if you try to delete a group that is referred to by an authorization policy or is a workflow group
			you will get an internal server error.</p>
				
	
				<x:dataTable 
					value="#{groups.all}" 
					var="groupBean"
					preserveDataModel="true"
                    rows="5">
                    
					<h:column>
						<f:facet name="header">
                        </f:facet>
						<h:outputText value="#{groupBean.id}"/>
					</h:column>
					<h:column>
						<f:facet name="header">
						Group Name:
                       	</f:facet>
						<h:outputText value="#{groupBean.name}"/>
					</h:column>
					
				</x:dataTable>
					
					 <h:panelGrid columns="1" styleClass="scrollerTable2" columnClasses="standardTable_ColumnCentered" >
                    <x:dataScroller id="scroll_1"
                            for="data"
                            fastStep="10"
                            pageCountVar="pageCount"
                            pageIndexVar="pageIndex"
                            styleClass="scroller"
                            paginator="true"
                            paginatorMaxPages="9"
                            paginatorTableClass="paginator"
                            paginatorActiveColumnStyle="font-weight:bold;"
                            >
                        <f:facet name="first" >
                            <h:graphicImage url="images/arrow-first.gif" border="1" />
                        </f:facet>
                        <f:facet name="last">
                            <h:graphicImage url="images/arrow-last.gif" border="1" />
                        </f:facet>
                        <f:facet name="previous">
                            <h:graphicImage url="images/arrow-previous.gif" border="1" />
                        </f:facet>
                        <f:facet name="next">
                            <h:graphicImage url="images/arrow-next.gif" border="1" />
                        </f:facet>
                        <f:facet name="fastforward">
                            <h:graphicImage url="images/arrow-ff.gif" border="1" />
                        </f:facet>
                        <f:facet name="fastrewind">
                            <h:graphicImage url="images/arrow-fr.gif" border="1" />
                        </f:facet>
                    </x:dataScroller>
                    <x:dataScroller id="scroll_2"
                            for="data"
                            pageCountVar="pageCount"
                            pageIndexVar="pageIndex"
                            >
                        <h:outputFormat value="#{example_messages['dataScroller_pages']}" styleClass="standard" >
                            <f:param value="#{pageIndex}" />
                            <f:param value="#{pageCount}" />
                        </h:outputFormat>
                    </x:dataScroller>
					
					
			
				
				
			</h:form>
		</f:view>
	</body>	
</html>  
