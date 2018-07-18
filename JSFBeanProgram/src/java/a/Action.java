/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package a;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;


public class Action 
{

    private String name,email;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
    public String Action()
    {
        if(name.equals("admin")&&email.equals("admin@gmail.com"))
        {
            return "loginaction.xhtml";
        }
        else
        {
            
            return "index.xhtml";
            
        }
    }
    
}
