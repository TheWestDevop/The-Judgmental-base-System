 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package web;
import ClientAccount.DBConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Eslam
 */
public class DbManager{
    
    
    
    
    
    

    

    
    Connection con ;
    public DbManager(){
       
        
    
    }
    
    


    
    public List<Post> GetAllPosts() {
        try {
            
            
             con  = DBConnection.createConnection();
             
             Post post;
             List<Post>  posts = new ArrayList<Post>();
            PreparedStatement sql = con.prepareStatement("SELECT * FROM Posts");
            
            ResultSet res = sql.executeQuery();
           while( res.next()){
            post = new Post();
            post.ID = res.getInt(1);
            post.PostTitle = res.getString(2);
            post.PostContent = res.getString(3);
            post.PostDescription = res.getString(4);
            post.PublishDate = res.getString(5);
            post.IsVisiable = res.getBoolean(6);
            post.AllowComments = res.getBoolean(9);
            post.PostAuthor = res.getString(7);
           posts.add(post);
           }
              return posts;
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, "ex happened !!!", ex);
            return null;
        }catch(Exception ex){
           Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
           return null;
        }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    
    public Post GetPost(int ID) {
        try {
            
            con  = DBConnection.createConnection();
            
             Post post = new Post();
             
            PreparedStatement sql = con.prepareStatement("SELECT * FROM Posts WHERE ID=?");
            sql.setInt(1, ID);

            ResultSet res = sql.executeQuery();
            res.next();
            
            post.ID = res.getInt(1);
             post.PostTitle = res.getString(2);
            post.PostContent = res.getString(3);
            post.PostDescription = res.getString(4);
            post.PublishDate = res.getString(5);
            post.IsVisiable = res.getBoolean(6);
            post.AllowComments = res.getBoolean(9);
            post.PostAuthor = res.getString(7);
            
              return post;
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, "ex happened !!!", ex);
            return null;
        }catch(Exception ex){
           Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
           return null;
        }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    
    public int UpdatePost(int ID, Post newPost) {
        try {
            
             con  = DBConnection.createConnection();

             
             
            PreparedStatement sql = con.prepareStatement("UPDATE Posts SET PostTitle=?,PostContent=?,PostDescribtion=?,PublishDate=?,PostAuthor=?,IsVisiable=?,AllowComments=? WHERE ID=?");
            
            sql.setString(1, newPost.PostTitle);
            sql.setString(2, newPost.PostContent);
            sql.setString(3, newPost.PostDescription);
            sql.setString(4, newPost.PublishDate);
            sql.setString(5, newPost.PostAuthor);
            sql.setBoolean(6, newPost.IsVisiable);
            sql.setBoolean(7, newPost.AllowComments);
            sql.setInt(8, ID);

            sql.executeUpdate();
            
            
              return 1;
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, "ex happened !!!", ex);
            return 0;
        }catch(Exception ex){
           Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
           return 0;
        }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

   
    public int DeletePost(int ID) {
       try {
            
            con  = DBConnection.createConnection();
           
             Post post = new Post();
             
            PreparedStatement sql = con.prepareStatement("DELETE FROM Posts WHERE ID=?");
            sql.setInt(1, ID);

            sql.execute();
            
              return 1;
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, "ex happened !!!", ex);
            return 0;
         } catch(Exception ex){
           Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
           return 0;
        }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    
    public List<Post> SearchPosts(String title) {
    
         try {
            
            con  = DBConnection.createConnection();
             
             Post post;
             List<Post>  posts = new ArrayList<Post>();
            PreparedStatement sql = con.prepareStatement("SELECT * FROM Posts WHERE PostTitle LIKE '%"+title+"%'");
            
            ResultSet res = sql.executeQuery();
           while( res.next()){
            post = new Post();
            post.PostTitle = res.getString(2);
            post.PostContent = res.getString(3);
            post.PostDescription = res.getString(4);
            post.PublishDate = res.getString(5);
            post.IsVisiable = res.getBoolean(6);
            post.AllowComments = res.getBoolean(9);
            post.PostAuthor = res.getString(7);
           posts.add(post);
           }
              return posts;
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, "ex happened !!!", ex);
            return null;
        } catch(Exception ex){
           Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
           return null;
        }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
  
    public int InsertPost(Post post) {
        try {
            
            con  = DBConnection.createConnection();
            
            PreparedStatement sql = con.prepareStatement("INSERT INTO Posts VALUES(?,?,?,?,?,?,?)");
            sql.setString(1, post.getPostTitle());
            sql.setString(2, post.getPostContent());
            sql.setString(3, post.getPostDescription());
            sql.setString(4, post.getPublishDate());
            sql.setBoolean(5, post.isIsVisiable());
            sql.setBoolean(6, post.isAllowComments());
            sql.setString(7, post.getPostAuthor());
            sql.execute();
            
              return 1;
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, "ex happened !!!", ex);
            return 0;
        }catch(Exception ex){
           Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
           return 0;
        }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
       
    }

    
}
