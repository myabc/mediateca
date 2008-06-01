/*
 * Created on Jun 24, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mediateca.admin.webui;

import java.io.IOException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.faces.component.UIComponent;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.context.ResponseWriter;
import javax.faces.event.ActionEvent;
import javax.faces.model.SelectItem;
import javax.faces.render.Renderer;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.myfaces.renderkit.RendererUtils;

/**
 * @author alexandercoles
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class XPShellRenderer extends Renderer
{
    private static Logger logger = Logger.getLogger("org.mediateca.utils");
    
    /*
     * TODO: Move these strings to a message bundle.
     * TODO: Localize these strings.
     */
    private static final String TABLE_ACCESSIBILITY_SUMMARY_TEXT = "Layout table for positioning page elements";
    
    private static final String WINDOW_BANNER_CSS_STYLE = "windowBanner";
    private static final String WINDOW_TASKS_CSS_STYLE = "windowTasks";
    private static final String TASKBOX_CONTAINER_CSS_STYLE = "taskBoxContainer";
    private static final String TASKBOX_HEADER_CSS_STYLE = "taskBoxHeader";
    private static final String TASKBOX_CSS_STYLE = "taskBox";
    
    private static final String WINDOW_TASKS_TD_WIDTH = "210";
    
    public boolean getRendersChildren()
    {
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

    public void decode(FacesContext context, UIComponent component)
    {
        Map requestParams = context.getExternalContext()
                .getRequestParameterMap();
        String clientId = component.getClientId(context);

        String content = (String) (requestParams.get(clientId));
        if (content != null && !content.equals(""))
        {
            UIXPShell xpShell = (UIXPShell) component;
            xpShell.setContent(content);
        }

        component.queueEvent(new ActionEvent(component));
    }

    // The encodeBegin method writes the starting <table> HTML element
    // with the CSS class specified by the <corejsf:tabbedpane>'s styleClass
    // attribute (if supplied)

    public void encodeBegin(FacesContext context, UIComponent component)
            throws java.io.IOException
    {
        ResponseWriter writer = context.getResponseWriter();
        String title = (String) component.getAttributes().get("title");

        // Write the header <div> with a title
        writer.startElement("div", component);
        writer.writeAttribute("class", WINDOW_BANNER_CSS_STYLE, null);
        writer.startElement("h1", component);
        if (title != null)
            writer.write(title);
        writer.endElement("h1");
        writer.endElement("div");
        writer.write("\n"); // to make generated HTML easier to read
        
        /*
         * TODO: Replace tables with CSS layout at a later point
         * <table width="100%" cellspacing="0" cellpadding="0" border="0">
         * <tr valign="top"><td width="210" class="windowTasks">
         */
        
        writer.startElement("table", component);
        writer.writeAttribute("width", "100%", null);
        // writer.writeAttribute("height", "100%", null);    
        writer.writeAttribute("cellspacing", "0", null);
        writer.writeAttribute("cellpadding", "0", null);
        writer.writeAttribute("border", "0", null);
        writer.writeAttribute("caption", TABLE_ACCESSIBILITY_SUMMARY_TEXT, null); // for Accessbility
        writer.write("\n"); // to make generated HTML easier to read
        
        writer.startElement("tbody", component);
        writer.write("\n"); // to make generated HTML easier to read
        
        writer.startElement("tr", component);
        writer.writeAttribute("valign", "top", null);
        writer.write("\n"); // to make generated HTML easier to read

    }

    // encodeChildren() is invoked by the JSF implementation after
    // encodeBegin().
    // The children of the <corejsf:tabbedpane> component are UISelectItem
    // components, set with one or more <f:selectItem> tags or a single
    // <f:selectItems> tag in the body of <corejsf:tabbedpane>

    public void encodeChildren(FacesContext context, UIComponent component)
            throws java.io.IOException
    {
        String mainTaskBoxName = (String) component.getAttributes().get("mainTaskBoxName");
        String otherPlaces = (String) component.getAttributes().get("otherPlaces");
        String initDetails = (String) component.getAttributes().get("initDetails");
        
        // if the tabbedpane component has no children, this method is still
        // called
        if (component.getChildCount() == 0)
        {
           return;
        }

        ResponseWriter writer = context.getResponseWriter();
        
        writer.startElement("td", component);
        writer.writeAttribute("width", WINDOW_TASKS_TD_WIDTH, null);
        writer.writeAttribute("class", WINDOW_TASKS_CSS_STYLE, null);
        writer.write("\n"); // to make generated HTML easier to read

        /*

        List items = org.mediateca.admin.util.Renderers
                .getSelectItems(component);
        Iterator it = items.iterator();
        while (it.hasNext())
            encodeTab(context, writer, (SelectItem) it.next(), component);

        */
        
        // Add in the Task Boxes
        encodeTaskBox(context, writer, "tasks", mainTaskBoxName, "", component);
        encodeTaskBox(context, writer, "otherPlaces", "Other Places", otherPlaces, component);
        encodeTaskBox(context, writer, "generalInfo", "Details", initDetails, component);
        
        writer.endElement("td");
        writer.write("\n"); // to make generated HTML easier to read
                
    }

    // encodeEnd() is invoked by the JSF implementation after encodeChildren().
    // encodeEnd() writes the table body and encodes the tabbedpane's content
    // in a single table row.

    // The content for the tabbed pane can be specified as either a URL for
    // a JSP page or a facet name, so encodeEnd() checks to see if it's a facet;
    // if so, it encodes it; if not, it includes the JSP page

    public void encodeEnd(FacesContext context, UIComponent component)
            throws java.io.IOException
    {
        ResponseWriter writer = context.getResponseWriter();
        UIXPShell xpShell = (UIXPShell) component;
        String content = xpShell.getContent();
        String subtitle = (String) component.getAttributes().get("subtitle");

        writer.startElement("td", component);
        writer.writeAttribute("width", "100%", null); // fill the page

        // Write in the optional subtitle
        if (subtitle != null) 
        {
            writer.startElement("div", component);
            writer.write(subtitle);
            writer.endElement("div");
        }
            
        writer.startElement("div", component);
        
        if (content != null)
        {
            UIComponent facet = component.getFacet(content);
            if (facet != null)
            {
                if (facet.isRendered())
                {
                    facet.encodeBegin(context);
                    if (facet.getRendersChildren())
                        facet.encodeChildren(context);
                    facet.encodeEnd(context);
                }
            }
            else
                includePage(context, component);
        }

        // TODO: Eliminate this horrible kludge
        // writer.write(content);
        
        writer.endElement("div");
        writer.endElement("td");
        writer.endElement("tr");
        writer.endElement("tbody");

        // Close off the column, row, and table elements
        writer.endElement("table");
        
        // Add In 'behavior space' for various hidden IFRAME actions
        // TODO: Remove Behavior Space and replace it with something better
        writer.startElement("div", component);
        writer.writeAttribute("id", "behaviorSpace", null); // This will be removed in the near future
        writer.writeAttribute("style","display:none", null);
        writer.endElement("div");

        encodeHiddenField(context, writer, component);
    }

    // The encodeHiddenField method is called at the end of encodeEnd().
    // See the decode method for an explanation of the field and its value.

    private void encodeHiddenField(FacesContext context, ResponseWriter writer,
            UIComponent component) throws java.io.IOException
    {
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
            SelectItem item, UIComponent component) throws java.io.IOException
    {
        String tabText = getLocalizedTabText(component, item.getLabel());
        String content = (String) item.getValue();

        writer.startElement("td", component);
        writer.startElement("a", component);
        writer.writeAttribute("href", "#", "href");

        String clientId = component.getClientId(context);
        String formId = org.mediateca.admin.util.Renderers.getFormId(context,
                component);

        writer.writeAttribute("onclick",
        // write value for hidden field whose name is the tabbedpane's client Id

                "document.forms['" + formId + "']['" + clientId + "'].value='"
                        + content + "'; " +

                        // submit form in which the tabbedpane resides
                        "document.forms['" + formId + "'].submit(); ", null);

        UIXPShell xpShell = (UIXPShell) component;
        String selectedContent = xpShell.getContent();

        /*
         * String tabClass = null; if (content.equals(selectedContent)) tabClass =
         * (String) component.getAttributes().get("selectedTabClass"); else
         * tabClass = (String) component.getAttributes().get("tabClass");
         * 
         * if (tabClass != null) writer.writeAttribute("class", tabClass, null);
         */

        writer.write(tabText);

        writer.endElement("a");
        writer.endElement("td");
        writer.write("\n"); // to make generated HTML easier to read
    }
    
    // encodeTaskBox
    private void encodeTaskBox(FacesContext context, ResponseWriter writer,
            String taskBoxId, String taskBoxName, String taskBoxContent,
            UIComponent component) throws java.io.IOException
    {
        
        /*
         * <div class="taskBoxContainer"> <div class="taskBoxHeader">
         * <cfoutput>#attributes.mainTaskBoxName# </cfoutput> </div> <div
         * class="taskBox" id="tasks">
         * <cfoutput>#attributes.globalRecordActionHTML# </cfoutput> </div>
         * </div>
         */
        
        writer.startElement("div", component);
        writer.writeAttribute("class", TASKBOX_CONTAINER_CSS_STYLE, null);
        writer.startElement("div", component);
        writer.writeAttribute("class", TASKBOX_HEADER_CSS_STYLE, null);
        if (taskBoxName != null)
        {
            writer.write(taskBoxName);
        }
        writer.endElement("div");
        writer.startElement("div", component);
        writer.writeAttribute("id", "tasks", null);
        writer.writeAttribute("class", TASKBOX_CSS_STYLE, null);
        if (taskBoxName != null)
        {
            writer.write(taskBoxContent);
        }
        writer.endElement("div");
        writer.endElement("div");
        
    }    


    // Text for the tabs in the tabbedpane component can be specified as
    // a key in a resource bundle, or as the actual text that's displayed
    // in the tab. Given that text, the getLocalizedTabText method tries to
    // retrieve a value from the resource bundle specified with the
    // <corejsf:tabbedpane>'s resourceBundle attribute. If no value is found,
    // getLocalizedTabText just returns the string it was passed.

    private String getLocalizedTabText(UIComponent tabbedPane, String key)
    {
        String bundle = (String) tabbedPane.getAttributes().get(
                "resourceBundle");
        String localizedText = null;

        if (bundle != null)
        {
            localizedText = org.mediateca.admin.util.Messages.getString(bundle,
                    key, null);
        }
        if (localizedText == null)
            localizedText = key;
        // The key parameter was not really a key in the resource bundle,
        // so just return the string as is
        return localizedText;
    }


    
    // includePage uses the servlet request dispatcher to include the page
    // corresponding to the selected tab.

    private void includePage(FacesContext fc, UIComponent component)
    {
        ExternalContext ec = fc.getExternalContext();
        ServletContext sc = (ServletContext) ec.getContext();
        UIXPShell xpShell = (UIXPShell) component;
        String content = xpShell.getContent();

        ServletRequest request = (ServletRequest) ec.getRequest();
        ServletResponse response = (ServletResponse) ec.getResponse();
        try
        {
            sc.getRequestDispatcher(content).include(request, response);
        }
        catch (ServletException ex)
        {
            logger.log(Level.WARNING, "Couldn't load page: " + content, ex);
        }
        catch (IOException ex)
        {
            logger.log(Level.WARNING, "Couldn't load page: " + content, ex);
        }
    }

}
