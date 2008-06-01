<html>
   <%@ taglib uri="http://java.sun.com/jsf/core"  prefix="f" %>
   <%@ taglib uri="http://java.sun.com/jsf/html"  prefix="h" %>
   <f:view>
      <head>
         <f:loadBundle basename="org.mediateca.admin.messages" var="msgs"/>
         <title>
            <h:outputText value="#{msgs.windowTitle}"/>
         </title>
         <style type="text/css">
         .dataTableOddRow {
         	background-color:#ccddcc;
         }
         .dataTableEvenRow {
         	background-color:#eeeeee;
         }
         </style>
      </head>
      <body>
         <h:form>
            <h:dataTable id="epeopleTable" value="#{tableData.names}" var="name"
            	rowClasses="dataTableOddRow,dataTableEvenRow">
            	
            	<h:column>
            		<f:facet name="header">
            		
            		</f:facet>
            		<h:selectBooleanCheckbox value="#{name.editable}"
            			onclick="submit()"/>
            	</h:column>
            	
               <h:column>
                  <f:facet name="header">
                  	<h:commandLink action="">
                     <h:outputText value="#{msgs.lastnameColumn}" 
                        style="font-weight: bold"/>
                    </h:commandLink>
                  </f:facet>
                  <h:inputText value="#{name.last}"
                  	rendered="#{name.editable}" />
                  <h:outputText value="#{name.last}"
                  	rendered="#{not name.editable}" />
                  <f:facet name="footer">
                     <h:outputText value="#{msgs.alphanumeric}" 
                        style="font-size: .75em"/>
                  </f:facet>
               </h:column>
               <h:column>
                  <f:facet name="header">
                  		<h:commandLink action="">
                     <h:outputText value="#{msgs.firstnameColumn}" 
                        style="font-weight: bold"/>
                          </h:commandLink>
                  </f:facet>
                  <h:inputText value="#{name.first}"
                  	rendered="#{name.editable}" />
                  <h:outputText value="#{name.first}"
                  	rendered="#{not name.editable}" />
                  <f:facet name="footer">
                     <h:outputText value="#{msgs.alphanumeric}" 
                        style="font-size: .75em"/>
                  </f:facet>
               </h:column>
               <h:column>
               		<h:commandButton value="DELTE"
        />
               </h:column>
            </h:dataTable>
         </h:form>
      </body>
   </f:view>
</html>