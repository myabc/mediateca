/*
 * Created on Jun 28, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mediateca.webui;

/**
 * @author alexandercoles
 * @version 0.1
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class UIColor
{
    private String key;
    private String colorValue = "#ffffff";
    /**
     * @return Returns the colorValue.
     */
    public String getColorValue()
    {
        return colorValue;
    }
    /**
     * @param colorValue The colorValue to set.
     */
    public void setColorValue(String colorValue)
    {
        this.colorValue = colorValue;
    }
    /**
     * @return Returns the key.
     */
    public String getKey()
    {
        return key;
    }
    /**
     * @param key The key to set.
     */
    public void setKey(String key)
    {
        this.key = key;
    }
}
