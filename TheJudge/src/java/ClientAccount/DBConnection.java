/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClientAccount;

import java.sql.*;

/**
 *
 * @author user
 */
public class DBConnection {
    public static Connection createConnection(){
        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/@thejudge?zeroDateTimeBehavior=convertToNull";
        String user = "root";
        String password = "";
        
        try{
            try{
                Class.forName("com.mysql.jdbc.Driver");
            }catch(ClassNotFoundException e){
                e.printStackTrace();
            }
            con = DriverManager.getConnection(url, user, password);
            System.out.println("POST ESTABLISHING A DB CONNECTION -" +con);
        }catch(Exception e){
            e.printStackTrace();
        }
          return con;      
    }
    public static Connection getConnection(){
        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/@thejudge?zeroDateTimeBehavior=convertToNull";
        String user = "root";
        String password = "";
        
        try{
            try{
                System.out.println("Checking.... Forname");
                Class.forName("com.mysql.jdbc.Driver");
                System.out.println("Done Checking");
            }catch(ClassNotFoundException e){
                e.printStackTrace();
            }
            con = DriverManager.getConnection(url, user, password);
            System.out.println("POST ESTABLISHING A DB CONNECTION -" +con);
        }catch(Exception e){
            e.printStackTrace();
        }
          return con;      
    }
}
