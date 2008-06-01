/*
 * Created on Jun 30, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mediateca.admin.epeople;

/**
 * @author alexandercoles
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class GroupBean
{
    private int id;
    private String name;

    public GroupBean()
    {
    }
    
    public GroupBean(int id, String name)
    {
        this.id = id;
        this.name = name;
    }
    
    /**
     * @return Returns the id.
     */
    public int getId()
    {
        return id;
    }
    /**
     * @param id The id to set.
     */
    public void setId(int id)
    {
        this.id = id;
    }
    /**
     * @return Returns the name.
     */
    public String getName()
    {
        return name;
    }
    /**
     * @param name The name to set.
     */
    public void setName(String name)
    {
        this.name = name;
    }
}
