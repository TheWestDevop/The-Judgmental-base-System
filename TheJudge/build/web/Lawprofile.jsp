<%-- 
    Document   : profile
    Created on : Jun 5, 2018, 1:35:02 AM
    Author     : user
--%>

<%@page import="ClientAccount.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<% 
   String sname = (String) session.getAttribute("sname");
   String oname = (String) session.getAttribute("oname");
   String sex = (String) session.getAttribute("sex");
   String bplace = (String) session.getAttribute("bplace");
   String mstatus = (String) session.getAttribute("mstatus");
   String state = (String) session.getAttribute("state");
   String lga = (String) session.getAttribute("lga");
   String spouse = (String) session.getAttribute("spouse");
   String child = (String) session.getAttribute("child");
   String edu = (String) session.getAttribute("edu");
   String age = (String) session.getAttribute("age");
   String occupation = (String) session.getAttribute("occupation");
   String work = (String) session.getAttribute("work");
   String religion = (String) session.getAttribute("religion");
   String address = (String) session.getAttribute("address");
   String contact = (String) session.getAttribute("contact");
   String email = (String) session.getAttribute("email");
   String notify =(String) session.getAttribute("notify");
          
%>
<!DOCTYPE html>
<html>
    <head>
        <title>THE JUDGE NIGERIA</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="shortcut icon" href="assets/images/the new judge 1.png" type="image/x-icon">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rubik:300,300i,400,400i,500,500i,700,700i,900,900i">
 <link href="assets/DigiT/digit.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="assets/tether/tether.min.css"/>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" href="assets/soundcloud-plugin/style.css"/>
  
<link rel="stylesheet" href="assets/dropdown/css/style.css"/>

  <link rel="stylesheet" href="assets/socicon/css/styles.css"/>
  
<link rel="stylesheet" href="assets/theme/css/style.css"/>

  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css"/>
  <link href="assets/DigiT/dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
  <link href="assets/DigiT/dist/css/bootstrap.min_1.css" rel="stylesheet" type="text/css"/> 
  <link href="../assets/DigiT/animate.css" rel="stylesheet" type="text/css"/>
  <link href="../assets/DigiT/theme/gold.css" rel="stylesheet" type="text/css"/>
  <link href="../assets/DigiT/theme/red.css" rel="stylesheet" type="text/css"/>
  <link href="../assets/DigiT/style.css" rel="stylesheet" type="text/css"/>
  <meta name="description" content="WELCOME TO OUR  HOME PAGE">
    </head>
    
<body ng-controller="Homecontroller">
    <section style="background-color:black!important;" class="menu cid-qxxtQ1dndV" id="menu1-1" data-rv-view="237">
<nav class="navbar navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
  
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    
                         <img src="assets/images/the new judge 1.png" alt="the judge logo" height="50" title="" media-simple="true">
                    
                </span>
                <span class="navbar-caption-wrap">
                    <a class="navbar-caption text-white display-4 " href="lawyerHome.jsp"><b class="logo">THE JUDGE NIGERIA</b>
                   </a>
                </span>
            </div>
        </div>
        <div class=" collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav nav-dropdown display-4 nav-right" data-app-modern-menu="true">
<li class="nav-item"><a class="nav-link link text-white" href="lawyerHome.jsp"><b class="dlink">Home</b></a></li>
<li class="nav-item"><a class="dlink nav-link link text-white" href="previousCase.jsp"><b class="dlink">Previous Cases</b></a> </li>

<li class="nav-item"><a class="dlink nav-link link text-white" href="Lawprofile.jsp"><b class="dlink">My Profile</b></a> </li>
<li class="nav-item"><a class="dlink nav-link link text-white" href="Out.jsp"><b class="dlink">Log-Out&nbsp;<span class='glyphicon glyphicon-log-out'></span></b></a></li>
  </ul></div></nav></section>

<div class="judgeClient">
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>

<div>&nbsp;</div>
<div class="container">
<div  align="center" style="color:blanchedalmond; text-shadow:5px 5px 10px black;"><h2><b>EDIT MY PROFILE<b></h2></div>
                   <br>
               <div class="g-position--relative g-bg-color--primary">
            <div class="g-container--md g-padding-y-80--xs g-padding-y-125--sm">
                               
             
                <form method="post" action="EditProfile"  class="center-block g-width-500--sm g-width-550--md">
                    

                     
                     <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                            <input type="text"  value="${sname}" name="Sname" class="form-control s-form-v3__input" placeholder="Surname"  min-length="1"  >
                           
                        </div>
                        <div class="col-sm-6">
                            <input type="text" value="${oname}" name="Oname"  class="form-control s-form-v3__input" placeholder="Other Names"  >
                        </div>
                    </div> 
                        <br>
                    <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                             <select name="sex" class="form-control s-form-v3__input" readonly>
                                 <option value="${sex}">${sex}</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </div>
                        <div class="col-sm-6">
                            <input type="text" name="birthplace" style="background-color: transparent" value="${bplace}"  class="form-control s-form-v3__input" placeholder="Place of birth" readonly >
                        </div>
                    </div>
                        <br>
                       <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                            <select  class="form-control s-form-v3__input"  name="mstatus" >
                                <option value="${mstatus}">${mstatus}
                                </option>
                                <option value="Married">Married</option>
                                <option value="Single">Single</option>
                            </select>
                        </div>
                        <div class="col-sm-6">
                            
                            
                                 <select  style="font-weight:bold;width:auto; max-width:300px" class="form-control s-form-v3__input"  name="stateorigin" readonly>
                                <option value="${state}">${state}</option>
                               <%
ResultSet  resultset;
 try{
 Connection    conn = DBConnection.getConnection();
Statement   ps =  conn.createStatement();resultset = ps.executeQuery("SELECT * FROM client_state");
while(resultset.next()){%>
<option value ="<%= resultset.getString("state")%>">
<%= resultset.getString("state")%> </option>
 <%}}catch(Exception ex){ex.printStackTrace();out.println("Error " + ex.getMessage());}%>
                            
                            </select>
                        </div>
                    </div>  
                        <br>
                        <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                               <input type="text"   style="background-color: transparent" name="country" value="Nigeria" class="form-control s-form-v3__input" placeholder="Nigeria" readonly>
                      
                        </div>
                        <div class="col-sm-6">
                             <select style="font-weight:bold; width:auto; max-width:230px" required class="form-control s-form-v3__input"  name="lga" readonly >
                                <option value="${lga}">${lga}</option>
                                <%

 try{
 Connection    conn = DBConnection.getConnection();
Statement   ps =  conn.createStatement();resultset = ps.executeQuery("SELECT * FROM client_lga");
while(resultset.next()){%>
<option value ="<%= resultset.getString("lga")%>">
<%= resultset.getString("lga")%> </option>
 <%}}catch(Exception ex){ex.printStackTrace();out.println("Error " + ex.getMessage());}%>
                                
                            </select>
                        </div>
                    </div>  
                        <br>
                            <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                           <input type="text" name="spouse" value="${spouse}"class="form-control s-form-v3__input" placeholder="Name of Spouse" >
                      
                        </div>
                        <div class="col-sm-6">
                            <input type="number" name="numchildren" value="${child}" class="form-control s-form-v3__input" min="0" placeholder="Number of Children">
                        </div>
                    </div>
                        <br>
                            <div class="row g-row-col-5 g-margin-b-50--xs">
                             <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                        <input type="text" name="edu" value="${edu}" class="form-control s-form-v3__input" placeholder="Current Education Qualification" >
                             </div>
                                <div class="col-sm-6">
                                    <input type="number" name="age" value="${age}" class="form-control s-form-v3__input" min="20" max="100" placeholder="Age">
                                </div>
                            </div>
                         <br>
                       <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                           <input type="text" name="occup"  value="${occupation}" class="form-control s-form-v3__input" placeholder="Occupation" min="0"  >
                      
                        </div>
                        <div class="col-sm-6">
                            <input type="text" value="${work}" name="natureofwork" class="form-control s-form-v3__input" placeholder="Nature of work" >
                        </div>
                    </div>     
                         <br>   
                       <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                           <input type="text" name="religion" value="${religion}" class="form-control s-form-v3__input" placeholder="Religion" >
                      
                        </div>
                        <div class="col-sm-6">
                            <input type="text" name="address" value="${address}" class="form-control s-form-v3__input" placeholder="Official Address">
                        </div>
                    </div>    
                          <br> 
                        <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                           <input type="number" name="contact" value="${contact}" class="form-control s-form-v3__input" placeholder="Official Contact" >
                      
                        </div>
                        <div class="col-sm-6">
                            <input type="email" name="mail"  style="background-color: transparent" value="${email}" class="form-control s-form-v3__input" placeholder="Email" readonly>
                        </div>
                    </div>        
                      
                   
                    <br><br>
                   
                
            
          
        
        <br>
         <br>
         <br>
                          <div align="center">${notify}</div>
         <br>  
           <br>
         <input type="submit"  class="btn btn-block bg-primary " value="SAVE" />
     </form>
                       <br>
                       <br>
                     
                       </div>
                  </div>
  </div>
</div>
</div>
  </div>
         
<section class="cid-qxxCPx8oL4" id="social-buttons2-3" data-rv-view="242">
<div class="container">
        <div class="media-container-row">
        <div align="center" class="social-list pl-0 mb-0">
                    <i align="center"class="follow align-center">FOLLOW US ON!</i>
                    
                    <a align="center" href="https://twitter.com/Djudgenigeria">
                        <span class=" px-2 mbr-iconfont mbr-iconfont-social socicon-twitter socicon twit" media-simple="true"></span>
                    </a>
                    <a align="center" href="https://www.facebook.com/the judge nigeria">
                        <span class="px-2 mbr-iconfont mbr-iconfont-social socicon-facebook socicon fb" media-simple="true"></span>
                    </a>
                    <a align="center" href="https://instagram.com/the judge nigeria">
                        <span class="px-2 mbr-iconfont mbr-iconfont-social socicon-instagram socicon insta" media-simple="true"></span>
                    </a>
                    <a align="center" href="https://www.youtube.com/c/the judge nigeria">
                        <span class="px-2 mbr-iconfont mbr-iconfont-social socicon-youtube socicon Ytub" media-simple="true"></span>
                    </a>
                    <a align="center" href="https://plus.google.com/u/0/+D judge nigeria">
                        <span class="px-2 mbr-iconfont mbr-iconfont-social socicon-googleplus socicon gp" media-simple="true"></span>
                    </a>
                   
                </div>
            </div>
        </div>
</section>
        <footer class="bg-primary fut"> &copy;COPYRIGHT&nbsp;<script>document.write(new Date().getFullYear());</script>&nbsp;<a href="#">THE JUDGE NIGERIA</a> - All RIGHTS RESERVED.
                  &nbsp;DEVELOPED BY<a href="@yourDigit" style="color:orangered; font-size:25px; font-family:The New Times,serif;">TechGeek</a>&nbsp;and&nbsp;<a style="color:orangered; font-size:25px; font-family:The New Times,serif;">Prof International</a></footer>
                  


                  


 <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>


  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/smooth-scroll.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touch-swipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/jarallax/jarallax.min.js"></script>
  <script src="assets/social-likes/social-likes.js"></script>
  <script src="assets/theme/js/script.js"></script>
  
  
</body>
</html>