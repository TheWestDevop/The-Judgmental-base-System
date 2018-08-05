/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EditProfile;

import java.io.IOException;
import javax.servlet.ServletException;

/**
 *
 * @author user
 */
public class CheckUpdate {
        public String validate(ProfileBean accountbean) throws ServletException, IOException{
        String surname = accountbean.get$surname();
        String othername = accountbean.get$othername();
        String sex = accountbean.get$sex();
        String birthplace = accountbean.get$birthplace();
        String mstatus = accountbean.get$mstatus();
        String stateorigin = accountbean.get$stateorigin();
        String nationality = accountbean.get$nationality();
        String lga = accountbean.get$lga();
        String spouse =accountbean.get$spouse();
        String numChildren = accountbean.get$numChildren();
        String eduQualification = accountbean.get$eduqualification();
        String age = accountbean.get$age();
        String occupation = accountbean.get$occupation();
        String natureofwork =accountbean.get$naturework();
        String religion = accountbean.get$religion();
        String address = accountbean.get$address();
        String contact = accountbean.get$contact();
        String email = accountbean.get$email();
        
       
       
    
          System.out.println("Checking the if statement");
          
      return "UPDATE";
 }
    
}
