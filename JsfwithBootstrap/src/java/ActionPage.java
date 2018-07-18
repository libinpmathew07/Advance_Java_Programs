/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author Asar
 */
@ManagedBean
@RequestScoped
public class ActionPage 
{

   String uname,pass;

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    public String ActionPage() 
    {
        if(uname.equals("admin"))
        {
            return "regpage.xhtml";
        }
        else
        {
            return "loginpage.xhtml";
        }
    }
    
}
