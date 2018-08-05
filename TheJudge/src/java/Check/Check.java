/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Check;


import ClientAccount.DBConnection;
import java.io.IOException;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class Check extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param session servlet session
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String getUser = request.getParameter("username");
        String getPass = request.getParameter("password");
        HttpSession session = request.getSession() ;
        session.setAttribute("mail", getUser);
  
         Connection con =null;
         Connection conn = null;
        
        Bean setBean = new Bean();
        setBean.set$username(getUser);
        setBean.set$password(getPass);
        
        dao checkdao = new dao();
        String check = checkdao.Verify(setBean);
        switch(check){
            case "CLIENT":
                
     con = DBConnection.getConnection();
     
     PreparedStatement stat = null;
      ResultSet res = null;
                          
   



 
    System.out.print("inside profile page :"+getUser+"\n");
    
        String data = "SELECT *\n" +
"FROM users\n" +
"WHERE mail = '"+getUser+"'";
         stat = con.prepareStatement(data);
                     res = stat.executeQuery();

while(res.next()){
             session.setAttribute("sname", res.getString("lastname"));
             session.setAttribute("oname",res.getString("firstname"));
             session.setAttribute("sex",res.getString("sex"));
             session.setAttribute("bplace",res.getString("pBirth"));
             session.setAttribute("mstatus",res.getString("mstatus"));
             session.setAttribute("state",res.getString("states"));
             session.setAttribute("lga",res.getString("lga"));
             session.setAttribute("spouse",res.getString("spouse"));
             session.setAttribute("child",res.getString("numchild"));
             session.setAttribute("edu",res.getString("Education"));
             session.setAttribute("age",res.getString("age"));
             session.setAttribute("occupation",res.getString("occupation"));
             session.setAttribute("work",res.getString("works"));
             session.setAttribute("religion",res.getString("religion"));
             session.setAttribute("address",res.getString("address"));
             session.setAttribute("contact",res.getString("phone_contact"));
             session.setAttribute("email",res.getString("mail"));
          
             
                 
}
res.close();
stat.close();
con.close();
                request.getRequestDispatcher("userpg.jsp").forward(request, response);
                break;
                case "LAWYER":
    conn =  DBConnection.getConnection();
   PreparedStatement sta = null;
    ResultSet result = null;
   
    System.out.print("inside profile page :"+getUser+"\n");
    
        String getdata = "SELECT *\n" +
"FROM users\n" +
"WHERE mail = '"+getUser+"'";
         sta = conn.prepareStatement(getdata);
            result = sta.executeQuery();

while(result.next()){
             session.setAttribute("sname", result.getString("lastname"));
             session.setAttribute("oname",result.getString("firstname"));
             session.setAttribute("sex",result.getString("sex"));
             session.setAttribute("bplace",result.getString("pBirth"));
             session.setAttribute("mstatus",result.getString("mstatus"));
             session.setAttribute("state",result.getString("states"));
             session.setAttribute("lga",result.getString("lga"));
             session.setAttribute("spouse",result.getString("spouse"));
             session.setAttribute("child",result.getString("numchild"));
             session.setAttribute("edu",result.getString("Education"));
             session.setAttribute("age",result.getString("age"));
             session.setAttribute("occupation",result.getString("occupation"));
             session.setAttribute("work",result.getString("works"));
             session.setAttribute("religion",result.getString("religion"));
             session.setAttribute("address",result.getString("address"));
             session.setAttribute("contact",result.getString("phone_contact"));
             session.setAttribute("email",result.getString("mail"));
             session.setAttribute("casegiven",result.getString("CaseGiven"));               
             session.setAttribute("casewon",result.getString("CaseWon"));
             
                 
}

result.close();
sta.close();
conn.close();
                request.getRequestDispatcher("lawyerHome.jsp").forward(request, response);
                
                break;
            default:
                    System.out.println("Error Message = " + check);
                    
                    session.setAttribute("emsg", check);
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                    session.invalidate();
                    break;
        
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Check.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Check.class.getName()).log(Level.SEVERE, null, ex);
        }
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
