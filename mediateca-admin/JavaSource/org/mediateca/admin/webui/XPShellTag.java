/*
 * Created on Jun 24, 2005
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
 */
public class XPShellTag extends UIComponentBodyTag
{
    private String title, mainTaskBoxName, subtitle, initDetails, otherPlaces,
            resourceBundle, actionListener;

    /**
     * @return Returns the initDetails.
     */
    public String getInitDetails()
    {
        return initDetails;
    }
    /**
     * @param initDetails The initDetails to set.
     */
    public void setInitDetails(String initDetails)
    {
        this.initDetails = initDetails;
    }
    /**
     * @return Returns the mainTaskBoxName.
     */
    public String getMainTaskBoxName()
    {
        return mainTaskBoxName;
    }
    /**
     * @param mainTaskBoxName The mainTaskBoxName to set.
     */
    public void setMainTaskBoxName(String mainTaskBoxName)
    {
        this.mainTaskBoxName = mainTaskBoxName;
    }
    /**
     * @return Returns the otherPlaces.
     */
    public String getOtherPlaces()
    {
        return otherPlaces;
    }
    /**
     * @param otherPlaces The otherPlaces to set.
     */
    public void setOtherPlaces(String otherPlaces)
    {
        this.otherPlaces = otherPlaces;
    }
    /**
     * @return Returns the subtitle.
     */
    public String getSubtitle()
    {
        return subtitle;
    }
    /**
     * @param subtitle The subtitle to set.
     */
    public void setSubtitle(String subtitle)
    {
        this.subtitle = subtitle;
    }
    /**
     * @return Returns the title.
     */
    public String getTitle()
    {
        return title;
    }
    /**
     * @param title The title to set.
     */
    public void setTitle(String title)
    {
        this.title = title;
    }
    /**
     * TODO: Convert the following to Java: <cfparam
     * name="attributes.singleRecordActionHTML" type="string" default="">
     * <cfparam name="attributes.multiRecordActionHTML" type="string"
     * default=""> <cfparam name="attributes.globalRecordActionHTML"
     * type="string" default="">
     */

    /*
     * (non-Javadoc)
     * 
     * @see javax.faces.webapp.UIComponentTag#getComponentType()
     */
    public String getComponentType()
    {
        return "XP Shell";
    }

    /*
     * (non-Javadoc)
     * 
     * @see javax.faces.webapp.UIComponentTag#getRendererType()
     */
    public String getRendererType()
    {
        return "XPShellRenderer";
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

        Tags.setString(component, "title", title);
        Tags.setString(component, "mainTaskBoxName", mainTaskBoxName);
        Tags.setString(component, "subtitle", subtitle);
        Tags.setString(component, "initDetails", initDetails);
        Tags.setString(component, "otherPlaces", otherPlaces);
        Tags.setString(component, "resourceBundle", resourceBundle);
        Tags.setActionListener(component, actionListener);
    }

    public void release()
    {
        // always call the superclass method
        super.release();

        title = null;
        mainTaskBoxName = null;
        subtitle = null;
        initDetails = null;
        otherPlaces = null;
        resourceBundle = null;
        actionListener = null;
    }
    
}
