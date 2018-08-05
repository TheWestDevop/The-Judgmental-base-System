/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GetLawyer;

import JN.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class GetLawyer extends HttpServlet {

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
        HttpSession session = request.getSession();
        
       String Cases = request.getParameter("title");
                Connection con;
                 PreparedStatement preparedStatement;
                   try{
   System.out.println(" start inserting to database....");        
  con = DBConnection.getConnection();
 String query = "insert into cases values (Null,?,?)"; //Insert user details into the table 'USERS'
 System.out.println("prepairing.....");
 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
 preparedStatement.setString(1,(String)session.getAttribute("mail"));
 preparedStatement.setString(2, Cases);
  int i= preparedStatement.executeUpdate();
 System.out.println("Executing inserting into cases ......");
 if (i!=0){  //Just to ensure data has been inserted into the database

request.getRequestDispatcher("ListLawyer.jsp").forward(request, response);


 }else{
     session.setAttribute("emsg", "<span class=\"alert alert-warning\"><button type=\"button\" class=\"close\""
         + " data-dismiss=\"alert\">&times;</button><b><strong>Error!"
         + "</strong>&nbsp;"+"Try again</b></span>");
 System.out.println("Try again");
request.getRequestDispatcher("Complain.jsp").forward(request, response);
 }
 
  

                    }catch(SQLException e){
            e.printStackTrace();
            
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
