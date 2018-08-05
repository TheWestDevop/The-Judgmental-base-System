/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Check;


import ClientAccount.DBConnection;
import java.sql.*;

/**
 *
 * @author user
 */
public class dao {
    public String Verify(Bean accountBean){
          String UserName = accountBean.get$username();
          String Password = accountBean.get$password();
     
          Connection con = null;
          Statement statement = null;
          ResultSet resultset = null;
          
          String usernameDB = "";
          String passwordDB ="";
          String roleDB = "";
         
          
          try{
              con = DBConnection.createConnection();
              statement = con.createStatement();
              resultset = statement.executeQuery("SELECT mail,phone_contact,works FROM  Users ");
          
              System.out.println("checking the query.....");
              while(resultset.next()){
                  usernameDB = resultset.getString("mail");
                  passwordDB = resultset.getString("phone_contact");
                  roleDB = resultset.getString("works");
                  System.out.println("passing the query......");
                  if(UserName.equals(usernameDB)&&Password.equals(passwordDB)&&roleDB.equals("Lawyer")){
                      return "LAWYER";
                  }else if(UserName.equals(usernameDB)&&Password.equals(passwordDB)){
                      return "CLIENT";
                  }
              }
          }catch(SQLException e){
              e.printStackTrace();
          }
          
          
       return "Invalid  user Details";      
          
    }
 
}

