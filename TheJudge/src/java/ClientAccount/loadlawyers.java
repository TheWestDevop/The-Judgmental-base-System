/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClientAccount;


import java.sql.Connection;
import java.sql.*;

/**
 *
 * @author user
 */
public class loadlawyers {
   public String getName() throws SQLException{
       
        Connection con = null;
        con = DBConnection.getConnection();
        Statement stat = null;
        ResultSet res = null; 
       
        
        stat = con.createStatement();
        String data = "select * from users where works = 'lawyer'";
        res = stat.executeQuery(data);
        String name = "<table  class='table table-borderless'><tr><th>Name</th>"
                + "<th>Gender</th>"
                + "<th>Number of Case's Given</th>"
                + "<th>Number of Case's Won</th>"
                + "<th>Education Qualification</th></tr>";
        while(res.next()){
             name += "<tr><td>"+res.getString("lastname")+" "+res.getString("firstname")+"</td>"
                     + "<td>"+res.getString("sex")+"</td>"
                     + "<td>"+res.getString("CaseGiven")+"</td>"
                     + "<td>"+res.getString("CaseWon")+"</td>"
                     + "<td>"+res.getString("Education")+"</td>"
                     + "<td>"+"<button class='btn btn-primary'>Hire</button>"+"</td>";
             
        }
        name += "</table>";
        return name;
    }
   /* 
  
   */
   
}
