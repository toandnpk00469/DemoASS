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
public class Toandnpk00469_Assignment {

    /**
     * @param args the command line arguments
     */
    public static clsConnectDB connection = new clsConnectDB(); // Tạo kết nối csdl để sài cho nhiều form
    public static void main(String[] args) {
                
        frmDangNhap frmReg = new frmDangNhap();
        frmReg.show();
        
    }
    
}
