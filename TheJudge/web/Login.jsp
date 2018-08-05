<%-- 
    Document   : login
    Created on : Apr 24, 2018, 6:58:07 PM
    Author     : user
--%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

  <html ng-app="control" >
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
  <style>
           .tps{
    outline: none;
    padding:1.9em;
    padding-top: 0.5em;
    width: 80%;
    height: 25px;
    text-align: center;
    font-size: 1em;
    margin-top: 1em;
    margin-left:0px; 
    border: none;
    color: #fff;
    cursor: pointer;
    background: #66ff66;
    box-shadow: 0px 2px 1px rgba(28, 28, 29, 0.42);
	border-radius: 22px;
}
.tpx{
    outline: none;
    padding: 1.9em;
    padding-top:0.5em;
    width: 60%;
    height:25px; 
    text-align: center;
    font-size: 1em;
    margin-top: 1em;
    margin-left:0px; 
    border: none;
    color: #000;
    cursor: pointer;
    background: #ff3300;
    box-shadow: 0px 2px 1px #83d9ce;
   border-radius: 22px;
}
        .heading{
    color:#ffff99;
    text-shadow:5px 0px black;
    text-align:center;
    font-family: sans-serif;
    font-kerning: auto;
    font-size:55px;
    font-style:normal;
    font-weight:bolder;
    border-color: #fd0101;
        
}
.adminlog{
    color:#ffffcc;
    text-shadow:5px 0px black;
    text-align:center;
    font-family: sans-serif;
    font-kerning: auto;
    font-style:normal;
    font-weight:bolder;
    border-color: #000;
}
    .signin-form {
     background-image:url(img/bkg-blu.jpg);
    padding: 2em 2em;
	text-align: center;
        border:black !important;
        border-color:black!important;
        border-radius:10px; 
    max-width:450px;
    max-height:450px; 
       background-size: cover;
    padding: 2em 2em;

} 
#skul{
    
   font-family:The New Times,serif;
    font-weight:bold;
    text-align: center;
}


/*--signin-form--*/
.w3 {
    float: left;
    width: 48%;
    margin-right: 4%;
}
.agile {
    float: right;
    width: 48%;
}
.signin-form {
    background: url(../images/bkg-blu.jpg)no-repeat 0px 0px;
    background-size: cover;
    border:5px;
    border-style: outset!important;
    border-color: #cccccc !important;
    padding: 2em 2em;
	text-align: center;
        opacity:2; 
        height: 470px;
}
.signin-form h3 {
    font-size: 2em;
    color: #fff;
    font-weight: 700;
    margin-bottom: 1.5em;
}
.signin-form h3 span {
    color: #67e1ff;
}
.signin-form img {
    border-radius: 50%;
}
.login-form {
    margin: 1em 0 2.5em;
}
.signin-form input[type="email"], .signin-form input[type="password"] {
    width:auto;
    max-width: 400px;
    min-width: 100px;
    padding: 1em 1em 1em 1em;
    font-size: 1em;
    font-weight: bold;
    outline: none;
    color: #000;
    border: none;
    border-bottom: 2px solid #000;
	letter-spacing: 1px;
	text-align:center;
}
.signin-form input[type="email"] {
    background: none;
   
}
.signin-form input[type="password"] {
     background: none;
   
}
::-webkit-input-placeholder{
       color:#000 !important;
       font-family:cursive;
       font-weight: bolder;
       font-size:15px; 
	
}
::-moz-input-placeholder{
       color:#000 !important;
       font-family:cursive;
       font-weight: bolder;
       font-size:15px; 
	
}
::-o-input-placeholder{
       color:#000 !important;
       font-family:cursive;
       font-weight: bolder;
       font-size:15px; 
	
}
::-ms-input-placeholder{
       color:#000 !important;
       font-family:cursive;
       font-weight: bolder;
       font-size:15px; 
	
}
.signin-form input[type="submit"] {
    outline: none;
    padding: 0.9em 0;
    width: 100%;
    text-align: center;
    font-size: 1em;
    margin-top: 1em;
    border: none;
    color: #fff;
    cursor: pointer;
    background: #0a3b70;
    box-shadow: 0px 2px 1px rgba(28, 28, 29, 0.42);
	border-radius: 22px;
	
}
.signin-form input[type="submit"]:hover {
    color: #fff;
    background: #002242;
    transition: .5s all;
	-webkit-transition: .5s all;
    -moz-transition: .5s all;
    -o-transition: .5s all;
    -ms-transition: .5s all;
}
.signin-form p a {
    font-size: 0.875em;
    color: #fff;
    letter-spacing: 1px;
}
/*--//signin-form--*/
</style>
 <meta name="description" content="WELCOME TO OUR  HOME PAGE">
    </head>
<body ng-controller="MainController">
    <%
        String errormsg = (String) session.getAttribute("errmsg");
        String msg = (String) session.getAttribute("msg");   
    %>

<section class="menu cid-qxxtQ1dndV" id="menu1-1" data-rv-view="237">
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
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;</div>
  
   <div class="main">
  <div align="center" style="border:black!important;">
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>   
${msg}
<div class="signin-form">
    <form method="post" action="Check" id="Alogin"  >
 <br>
 <div class="login-form">
    <i class="glyphicon glyphicon-user"></i><input type="email" name="username" placeholder="Email" autocomplete="true" >
   
         <br>
         
             <i class="glyphicon glyphicon-lock"></i><input type="password" name="password" placeholder="Phone Number" >
         
<br>
<br>
<span style="color:red; font-weight: bold">${emsg}</span>
<div class="tp">
<input type="submit" style="font-family:cursive; font-weight:bold;width:240px!important; "value="LOGIN NOW">
</div>
 <input type="button" class="tps" style="color:black; font-family:cursive; font-weight:bold;width:180px!important; " value="Don't have an Account &quest;">
 <br><input type="button" class="tpx" style="color:black; font-family:cursive; font-weight:bold;width:180px!important; " value="Forgotten Password &quest;">
<div>&nbsp;</div>
<p><a href="#" style="color:black; font-family:cursive; font-weight:bolder ; font-size: 20px; margin-top:35px; ">Find Assistance Here &quest;&nbsp;<i class="fa fa-home"></i></a></p>
   
</div> 
</form>
</div>
 </div>

</div>
  <div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
  </div>


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
        <footer class="bg-primary fut"> &copy;COPYRIGHT&nbsp;<script>document.write(new Date().getFullYear());</script>&nbsp;<a href="#">THE JUDGE NIGERIA</a> - All RIGHTS RESERVED.
                  &nbsp;DEVELOPED BY<a href="@yourDigit" style="color:orangered; font-size:25px; font-family:The New Times,serif;">TechGeek</a>&nbsp;and&nbsp;<a style="color:orangered; font-size:25px; font-family:The New Times,serif;">Prof International Network</a></footer>
     
                  
<script src="angular.js"></script>
<script src="angular.min.js"></script>
<script src="angular-route.js"></script>
<script src="assets/DigiT/app.js"></script>
<script src="assets/DigiT/controllers.js"></script>  
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