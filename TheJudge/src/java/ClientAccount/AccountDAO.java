/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClientAccount;

import java.io.IOException;

import javax.servlet.ServletException;


/**
 *
 * @author user
 */
public class AccountDAO {
    public String validate(AccountBean accountbean) throws ServletException, IOException{
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
        
        String Clientbrief = accountbean.get$clientbrief();
       
    
          System.out.println("Checking the if statement");
          
        if(surname.isEmpty() && surname.equals("")){
            return "Surname is Empty";
            
        }else if(othername.isEmpty() && othername.equals("")){
            return "Othername is Empty";
            
        }else if(sex.isEmpty() && sex.equals("")){
            return "sex is Empty";
            
        }else if(birthplace.isEmpty() && birthplace.equals("")){
            return "birthplace is Empty";
            
        }else if(mstatus.isEmpty() && mstatus.equals("")){
            return "Marital Status is Empty";
            
        }else if(stateorigin.isEmpty() && stateorigin.equals("")){
            return "State of Origin is Empty";
            
        }else if(lga.isEmpty() && lga.equals("")){
            return "LGA is Empty";
            
        }else if(eduQualification.isEmpty() && eduQualification.equals("")){
            return "Education Qualification is Empty";
            
        }else if(age.equals(0)){
            return "Age is below 20";
            
        }else if(occupation.isEmpty() && occupation.equals("")){
            return "Occupation is Empty";
            
        }else if(natureofwork.isEmpty() && natureofwork.equals("")){
            return "Nature of Work is Empty";
            
        }else if(religion.isEmpty() && religion.equals("")){
            return "Religion is Empty";
            
        }else if(address.isEmpty() && address.equals("")){
            return "Official Address  is Empty";
            
        }else if(contact.isEmpty() && contact.equals("") && contact.equals(0)){
            return "Official Contact  is Empty";
            
        }else if(email.isEmpty() && email.equals("")){
            return "Email is Empty";
            
        }
        else {
            System.out.println("finished checking if statement");
           return "SUCCESS";
        }

 }
 

    }
 


