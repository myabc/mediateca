/*
 * Created on Jun 27, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mediateca.admin.epeople;

import org.dspace.eperson.*;
import org.dspace.core.Context;
import java.util.logging.Logger;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;

/**
 * @author alexandercoles
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class EPersonForm
{
    private String email;
    private String firstName;
    private String lastName;
    private String phone;
    private Boolean canLogIn;
    private Boolean requireCertificate;
    
    private Logger logger = Logger.getLogger("org.mediateca.admin.epeople");
    
    /**
     * @return Returns the canLogIn.
     */
    public java.lang.Boolean getCanLogIn()
    {
        return canLogIn;
    }
    /**
     * @param canLogIn The canLogIn to set.
     */
    public void setCanLogIn(java.lang.Boolean canLogIn)
    {
        this.canLogIn = canLogIn;
    }
    /**
     * @return Returns the email.
     */
    public java.lang.String getEmail()
    {
        return email;
    }
    /**
     * @param email The email to set.
     */
    public void setEmail(java.lang.String email)
    {
        this.email = email;
    }
    /**
     * @return Returns the firstName.
     */
    public java.lang.String getFirstName()
    {
        return firstName;
    }
    /**
     * @param firstName The firstName to set.
     */
    public void setFirstName(java.lang.String firstName)
    {
        this.firstName = firstName;
    }
    /**
     * @return Returns the lastName.
     */
    public java.lang.String getLastName()
    {
        return lastName;
    }
    /**
     * @param lastName The lastName to set.
     */
    public void setLastName(java.lang.String lastName)
    {
        this.lastName = lastName;
    }
    /**
     * @return Returns the phone.
     */
    public java.lang.String getPhone()
    {
        return phone;
    }
    /**
     * @param phone The phone to set.
     */
    public void setPhone(java.lang.String phone)
    {
        this.phone = phone;
    }
    /**
     * @return Returns the requireCertificate.
     */
    public java.lang.Boolean getRequireCertificate()
    {
        return requireCertificate;
    }
    /**
     * @param requireCertificate The requireCertificate to set.
     */
    public void setRequireCertificate(java.lang.Boolean requireCertificate)
    {
        this.requireCertificate = requireCertificate;
    }
    
    public String load() {

        doLoadUser();
        
        return "loadSuccess";
    }
    
    public String save() {
        doSaveUser();
        return "saveSuccess";
    }
    
    public void doLoadUser() {
      /*  Context context = FacesContext.getCurrentInstance().getExternalContext().getContext();
        Object requestObject = context.getRequest();
        */
        /*
        if(!(requestObject instanceof HttpServletRequest)) {
            logger.severe("request object has type" + requestObject.getClass());
           // return false;
        }

        HttpServletRequest request = (HttpServletRequest) requestObject;
        */
        
        
     //  EPerson eperson = EPerson.find(context,1);
                
        
        this.firstName = "Alexander";
        //this.lastName = request.getAttribute("eperson").toString();
        
        this.email = "alexbcoles@mac.com";
    }
    
    public void doSaveUser() {
        
    
    }
    
}
