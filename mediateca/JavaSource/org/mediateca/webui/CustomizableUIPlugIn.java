/*
 * Created on Jun 28, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mediateca.webui;

import javax.servlet.ServletException;

import org.apache.struts.action.ActionServlet;
import org.apache.struts.action.PlugIn;
import org.apache.struts.config.ModuleConfig;

/**
 * @author alexandercoles
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class CustomizableUIPlugIn implements PlugIn
{
    private String contextKey;
    
    public void setContextKey(String key) {
        this.contextKey = key;
    }
    
    /* (non-Javadoc)
     * @see org.apache.struts.action.PlugIn#destroy()
     */
    public void destroy()
    {

    }

    /* (non-Javadoc)
     * @see org.apache.struts.action.PlugIn#init(org.apache.struts.action.ActionServlet, org.apache.struts.config.ModuleConfig)
     */
    public void init(ActionServlet servlet, ModuleConfig conf)
            throws ServletException
    {
        servlet.getServletContext( ).setAttribute(contextKey, new CustomizableUI( ));
    }

}
