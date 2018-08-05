<%-- 
    Document   : judgement
    Created on : Mar 27, 2018, 1:20:09 PM
    Author     : user
--%>
<%@page import="JN.checkcases"%>
<%@page session="true" %>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="ClientAccount.AccountBean"%>
<%@page import="JN.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html ng-app="control" >
    <head>
             <title>THE JUDGE NIGERIA</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="shortcut icon" href="assets/images/the new judge 1.png" type="image/x-icon">
 <link href="assets/DigiT/digit.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="assets/tether/tether.min.css"/>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" href="assets/soundcloud-plugin/style.css"/>
  
<link rel="stylesheet" href="assets/dropdown/css/style.css"/>

  <link rel="stylesheet" href="assets/socicon/css/styles.css"/>
  
<link rel="stylesheet" href="assets/theme/css/style.css"/>

  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css"/>
    </head>
    <body ng-controller="MainController">
    
<section class="menu cid-qxxtQ1dndV" id="menu1-1" data-rv-view="237">
<nav class="navbar navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
  
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    
                         <img src="assets/images/the new judge 1.png" alt="the judge logo" height="50" title="" media-simple="true">
                    
                </span>
                <span class="navbar-caption-wrap">
                    <a class="navbar-caption text-white display-4 " href="#"><b class="logo">THE JUDGE NIGERIA</b>
                   </a>
                </span>
            </div>
        </div>
    <form method="post"  action="index.jsp" >
        <button class="btn btn-primary btn-block" style="color:white;margin-left:-10px; border-style:outset; font-size: 15px; font-weight:bold; font-family: 'New Roman Times'">GO TO HOME
        </button></form></nav></section>
    
 <div class="judgeClient">
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div class="container">
    <%
        checkcases check = new checkcases();
        System.out.println("now in get judge servlet");
        Connection con;
        PreparedStatement preparedStatement;

        System.out.println(" start inserting to database....");        
        System.out.println("load ......");
        System.out.println("checking search ......");
        String get;
        get = (String)session.getAttribute("Case");
        System.out.println("this is the word"+get);
        String cases = check.checkcase(get);
        System.out.println("/n"+cases);
  if( cases != "Case Not Found"){
          con = DBConnection.getConnection();
          String a1 = "SELECT * FROM cases_property_judgement WHERE case_id = '" +cases+"'";
          preparedStatement = con.prepareStatement(a1);
          ResultSet rs =preparedStatement.executeQuery();
          while(rs.next()){
           %>
           <div>
           <div> 
    <h1 align="center"  style="color:green; font-size: 40px; font-weight: bolder; font-family: 'New Roman Times';">
      
                    IN THE SUPREME COURT OF NIGERIA<h2 align="center" style="color:black;font-size: 20px; font-weight: bold;  " class="mbr-section-subtitle align-center mbr-light pb-3 mbr-fonts-style display-7">
         
         <%=rs.getString("Case_Date")%></h2>
   
           </div>
          
    <div align="center">
         <h2 align="center" style="color:green;font-size: 25px; font-weight: bolder; ">BEFORE THEIR LORDSHIP </h2>
         <p align="center" style="color:black;font-size: 17px; font-weight: bold; "><%=rs.getString("Case_Lordship")%> </p>
    </div>
    <div>
         <p align="center" style="color:brown;font-size: 20px; font-weight:bolder; "><%=rs.getString("Case_Code")
             %> </p>
    </div>
         <p align="center" style="color:green; font-size: 25px; font-weight: bolder;">BETWEEN</p>
         <p align="center" style="color:black;font-size: 17px; font-weight: bold; "><%=
          rs.getString("Case_Appellant")
         %> </p>
         <p align="center" style="color:green; font-size: 25px; font-weight: bolder; ">
         AND</p>
          <p align="center" style="color:black;font-size: 17px; font-weight: bold; "><%=
              rs.getString("Case_Respondent")
         %> </p>
          <p align="center" style="color:green; font-size: 25px; font-weight: bolder;">JUDGEMENT OF THE COURT DELIVERED
          BY</b>
          <p align="center" style="color:black;font-size: 17px; font-weight: bold; "> <%=
             rs.getString("Case_DeliverJudgementBy")
         %> </p>
          <p align="center" style="color:black; font-size: 15px; font-weight:400; font-family: 'New Roman Times';"><%=
               rs.getString("Case_Judgement")
         %> </p>
           </div>
         <%}
session.invalidate();
session.removeAttribute("Case");
         }else{
       String msg = "<h6>Kindly re-phrase your word to suit cases in our database <br> <br> property under native law and custom"
+ "<br>appointment, qualification, tenure of office and removal of the judge of a court"
+ "<br>every judgement is conclusive proof, as against parties and privies, unless evidence delivered which is excluded in the action it is intended to be proved"
+ "<br>set aside a wrongly sale of land"
+ "<br>not establish identity of a land sold"
+ "<br>set aside a wrongly sale of land"
+ "<br>not establish identity of a land sold"
+ "<br>damages for transpass on grounds that the tenancy agreement was null and void"
+ "<br>declaration of title to a farmland"
+ "<br>claim for injuction on land"
+ "<br>statement of claim without receiving any evidence on the claim set out in the relief paragraph thereon"
+ "<br>failure to file a statement of defence"
+ "<br>laying claim to more"
+ "<br>wrongly dismissed petition"
+ "<br>adultery"
+ "<br>nagging"
+ "<br>cruelty"
+ "<br>culpable delay"
+ "<br>recovery of possession of an area of land"
+ "<br>damages for trespass to a land"
+ "<br>an injuction to restrain"
+ "<br>bill of exchange"
+ "<br>notice of intention to defend"
+ "<br>the writ of summons until judgement or payment"
+ "<br>debt due from and payable by the defendant"
+ "<br>public auction or by private treaty"
+ "<br>damages for trspass and an injuction to restrain further trespass"
+ "<br>for trespass and injuction in respect of a parcel of land"
+ "<br>declaration of title to the piece and portion of land within jurisdiction"
+ "<br>damages for trespass without permission"
+ "<br>possessory title to a piece of land"
+ "<br>an order of perpetual injuction"
+ "<br> property"
+ "<br> itsekiri customary law"
+ "<br>land at okere warri"
+ "<br>subject to the overlord-ship of olu of warri"
+ "<br>damages for wrongful trespass committed by the defendant"
+ "<br>wilfully neglected"
+ "<br>secured periodical payment"
+ "<br>deserted"
+ "<br>money due from, and owing by the respondent"
+ "<br>special and general damages for several branches of contract by defendant"
+ "<br>ofrextension of time within which to apply for leave to appeal"
+ "<br>convicted of murder"
+ "<br>absence of evidence of proof"
+ "<br>injuction to restrain an act under the decision on appeal pending the determination of the said appeal"
+ "<br>jurisdiction to stay proceedings"
+ "<br>jurisdiction after the order has been drawn up and enrolled"
+ "<br>miscarriage of justice"
+ "<br>circumstantial evidence"
+ "<br>appeal against conviction of dealth sentence"
+ "<br>charge for abetting the offences"
+ "<br>criminal conspiracy to commit theft"
+ "<br>non-suit"
+ "<br>second chance to prove case"
+ "<br> error in law"
+ "<br>particulars of error"
+ "<br>judgement reserved"
+ "<br>money leat in form of a term loan"
+ "<br>dispute solely on affidavit evidence"
+ "<br>judgement is against the weight of evidence"
+ "<br>shares held in trust"
+ "<br>a method employed to recover fees "
+ "<br>power to interfere"
+ "<br>arrested without warrant"
+ "<br>entitled to the grant of certificate of statutory right of occupancy in respect to a parcel of land"
+ "<br>general damages for trespass in land in dispute"
+ "<br>raised requisition for cash"
+ "<br>welfare gift in the military"
+ "<br>illegal and unconstitutional to make deductions as a first line charge on the federation account"
+ "<br>declaration of right of occupancy over a piece or parcel of land"
+ "<br>failure to deliver vehicles"
+ "<br>contract for the sale of mercedes benz trucks"
+ "<br>natural resources located within the continental sheft of nigeria are not derivable from any state of the federation"
+ "<br> law enacted by the national assembly"
+ "<br> national assembly has no power "
+ "<br>dissatisfied with the decision of the high court"
+ "<br>credible evidence in line with pleading to prove claim"
+ "<br>banking licency"
+ "<br>statutory instrument"
+ "<br>revoked licency"
+ "<br>making a false negotiable instrument"
+ "<br>forgery"
+ "<br>uttering a forged cheque"
+ "<br>stealing con tiny"
+ "<br>receiving stolen property"
+ "<br>disobedience to standing order"
+ "<br>circular letter addressed"
+ "<br>power vested in the president of the federal republic of nigeria"
+ "<br>not qualified to contest an election"
+ "<br>attempt to trivialise the judical process"
+ "<br>charged for the offence of armed robbery"
+ "<br> absence of a valid identification parade"
+ "<br>not proved beyond reasonable doubt by the prosecution"
+ "<br>insufficiency of the evidence"
+ "<br>amended statement of defence"
+ "<br>property in dispute for future advancement"
+ "<br>not entitled to build"
+ "<br>garnishee proceedings"
+ "<br>commenced an action against"
+ "<br>refuse all liabilities"
+ "<br>entitled to damages for non-completion of the work"
+ "<br>sum originally agreed was revised upward"
+ "<br>architect's certificate is a condition procedent for payment"
+ "<br>refuse all liabilities"
+ "<br>entitled to damages for non-completion of the work"
+ "<br>sum originally agreed was revised upward"
+ "<br>architect's certificate is a condition procedent for payment"
+ "<br>interpleader proceedings"
+ "<br>undefended list"
+ "<br>jurisdic person"
+ "<br>notice of intention to defend"
+ "<br>damages for trespass"
+ "<br>damages for defamation"
+ "<br>reture of money collected"
+ "<br>entered into a building contract out of which dispute arose"
+ "<br>arbitration report"
+ "<br> outside the jurisdiction of lagos state"
+ "<br> filed an ex-parte application</h6>";
      request.setAttribute("errmsg", msg);
      request.getRequestDispatcher("ReEnterBrief.jsp").forward(request,response);
    session.invalidate();
    session.removeAttribute("Case");
}

         %>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</div>
</div>
        
<section class="cid-qxxCPx8oL4" id="social-buttons2-3" data-rv-view="242">
<div class="container">
        <div class="media-container-row">
        <div  align="center"  class="social-list pl-0 mb-0">
                    <i class="follow">FOLLOW US ON!</i>
                    
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
                  &nbsp;DEVELOPED BY<a href="@yourDigit" style="color:orangered; font-size:25px; font-family:The New Times,serif;">TechGeek</a>&nbsp;and&nbsp;<a style="color:orangered; font-size:25px; font-family:The New Times,serif;">Prof International</a></footer>
                  

  

                  
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
