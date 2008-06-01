/*
 * Created on Jun 28, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mediateca.formbeans;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.struts.action.*;

import org.apache.log4j.Logger;
import org.dspace.app.webui.util.UIUtil;
import org.dspace.app.webui.util.Authenticate;
import org.dspace.authorize.AuthorizeException;
import org.dspace.content.Community;
import org.dspace.core.Context;
import org.dspace.core.LogManager;

/**
 * @author alexandercoles
 * @version 0.1
 * s
 */
public class SearchAction extends Action
{
    /** log4j category */
    private static Logger log = Logger.getLogger(SearchAction.class);
    
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws  ServletException, IOException,
            SQLException, AuthorizeException
    {
        String text = "No worries";
        String target = new String("success");
        


        request.setAttribute("communities", "wajerve"); 
       
        request.setAttribute("fish", text);
        return (mapping.findForward(target));
    }

}
