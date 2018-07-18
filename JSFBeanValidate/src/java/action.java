/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Asar
 */
@ManagedBean
@RequestScoped
public class action {

     
   @NotNull(message = "Name can't be null")  
   private String uname;

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }
    
    public action() {
    }
    
}
