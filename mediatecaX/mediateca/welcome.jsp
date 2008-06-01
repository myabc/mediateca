<%@ taglib uri="http://java.sun.com/jsf/core"  prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-tiles" prefix="tiles" %>


<f:view>
<f:loadBundle basename="org.mediateca.resources.messages" var="msgs"/>

<f:verbatim>
                        <![CDATA[<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
                        "http://www.w3c.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">]]>
</f:verbatim>

<html xmlns="http://www.w3.org/1999/xhtml">  

<head>
<title><h:outputText value="#{msgs.introTitle}"/></title>
<link rel="stylesheet"
      href="./css/styles.css"
      type="text/css">
</head>

<body>

<f:subview id="welcome">
   <h:form>
      <tiles:insert definition="welcome" flush="false"/>
   </h:form>
</f:subview>

</body>
</html>
</f:view>
