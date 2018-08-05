/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EditProfile;

import ClientAccount.AccountDAO;
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
public class EditProfile extends HttpServlet {

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
        
         String surname = request.getParameter("Sname");
        String othername = request.getParameter("Oname");
        String sex = request.getParameter("sex");
        String birthplace  = request.getParameter("birthplace");
        String mstatus = request.getParameter("mstatus");
        String stateorigin = request.getParameter("stateorigin");
       String lga  = request.getParameter("lga");
        String spouse = request.getParameter("spouse");
        String numchildren = request.getParameter("numChildren");
        String eduQualification= request.getParameter("edu");
        String age  = request.getParameter("age");
        String occupation = request.getParameter("occup");
        String natureofwork = request.getParameter("work");
        String religion = request.getParameter("religion");
        String address  = request.getParameter("address");
        String contact = request.getParameter("contact");
        String email  = request.getParameter("mail");
        
        
     
       
       
        System.out.println("assigning data to Profilebean......");
        ProfileBean ClientData = new ProfileBean();
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
        
       
        
        try{
            String UserValidate = "UPDATE";
            System.out.println("Checking UserValidate.....");
            switch(UserValidate){
                case "UPDATE" :
               System.out.println("inserting user data to DB");
                      Connection con;
                 PreparedStatement preparedStatement;
                   try{
            System.out.println(" start inserting to database....");        
                    con = DBConnection.getConnection();
 String query = "UPDATE users SET lastname='"+surname+"',firstname='"+othername+"',sex='"+sex+"',"
         + "pbirth='"+birthplace+"',mstatus='"+mstatus+"',states='"+stateorigin+"',"
         + "nationality='"+"Nigeria"+"',lga='"+lga+"',spouse='"+spouse+"',numchild='"+numchildren+"',"
         + "age='"+age+"',occupation='"+occupation+"',works='"+natureofwork+"',religion='"+religion+"',"
         + "address='"+address+"',phone_contact='"+contact+"',education='"+eduQualification+"' WHERE mail='"+session.getAttribute("mail")+"'"; //Insert user details into the table 'USERS'
 System.out.println("prepairing.....");
 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
 System.out.println("load ......");
 
int i= preparedStatement.executeUpdate();
 System.out.println("Executing updating ......");
 if (i!=0){  //Just to ensure data has been inserted into the database
    
 System.out.println("Saved ......");
 session = request.getSession();
 session.setAttribute("notify", "<span style=\" width:auto; max-width:200px; height:auto; max-height:60px;\" class=\"alert alert-success\"><button type=\"button\" class=\"close\""
         + " data-dismiss=\"alert\">&times;</button><b><strong>Success!"
         + "</strong>&nbsp;"+surname+" "+othername + " You Have successfully Update your profile </b></span>");
 System.out.println(surname + " You Have successfully Update your profile");
request.getRequestDispatcher("userpg.jsp").forward(request, response);
session.invalidate();
preparedStatement.close();
con.close();


 }else{
     session = request.getSession();
 session.setAttribute("notify", "<span style=\" width:auto; max-width:200px; height:auto; max-height:60px;\" class=\"alert alert-warning\"><button type=\"button\" class=\"close\""
         + " data-dismiss=\"alert\">&times;</button><b><strong>Error!"
         + "</strong>&nbsp;"+surname+" "+othername + " Your Update Wasn't Successful </b></span>");
request.getRequestDispatcher("userpg.jsp").forward(request, response);
 }
 
  

                    }catch(SQLException e){
            e.printStackTrace();
            
        }
                    break;
             default:
                    System.out.println("Error Message = " + UserValidate);
                    session.setAttribute("notify",  "<span style=\" width:auto; max-width:200px; height:auto; max-height:60px;\" class=\"alert alert-warning\"><button type=\"button\" class=\"close\""
         + " data-dismiss=\"alert\">&times;</button><b><strong>Warning!"
         + "</strong>&nbsp;"+surname+" "+othername + " Your Update was not successfully try again</b></span>");
                    request.getRequestDispatcher("profile.jsp").forward(request, response);
                    
                    
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
