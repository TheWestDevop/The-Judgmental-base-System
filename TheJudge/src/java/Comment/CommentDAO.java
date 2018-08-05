/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Comment;

import JN.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;

/**
 *
 * @author user
 */
public class CommentDAO {
    public String addComment(CommentBean Bean)  throws ServletException, IOException{
        try{
            Connection con = DBConnection.getConnection();
            String Query = "INSERT INTO comments(comment,commenter,comment_date) VALUES(?,?,?)";
            PreparedStatement psmt = con.prepareStatement(Query);
            psmt.setString(1,Bean.getComment());
             psmt.setString(2,Bean.getCommenter());
             psmt.setDate(3, (Date) Bean.getCommentDate());
             psmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return "Comment";
      }
    
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
