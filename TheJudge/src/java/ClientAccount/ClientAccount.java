/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClientAccount;

import JN.DBConnection;


import java.io.IOException;


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
public class ClientAccount extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = null;
        
         String surname = request.getParameter("Sname");
        String othername = request.getParameter("Oname");
        String sex = request.getParameter("gender");
        String birthplace  = request.getParameter("pbirth");
        String mstatus = request.getParameter("mStatus");
        String stateorigin = request.getParameter("state");
       String lga  = request.getParameter("lga");
        String spouse = request.getParameter("spouse");
        String numchildren = request.getParameter("numChild");
        String eduQualification= request.getParameter("edu");
        String age  = request.getParameter("age");
        String occupation = request.getParameter("occup");
        String natureofwork = request.getParameter("work");
        String religion = request.getParameter("religion");
        String address  = request.getParameter("address");
        String contact = request.getParameter("contact");
        String email  = request.getParameter("mail");
        String brief  = request.getParameter("Cbrief");
        
     
       
       
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
        ClientData.set$clientbrief(brief);
        

        System.out.println("processing one done.....");
        
             
        
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
 preparedStatement.setString(20, brief);
 preparedStatement.setString(21, occupation);
 
 
 
 
 System.out.println("load ......");
 
 
 
 int i= preparedStatement.executeUpdate();
 System.out.println("Executing updating ......");
 if (i!=0){  //Just to ensure data has been inserted into the database
    
 System.out.println("Saved ......");
 session = request.getSession();
 session.setAttribute("msg", "<span class=\"alert alert-success\"><button type=\"button\" class=\"close\""
         + " data-dismiss=\"alert\">&times;</button><b><strong>Success!"
         + "</strong>&nbsp;"+surname+" "+othername + " You Have successfully register login to access your page </b></span>");
 System.out.println(surname + " You Have successfully register kindly login to access your page");
response.sendRedirect("https://paystack.com/pay/8-dvhvh25b");


 }else{
      
 System.out.println("Saved ......");
 session = request.getSession();
 session.setAttribute("msg", "<span class=\"alert alert-warning\"><button type=\"button\" class=\"close\""
         + " data-dismiss=\"alert\">&times;</button><b><strong>Error!"
         + "</strong>&nbsp;"+surname+" "+othername + " Your registration wasn't successful try again </b></span>");
 System.out.println(surname + "Your registration wasn't successful try again");
request.getRequestDispatcher("lawyer.jsp").forward(request, response);


 }
 
  

                    }catch(SQLException e){
            e.printStackTrace();
            
        }
                    break;
             default:
                    System.out.println("Error Message = " + UserValidate);
                    session.setAttribute("errmsg", UserValidate);
                    request.getRequestDispatcher("lawyer.jsp").forward(request, response);
                    
                    
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
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
