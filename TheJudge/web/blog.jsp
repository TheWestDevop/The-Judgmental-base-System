<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="JN.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html  >
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
                    <a class="navbar-caption text-white display-4 " href="index.jsp"><b class="logo">THE JUDGE NIGERIA</b>
                   </a>
                </span>
            </div>
        </div>
        <div class=" collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav nav-dropdown display-4 nav-right" data-app-modern-menu="true">
<li class="nav-item"><a class="nav-link link text-white" href="index.jsp"><b class="dlink">HOME</b></a></li>
<li class="nav-item"><a class="nav-link link text-white" href="blog.jsp"><b class="dlink">BLOG</b></a></li>
<li class="nav-item"><a class=" dlink nav-link link text-white" href="judge.jsp"><b class="dlink">GET JUDGE</b></a>
</li><li class="nav-item"><a class="dlink nav-link link text-white" href="lawyer.jsp"><b class="dlink">HIRE US</b></a></li>
<li class="nav-item"><a class="dlink nav-link link text-white" href="Client.jsp"><b class="dlink">GET HIRED</b></a></li>
<li class="nav-item"><a class="dlink nav-link link text-white" href="Login.jsp"><b class="dlink">LOGIN</b></a></li>
<li class="nav-item"><a class="dlink nav-link link text-white" href="about.jsp"><b class="dlink">ABOUT US</b></a> </li>
<li class="nav-item"><a class="dlink nav-link link text-white" href="Contact.jsp"><b class="dlink">CONTACT US</b></a></li>
 </ul></div></nav></section>

<div class="judgeClient">
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>


   <div class="main">
       <div align="center"style="width:auto; max-width:300px!important;height:auto; max-height:250px!important;"  ><a href='AddNewPost.jsp'>
               <button  class="btn  btn-block"><b>Add Post</b> &nbsp;<i class="glyphicon glyphicon-plus"></i></button></a></div>
       <div class="align-center" align="center" style="font-weight: bold;">
            <div  align="center" style="font-family:'Times Roman';color:blanchedalmond; text-shadow:5px 5px 10px black;"><h1><b>LATEST POST<b></h1></div>
                        
                    <br>
                                 <%          
   Connection con = null;
   con = DBConnection.getConnection();
   PreparedStatement stat = null;
   ResultSet res = null;
   
        
         String data = "SELECT DISTINCT * FROM Posts ORDER BY PublishDate DESC";
         
   stat = con.prepareStatement(data);
   
  
   res = stat.executeQuery();
   
     
    
    %>
    
   <div class="main" align="center" style="font-weight: bold;">
    
         
      
       <%
            
        while(res.next()){
            
            %>
            <div style="width:auto; max-width:850px;">
               
                
                         
 <div class="container">
  <div class="page-header">
      
    <h1 style="font-size:45px;font-family:'Times';">
        <%=res.getString("PostTitle") %></h1>
        &nbsp;By&nbsp;&nbsp;<sub style="font-size:15px;"><%=res.getString("PostAuthor") %>
        </sub>&nbsp;on&nbsp;<%=res.getString("PublishDate") %>      
  </div><div class="jumbotron">  
        <%=res.getString("PostDescription") %>
  <p><%=res.getString("PostContent") %></p>    

<h3 align="left">Comment</h3>
    
          <form action='comment' method='post' name="form">
              <p align="left" class="">
                  <textarea style="background-color:#f0f0f0!important;width:auto; box-shadow: 5px 4px 40px;" name='comment' id='comment' cols='70%' rows ='5' class="form-control" ></textarea>
                  &nbsp;
                  <input type="text" name='commenter' placeholder="Name to Display" class="form-control" align="left" style="background-color:#f0f0f0; width:auto; max-width: 700px; box-shadow: 5px 4px 40px;"/>
                  
                  <button class="btn btn-info"  style="width:auto; max-width:400px!important;" align="right" >Submit</button>
                  
              </p>
          </form>
    
  </div>
  
</div>
 
               
            </div>
            </div>
         
          <% 
      
        } 
        %>   
             
  </div>
</div>
 

<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>


  </div>
    <div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
  <div class="navbar-fixed-bottom">
<section class="cid-qxxCPx8oL4" id="social-buttons2-3" data-rv-view="242">
<div class="container">
        <div class="media-container-row">
        <div align="center" class="social-list pl-0 mb-0">
                    <i class="follow align-center">FOLLOW US ON!</i>
                    
                    <a href="https://twitter.com/Djudgenigeria">
                        <span class=" px-2 mbr-iconfont mbr-iconfont-social socicon-twitter socicon twit" media-simple="true"></span>
                    </a>
                    <a href="https://www.facebook.com/the judge nigeria">
                        <span class="px-2 mbr-iconfont mbr-iconfont-social socicon-facebook socicon fb" media-simple="true"></span>
                    </a>
                    <a href="https://instagram.com/the judge nigeria">
                        <span class="px-2 mbr-iconfont mbr-iconfont-social socicon-instagram socicon insta" media-simple="true"></span>
                    </a>
                    <a href="https://www.youtube.com/c/the judge nigeria">
                        <span class="px-2 mbr-iconfont mbr-iconfont-social socicon-youtube socicon Ytub" media-simple="true"></span>
                    </a>
                    <a href="https://plus.google.com/u/0/+D judge nigeria">
                        <span class="px-2 mbr-iconfont mbr-iconfont-social socicon-googleplus socicon gp" media-simple="true"></span>
                    </a>
                   
                </div>
            </div>
        </div>
</section>
        <footer class="bg-primary fut "> &copy;COPYRIGHT&nbsp;<script>document.write(new Date().getFullYear());</script>&nbsp;<a href="#">THE JUDGE NIGERIA</a> - All RIGHTS RESERVED.
                  &nbsp;DEVELOPED BY&nbsp;<a href="@yourDigit" style="color:orangered; font-size:25px; font-family:The New Times,serif;">TechGeek</a>&nbsp;and&nbsp;<a style="color:orangered; font-size:25px; font-family:The New Times,serif;">Prof International</a></footer>
    </div>
                  

  
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
