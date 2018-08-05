/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Post;


import JN.DBConnection;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;

/**
 *
 * @author user
 */
public class PostDAO {
    Connection con = null;
    PreparedStatement psmt = null;
    public String addPost(PostBean Bean) throws ServletException, IOException{
        try{
            con = DBConnection.getConnection();
          
            
            
            String Query = "INSERT INTO posts Value(null,?,?,?,?,?)";
             psmt = con.prepareStatement(Query);
             System.out.print("inserting Data\n");
             psmt.setString(1,Bean.getPostTitle());
             psmt.setString(2,Bean.getPostContent());
             psmt.setString(3,Bean.getPostDescription());
             psmt.setDate(4,Bean.getPublishDate());
             psmt.setString(5,Bean.getPostAuthor());
             psmt.execute();
             System.out.print(" done with the Data\n");
             
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return "Post";
      
      } 
    public String GetPost() throws ServletException, IOException{
        return "UpdatePost";
      
      } 
 
}
