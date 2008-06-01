/*
 * Created on Jun 22, 2005
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

/**
 *  
 */

public class Name
{
    private String first;

    private String last;

    private boolean editable;

    public Name(String first, String last)
    {
        this.first = first;
        this.last = last;
    }

    public void setFirst(String newValue)
    {
        first = newValue;
    }

    public String getFirst()
    {
        return first;
    }

    public void setLast(String newValue)
    {
        last = newValue;
    }

    public String getLast()
    {
        return last;
    }

    public boolean isEditable()
    {
        return editable;
    }

    public void setEditable(boolean newValue)
    {
        editable = newValue;
    }

}