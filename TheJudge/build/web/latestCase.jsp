<%-- 
    Document   : profile
    Created on : Jun 5, 2018, 1:35:02 AM
    Author     : user
--%>

<%@page import="ClientAccount.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>


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
<li class="nav-item"><a class="dlink nav-link link text-white" href="latestCases.jsp"><b class="dlink">Recent Cases</b></a></li>
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
<div  align="center" style="color:blanchedalmond; text-shadow:5px 5px 10px black;"><h2><b>RECENT CASES<b></h2></div>
                   <br>
                   <%          
   Connection con = null;
   con = DBConnection.getConnection();
   PreparedStatement stat = null;
   ResultSet res = null;
  
        
         String data = "SELECT DISTINCT User_Case\n" +
"FROM cases\n";
   stat = con.prepareStatement(data);
   
  
   res = stat.executeQuery();
   
     
    
    %>
    
   <div class="main">
       <div class="align-center" align="center" style="font-weight: bold;">
           <div  align="center" style="color:blanchedalmond; text-shadow:5px 5px 10px black;"><h2><b>MY PREVIOUS CASE'S<b></h2></div>
                   <br>
      
       <%
            int a = 1;
        while(res.next()){
            
            %>
            <div style="width:auto; max-width:850px;">
                <form action="NotifyClient" method="POST">
                
            <div class="panel panel-info">
                <div class="panel-heading">CASE&nbsp;&nbsp;<%=a%></div>
      <div class="panel-body">

            
            <%=res.getString("User_Case") %>
            <input type="submit" value="INTERESTED" />
    </div>
            </form>
            </div>
            </div>
          <% 
          a++;    
        } 
        %>      
              
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