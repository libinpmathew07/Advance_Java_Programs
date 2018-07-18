/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Asar
 */
@ManagedBean
@RequestScoped
public class Foo 
{
   @NotNull(message = "Name can't be null")  
String name;  
  
public String getName() {  
return name;  
}  
public void setName(String name) {  
this.name = name;  
}  
  
    public Foo() {
    }
    
}
