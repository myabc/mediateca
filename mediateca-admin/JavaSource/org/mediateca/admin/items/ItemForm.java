/*
 * Created on Jun 22, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mediateca.admin.items;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.faces.model.SelectItem;

/**
 * @author alexandercoles
 *
 * TODO Add in sorting for locale list
 * 
 */
public class ItemForm
{

    private static final SelectItem[] tabs = {
            new SelectItem("/pages/edit-item/general.jsp", "General"),
            new SelectItem("/pages/edit-item/description.jsp", "Description"),
            new SelectItem("/pages/edit-item/date.jsp", "Date"),
            new SelectItem("/pages/edit-item/coverage.jsp", "Coverage"),
            new SelectItem("/pages/edit-item/rights.jsp", "Rights"),
            new SelectItem("/pages/edit-item/files.jsp", "Files") };

    private String contributor;

    private String creator;

    private Map languages = null;

    private String publisher;

    private String title;

    private String titleAlternative;

    /**
     * @return Returns the creator.
     */
    public String getCreator()
    {
        return creator;
    }

    // private String[] languages = null;

    // PROPERTY: languageItems
    public Map getLanguageItems()
    {

        Locale[] locales = Locale.getAvailableLocales();

        if (languages == null)
        {
            languages = new HashMap();
        }

        for (int i = 0; i < locales.length; i++)
        {
            // Get the 2-letter language code
            String language = locales[i].getLanguage();

            // Get the 2-letter country code; may be equal to ""
            String country = locales[i].getCountry();

            // Get localized name suitable for display to the user
            String localeName = locales[i].getDisplayName();

            String languageCode = "";

            if (language.equals(""))
            {
                languageCode = "";
            }
            else if (country.equals(""))
            {
                languageCode = language;
            }
            else
            {
                languageCode = country + "_" + language;
            }

            languages.put(localeName, languageCode);

        }

        return languages;
    }

    /**
     * @return Returns the publisher.
     */
    public String getPublisher()
    {
        return publisher;
    }

    public SelectItem[] getTabs()
    {
        return tabs;
    }

    /**
     * @return Returns the title.
     */
    public String getTitle()
    {
        return title;
    }

    /**
     * @return Returns the titleAlternative.
     */
    public String getTitleAlternative()
    {
        return titleAlternative;
    }

    /**
     * @param creator The creator to set.
     */
    public void setCreator(String creator)
    {
        this.creator = creator;
    }

    /**
     * @param publisher The publisher to set.
     */
    public void setPublisher(String publisher)
    {
        this.publisher = publisher;
    }

    /**
     * @param title The title to set.
     */
    public void setTitle(String title)
    {
        this.title = title;
    }

    /**
     * @param titleAlternative The titleAlternative to set.
     */
    public void setTitleAlternative(String titleAlternative)
    {
        this.titleAlternative = titleAlternative;
    }

    /*public SelectItem[] getLanguageItems() {
     return languageItems;
     }
     
     private static SelectItem[] languageItems = new SelectItem[] {
     new SelectItem("en","English"),
     new SelectItem("fr","French"),
     new SelectItem("de","German"),
     new SelectItem("es","Spanish")
     };
     */
}
