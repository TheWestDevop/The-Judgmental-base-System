<%-- 
    Document   : Complain
    Created on : May 27, 2018, 4:19:35 PM
    Author     : user
--%>

<%@page import="ClientAccount.loadlawyers"%>
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
                    <a class="navbar-caption text-white display-4 " href="userpg.jsp"><b class="logo">THE JUDGE NIGERIA</b>
                   </a>
                </span>
            </div>
        </div>
        <div class=" collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav nav-dropdown display-4 nav-right" data-app-modern-menu="true">
<li class="nav-item"><a class="nav-link link text-white" href="userpg.jsp"><b class="dlink">Home</b></a></li>
<li class="nav-item"><a class="dlink nav-link link text-white" href="PreviousCases.jsp"><b class="dlink">My Case's</b></a></li>
<li class="nav-item"><a class="dlink nav-link link text-white" href="Complain.jsp"><b class="dlink">Make New Case </b></a> </li>

<li class="nav-item"><a class="dlink nav-link link text-white" href="profile.jsp"><b class="dlink">My Profile</b></a> </li>
<li class="nav-item"><a class="dlink nav-link link text-white" href="Out.jsp"><b class="dlink">Log-Out&nbsp;<span class='glyphicon glyphicon-log-out'></span></b></a></li>
 </ul></div></nav></section>

<div class="judgeClient">
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<%
    loadlawyers list = new loadlawyers();
%>

   <div class="main">
       <div class="align-center" align="center" style="font-weight: bold;">
           <div class="container">
              
                <div align="center"></div>
         <br> 
               <div class="well-lg" style="">
                    <%=(list)%>
               </div>
                   
                  
           </div>
                      

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
        <div class="social-list pl-0 mb-0">
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

