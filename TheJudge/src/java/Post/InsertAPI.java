/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Post;

import JN.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
public class InsertAPI extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String post = request.getParameter("txtContent");
    String author = request.getParameter("txtAuthor");
    String postTitle = request.getParameter("txtTitle");
    String postDescription = request.getParameter("txtDescription");
    
     Connection con = null;
    PreparedStatement psmt = null;
    con = DBConnection.getConnection();
    
    
    java.sql.Date PostDate = new java.sql.Date(new java.util.Date().getTime());
    PostDate.toString();
    
    System.out.print("gotten the Data\n");
    PostBean dataBean = new PostBean();
    dataBean.setPostContent(post);
    dataBean.setPostAuthor(author);
    dataBean.setPostTitle(postTitle);
    dataBean.setPublishDate(PostDate);
    dataBean.setPostDescription(postDescription);
        System.out.print("pass the Data\n");
    PostDAO state = new PostDAO();
   
     String validate = state.addPost(dataBean);
     switch(validate){
       case "Post" :
           System.out.print("Save the Data\n");
           
           request.getRequestDispatcher("blog.jsp").forward(request, response);
           System.out.print("Saved !!!!!");
           
            break;
   default:
           System.out.print("Error!!!!!");
           request.getRequestDispatcher("AddNewPost.jsp").forward(request, response);
                
                
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
