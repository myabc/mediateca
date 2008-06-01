/*
 * Created on Jun 23, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mediateca.admin.webui;

import javax.faces.component.UICommand;
import javax.faces.context.FacesContext;

/**
 * @author alexandercoles
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class UITabbedPane extends UICommand {

    private String content;
    
    
    /**
     * @return Returns the content.
     */
    public String getContent() {
        return content;
    }
    /**
     * @param content The content to set.
     */
    public void setContent(String content) {
        this.content = content;
    }
    /**
     * 
     */
    public Object saveState(FacesContext context) {
        Object values[] = new Object[2];
        values[0] = super.saveState(context);
        values[1] = content;
        return values;
    }
    
    public void restoreState(FacesContext context, Object state) {
        Object values[] = (Object[]) state;
        super.restoreState(context, values[0]);
        content = (String) values[1];
    }

}
