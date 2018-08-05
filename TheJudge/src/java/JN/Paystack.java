/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JN;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ClientAccount.AccountBean;
import ClientAccount.AccountDAO;


/**
 *
 * @author user
 */
public class Paystack extends HttpServlet {

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
        String surname = request.getParameter("surname");
        String othername = request.getParameter("othername");
        String sex = request.getParameter("sex");
        String birthplace  = request.getParameter("birthplace");
        String mstatus = request.getParameter("mstatus");
        String stateorigin = request.getParameter("stateorigin");
        
        String lga  = request.getParameter("lga");
        String spouse = request.getParameter("spouse");
        String numchildren = request.getParameter("numchildren");
        String eduQualification= request.getParameter("eduQualification");
        String age  = request.getParameter("age");
        String occupation = request.getParameter("occupation");
        String natureofwork = request.getParameter("natureofwork");
        String religion = request.getParameter("religion");
        String address  = request.getParameter("address");
        String contact = request.getParameter("contact");
        String email  = request.getParameter("email");
        String ClientBrief = request.getParameter("Clientbrief");
        System.out.println("assigning data to bean......");
        AccountBean ClientData = new AccountBean();
        ClientData.set$surname(surname);
        ClientData.set$othername(othername);
        ClientData.set$sex(sex);
        ClientData.set$birthplace(birthplace);
        ClientData.set$mstatus(mstatus);
        ClientData.set$stateorigin(stateorigin);
       
        ClientData.set$lga(lga);
        ClientData.set$spouse(spouse);
        ClientData.set$numChildren(numchildren);
        ClientData.set$eduqualification(eduQualification);
        ClientData.set$age(age);
        ClientData.set$occupation(occupation);
        ClientData.set$naturework(natureofwork);
        ClientData.set$religion(religion);
        ClientData.set$address(address);
        ClientData.set$contact(contact);
        ClientData.set$email(email);
        ClientData.set$clientbrief(ClientBrief);
        
        AccountDAO accountdao = new AccountDAO();
        
        try{
            String UserValidate = accountdao.validate(ClientData);
            System.out.println("Checking UserValidate.....");
            switch(UserValidate){
                case "SUCCESS" :
                    System.out.println("inserting user data to DB");
                      Connection con;
                 PreparedStatement preparedStatement;
                 
                       try{
            System.out.println(" start inserting to database....");        
                    con = DBConnection.getConnection();
 String query = "insert into users values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
 System.out.println("prepairing.....");
 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
 preparedStatement.setString(1, surname);
 preparedStatement.setString(2, othername);
 preparedStatement.setString(3, sex);
 preparedStatement.setString(4, birthplace); 
 preparedStatement.setString(5, mstatus);
 preparedStatement.setString(6, "Nigeria");
 preparedStatement.setString(7, stateorigin);
 preparedStatement.setString(8, lga);
 if(mstatus =="Single"){
 preparedStatement.setString(9, "Not married");
 preparedStatement.setString(10, "Not married");    
 }else{
 preparedStatement.setString(9, spouse);
 preparedStatement.setString(10, numchildren);
 }


 preparedStatement.setString(11, eduQualification);
 preparedStatement.setString(12, natureofwork);
 preparedStatement.setString(13, religion);
 preparedStatement.setString(14, address);
 preparedStatement.setString(15, email);
 preparedStatement.setString(16, contact);
 preparedStatement.setString(17, "");
 preparedStatement.setString(18, "");
 preparedStatement.setString(19, age);
 preparedStatement.setString(20, ClientBrief);
 preparedStatement.setString(21, occupation);
 
 
 
 System.out.println("load ......");
 
 int i= preparedStatement.executeUpdate();
 System.out.println("Executing updating ......");
 if (i!=0){  //Just to ensure data has been inserted into the database
     String getCase = ClientBrief; 
    session.setAttribute("Case", getCase);
        System.out.println("this is d : " + getCase);
  request.getRequestDispatcher("judgement.").forward(request,response);
 //response.sendRedirect("https://paystack.com/pay/TheJudgeNigeria");
 System.out.println("Saved ......");
  


 }else{
     session.setAttribute("msg", "<span class=\"alert alert-warning\"><button type=\"button\" class=\"close\""
         + " data-dismiss=\"alert\">&times;</button><b><strong>Error!"
         + "</strong>&nbsp; Try Again </b></span>");
    request.getRequestDispatcher("judge.jsp").forward(request, response);
 }
 
  

                    }catch(SQLException e){
            e.printStackTrace();
            
        }
                    break;
             default:
                    System.out.println("Error Message = " + UserValidate);
                    session.setAttribute("msg", UserValidate);
                    request.getRequestDispatcher("judge.jsp").forward(request, response);
                    
                    
            }
            
          
            
        }catch(IOException e){
            e.printStackTrace();
        }catch(Exception e1){
            e1.printStackTrace();
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
    
}
