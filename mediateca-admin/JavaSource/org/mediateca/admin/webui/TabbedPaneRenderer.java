/*
 * Created on Jun 23, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mediateca.admin.webui;

import javax.faces.render.Renderer;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.component.UIComponent;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.context.ResponseWriter;
import javax.faces.event.ActionEvent;
import javax.faces.model.SelectItem;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * @author alexandercoles
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
// Renderer for the UITabbedPane component

public class TabbedPaneRenderer extends Renderer {
   private static Logger logger = Logger.getLogger("org.mediateca.utils");

   // By default, getRendersChildren() returns false, so encodeChildren()
   // won't be invoked unless we override getRendersChildren() to return true

   public boolean getRendersChildren() {
      return true;
   }

   // The decode method gets the value of the request parameter whose name
   // is the client Id of the tabbedpane component. The request parameter 
   // is encoded as a hidden field by encodeHiddenField, which is called by 
   // encodeEnd. The value for the parameter is set by JavaScript generated 
   // by the encodeTab method. It is the name of a facet or a JSP page.

   // The decode method uses the request parameter value to set the
   // tabbedpane component's content attribute.
   // Finally, decode() queues an action event that's fired to registered
   // listeners in the Invoke Application phase of the JSF lifecycle. Action
   // listeners can be specified with the <corejsf:tabbedpane>'s actionListener
   // attribute or with <f:actionListener> tags in the body of the
   // <corejsf:tabbedpane> tag.

   public void decode(FacesContext context, UIComponent component) {
      Map requestParams = context.getExternalContext().getRequestParameterMap();
      String clientId = component.getClientId(context);

      String content = (String) (requestParams.get(clientId));
      if (content != null && !content.equals("")) {
         UITabbedPane tabbedPane = (UITabbedPane) component;
         tabbedPane.setContent(content);
      }
      
      component.queueEvent(new ActionEvent(component));
   }

   // The encodeBegin method writes the starting <table> HTML element
   // with the CSS class specified by the <corejsf:tabbedpane>'s styleClass
   // attribute (if supplied)

   public void encodeBegin(FacesContext context, UIComponent component)
         throws java.io.IOException {
      ResponseWriter writer = context.getResponseWriter();
      writer.startElement("table", component);

      String styleClass = (String) component.getAttributes().get("styleClass");
      if (styleClass != null)
         writer.writeAttribute("class", styleClass, null);

      writer.write("\n"); // to make generated HTML easier to read
   }

   // encodeChildren() is invoked by the JSF implementation after encodeBegin().
   // The children of the <corejsf:tabbedpane> component are UISelectItem
   // components, set with one or more <f:selectItem> tags or a single
   // <f:selectItems> tag in the body of <corejsf:tabbedpane>

   public void encodeChildren(FacesContext context, UIComponent component)
         throws java.io.IOException {
      // if the tabbedpane component has no children, this method is still
      // called
      if (component.getChildCount() == 0) {
         return;
      }

      ResponseWriter writer = context.getResponseWriter();
      writer.startElement("thead", component);
      writer.startElement("tr", component);
      writer.startElement("th", component);

      writer.startElement("table", component);
      writer.startElement("tbody", component);
      writer.startElement("tr", component);

      List items = org.mediateca.admin.util.Renderers.getSelectItems(component);
      Iterator it = items.iterator();
      while (it.hasNext())
         encodeTab(context, writer, (SelectItem) it.next(), component);

      writer.endElement("tr");
      writer.endElement("tbody");
      writer.endElement("table");

      writer.endElement("th");
      writer.endElement("tr");
      writer.endElement("thead");
      writer.write("\n"); // to make generated HTML easier to read
   }

   // encodeEnd() is invoked by the JSF implementation after encodeChildren().
   // encodeEnd() writes the table body and encodes the tabbedpane's content
   // in a single table row.

   // The content for the tabbed pane can be specified as either a URL for
   // a JSP page or a facet name, so encodeEnd() checks to see if it's a facet;
   // if so, it encodes it; if not, it includes the JSP page

   public void encodeEnd(FacesContext context, UIComponent component)
         throws java.io.IOException {
      ResponseWriter writer = context.getResponseWriter();
      UITabbedPane tabbedPane = (UITabbedPane) component;
      String content = tabbedPane.getContent();

      writer.startElement("tbody", component);
      writer.startElement("tr", component);
      writer.startElement("td", component);
      writer.startElement("div", component);

      if (content != null) {
         UIComponent facet = component.getFacet(content);
         if (facet != null) {
            if (facet.isRendered()) {
               facet.encodeBegin(context);
               if (facet.getRendersChildren())
                  facet.encodeChildren(context);
               facet.encodeEnd(context);
            }
         } else
            includePage(context, component);
      }

      writer.endElement("div");
      writer.endElement("td");
      writer.endElement("tr");
      writer.endElement("tbody");

      // Close off the column, row, and table elements
      writer.endElement("table");

      encodeHiddenField(context, writer, component);
   }

   // The encodeHiddenField method is called at the end of encodeEnd().
   // See the decode method for an explanation of the field and its value.

   private void encodeHiddenField(FacesContext context, ResponseWriter writer,
         UIComponent component) throws java.io.IOException {
      // write hidden field whose name is the tabbedpane's client Id
      writer.startElement("input", component);
      writer.writeAttribute("type", "hidden", null);
      writer.writeAttribute("name", component.getClientId(context), null);
      writer.endElement("input");
   }

   // encodeTab, which is called by encodeChildren, encodes an HTML anchor
   // element with an onclick attribute which sets the value of the hidden
   // field encoded by encodeHiddenField and submits the tabbedpane's enclosing
   // form. See the decode method for more information about the hidden field.
   // encodeTab also writes out a class attribute for each tab corresponding
   // to either the tabClass attribute (for unselected tabs) or the
   // selectedTabClass attribute (for the selected tab).

   private void encodeTab(FacesContext context, ResponseWriter writer,
         SelectItem item, UIComponent component) throws java.io.IOException {
      String tabText = getLocalizedTabText(component, item.getLabel());
      String content = (String) item.getValue();

      writer.startElement("td", component);
      writer.startElement("a", component);
      writer.writeAttribute("href", "#", "href");

      String clientId = component.getClientId(context);
      String formId = org.mediateca.admin.util.Renderers.getFormId(context, component);

      writer.writeAttribute("onclick",
      // write value for hidden field whose name is the tabbedpane's client Id

            "document.forms['" + formId + "']['" + clientId + "'].value='"
                  + content + "'; " +

                  // submit form in which the tabbedpane resides
                  "document.forms['" + formId + "'].submit(); ", null);

      UITabbedPane tabbedPane = (UITabbedPane) component;
      String selectedContent = tabbedPane.getContent(); 

      String tabClass = null;
      if (content.equals(selectedContent))
         tabClass = (String) component.getAttributes().get("selectedTabClass");
      else
         tabClass = (String) component.getAttributes().get("tabClass");

      if (tabClass != null)
         writer.writeAttribute("class", tabClass, null);

      writer.write(tabText);

      writer.endElement("a");
      writer.endElement("td");
      writer.write("\n"); // to make generated HTML easier to read
   }

   // Text for the tabs in the tabbedpane component can be specified as
   // a key in a resource bundle, or as the actual text that's displayed
   // in the tab. Given that text, the getLocalizedTabText method tries to
   // retrieve a value from the resource bundle specified with the
   // <corejsf:tabbedpane>'s resourceBundle attribute. If no value is found,
   // getLocalizedTabText just returns the string it was passed.

   private String getLocalizedTabText(UIComponent tabbedPane, String key) {
      String bundle = (String) tabbedPane.getAttributes().get("resourceBundle");
      String localizedText = null;

      if (bundle != null) {
         localizedText = org.mediateca.admin.util.Messages.getString(bundle, key, null);
      }
      if (localizedText == null)
         localizedText = key;
      // The key parameter was not really a key in the resource bundle,
      // so just return the string as is
      return localizedText;
   }

   // includePage uses the servlet request dispatcher to include the page
   // corresponding to the selected tab.

   private void includePage(FacesContext fc, UIComponent component) {
      ExternalContext ec = fc.getExternalContext();
      ServletContext sc = (ServletContext) ec.getContext();
      UITabbedPane tabbedPane = (UITabbedPane) component;
      String content = tabbedPane.getContent(); 

      ServletRequest request = (ServletRequest) ec.getRequest();
      ServletResponse response = (ServletResponse) ec.getResponse();
      try {
         sc.getRequestDispatcher(content).include(request, response);
      } catch (ServletException ex) {
         logger.log(Level.WARNING, "Couldn't load page: " + content, ex);
      } catch (IOException ex) {
         logger.log(Level.WARNING, "Couldn't load page: " + content, ex);
      }
   }
}