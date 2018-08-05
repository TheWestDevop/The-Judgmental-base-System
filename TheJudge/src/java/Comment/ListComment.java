/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Comment;

import JN.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author user
 */
public class ListComment {
    public List<CommentBean> getList(){
       List<CommentBean> r  = new  ArrayList<CommentBean>();
       try{
           Connection con = DBConnection.getConnection();
           String query = "select * from comments";
           PreparedStatement psmt = con.prepareStatement(query);
           ResultSet rs = psmt.executeQuery();
           while(rs.next()){
               CommentBean com = new CommentBean(rs.getString("commenter"),rs.getString("comment"));
               r.add(com);
           }
           
       } catch(Exception e){
           e.printStackTrace();
           
       }
           return r;    
   } 
    
}
