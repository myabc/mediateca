/*
 * Created on Jun 23, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mediateca.admin.webui;

import javax.faces.component.UIComponent;
import javax.faces.webapp.UIComponentBodyTag;

import org.mediateca.admin.util.Tags;

/**
 * @author alexandercoles
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 * 
 * This tags supports the following attributes:
 * TODO List attributes
 * 
 */
public class TabbedPaneTag extends UIComponentBodyTag
{

    private String style, styleClass, tabClass, selectedTabClass,
            resourceBundle, actionListener;

    public String getRendererType()
    {
        return "TabbedPaneRenderer";
    }

    public String getComponentType()
    {
        return "Tabbed Pane";
    }

    // tabClass attribute
    public String getTabClass()
    {
        return tabClass;
    }

    public void setTabClass(String tabClass)
    {
        this.tabClass = tabClass;
    }

    // selectedTabClass attribute
    public String getSelectedTabClass()
    {
        return selectedTabClass;
    }

    public void setSelectedTabClass(String selectedTabClass)
    {
        this.selectedTabClass = selectedTabClass;
    }

    // style attribute
    public String getStyle()
    {
        return style;
    }

    public void setStyle(String style)
    {
        this.style = style;
    }

    // styleClass attribute
    public String getStyleClass()
    {
        return styleClass;
    }

    public void setStyleClass(String styleClass)
    {
        this.styleClass = styleClass;
    }

    // resourceBundle attribute
    public String getResourceBundle()
    {
        return resourceBundle;
    }

    public void setResourceBundle(String resourceBundle)
    {
        this.resourceBundle = resourceBundle;
    }

    // actionListener attribute
    public String getActionListener()
    {
        return actionListener;
    }

    public void setActionListener(String actionListener)
    {
        this.actionListener = actionListener;
    }

    protected void setProperties(UIComponent component)
    {
        // make sure you always call the superclass
        super.setProperties(component);

        Tags.setString(component, "style", style);
        Tags.setString(component, "styleClass", styleClass);
        Tags.setString(component, "tabClass", tabClass);
        Tags.setString(component, "selectedTabClass", selectedTabClass);
        Tags.setString(component, "resourceBundle", resourceBundle);
        Tags.setActionListener(component, actionListener);
    }

    public void release()
    {
        // always call the superclass method
        super.release();

        style = null;
        styleClass = null;
        tabClass = null;
        selectedTabClass = null;
        resourceBundle = null;
        actionListener = null;
    }
}
