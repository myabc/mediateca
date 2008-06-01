/*
 * Created on Jun 27, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mediateca.admin.epeople;

import java.sql.SQLException;

import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.dspace.app.webui.util.UIUtil;
import org.dspace.core.Context;
import org.dspace.core.LogManager;
import org.dspace.eperson.Group;

/**
 * @author alexandercoles
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class Groups
{

    private GroupBean[] groups = null;

    private String test;

    private Context dspaceContext = null;

    /*
     * public void open() throws SQLException, NamingException { if (conn !=
     * null) return; Context context = new Context(); }
     */

    public GroupBean[] getGroups() throws SQLException
    {

        return groups;
    }

    public GroupBean[] getAll() throws SQLException
    {

        return groups;
    }

    public Groups() throws SQLException
    {
        init();
    }

    public String getTest()
    {
        
        return test;
    }

    public void init()
    {
        FacesContext context = FacesContext.getCurrentInstance();
        // HttpSession session = (HttpSession)
        // context.getExternalContext().getSession(false);
        HttpServletRequest request = (HttpServletRequest) context
                .getExternalContext().getRequest();

        try
        {

            // Obtain a context so that the location bar can display log in
            // status
            dspaceContext = UIUtil.obtainContext(request);

            // Get group list
            Group[] dspaceGroups = Group.findAll(dspaceContext, Group.NAME);

            // DEBUGGING NASTY
            System.out.print("\n");
            System.out.print(dspaceGroups.length);
            System.out.print("\n");

            test = " " + dspaceGroups.length;
                 
            if (groups == null)
            {
                groups = new GroupBean[dspaceGroups.length];
                
	            for (int i = 0, n = dspaceGroups.length; i < n; i++)
	            {
	                int id = dspaceGroups[i].getID();
	                String name = dspaceGroups[i].getName();
	                System.out.print(id);
	                System.out.print(name);
	                GroupBean groupBean = new GroupBean(dspaceGroups[i].getID(),
	                        dspaceGroups[i].getName());
	                groups[i] = groupBean; 
	                System.out.print("boo: "+groups[i].getId());
	                System.out.print("boo: "+groups[i].getName());
	            }
            }

            System.out.print("\n");
            //System.out.print(groups.length);
            System.out.print("\n");

            //Group[] pgroups = (Group[]) request.getAttribute("groups");
            // this.groups = (Group[]) pgroups;

            // request.setAttribute("groups", groups);

            // Show home page JSP
            //JSPManager.showJSP(request, response, "/home.jsp");
            //

        }
        catch (SQLException se)
        {
            // Database error occurred.

            // Obtain a context so that the location bar can display log in
            // status
           /* dspaceContext = UIUtil.obtainContext(request);
             
            Logger log = Logger.getLogger("org.dspace.jsp");
            log.warn(LogManager.getHeader(dspaceContext, "database_error",
                    se.toString()), se);
            
            // Also email an alert
            UIUtil.sendAlert(request, se);
      */
            // TODO: Display a meaningful error to the user
            //
        }
        finally
        {
            dspaceContext.abort();
        }
    }

}
