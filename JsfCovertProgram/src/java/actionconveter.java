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
public class actionconveter
{
   int amount;

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
    /**
     * Creates a new instance of actionconveter
     */
    public actionconveter() {
    }
    
}
