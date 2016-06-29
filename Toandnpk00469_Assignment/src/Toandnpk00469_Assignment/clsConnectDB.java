/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Toandnpk00469_Assignment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author Windows 10 Version 2
 */
public class clsConnectDB {
    String connectionString = "jdbc:sqlserver://f392e437-b82c-460f-a409-a634000de6c1.sqlserver.sequelizer.com:1433;" 
            + "databaseName=dbf392e437b82c460fa409a634000de6c1;user=cprdddghtynktlns;password=eLAaDWr7b7w2j6nftYPEm7HmHTQTEhhaZndEkQ4qtRhkUxiWTzd4VaEgcoySgEA2;";
    Connection conn;
    public clsConnectDB(){
       
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(connectionString);
            
            if(conn != null){
                System.out.println("Kết nối CSDL SQL Server thành công!");
            }
            
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.toString());
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
    }
    
    //Thực thi câu lệnh SELECT
    public ResultSet ExcuteQueryGetTable(String cauTruyVanSQL){
        try {
            Statement stmt = conn.createStatement();           
            ResultSet rs = stmt.executeQuery(cauTruyVanSQL);
            return rs;
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
            
        return null;
    }
    //Thực thi INSERT, DELETE, UPDATE
    public void ExcuteQueryUpdateDB(String cauTruyVanSQL){
       
        try {
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(cauTruyVanSQL);
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
    }
    
}
