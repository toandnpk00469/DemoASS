/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Toandnpk00469_Assignment;

/**
 *
 * @author Windows 10 Version 2
 */
public class DisplayValueModel {
    public  Object DisplayMember;
    public  Object DisplayValue;
    
    public DisplayValueModel(Object displayMember, Object displayValue){
        DisplayMember = displayMember;
        DisplayValue = displayValue;
    }
    
    @Override
    public String toString(){
        return DisplayMember.toString();
    }
  
}
