<%@page import="JN.DBConnection"%>
<%@page import="java.sql.*"%>

<%-- 
    Document   : judge
    Created on : Mar 8, 2018, 12:51:55 AM
    Author     : user
--%>

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
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rubik:300,300i,400,400i,500,500i,700,700i,900,900i">
 <link href="assets/DigiT/digit.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="assets/tether/tether.min.css"/>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" href="assets/soundcloud-plugin/style.css"/>
  
<link rel="stylesheet" href="assets/dropdown/css/style.css"/>

  <link rel="stylesheet" href="assets/socicon/css/styles.css"/>
  
<link rel="stylesheet" href="assets/theme/css/style.css"/>

  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css"/>
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
<div class="container">
  
  <div class="">
      <div  align="center" style="color:white; text-shadow:5px 5px 10px black;"><h1><b>CLIENT REGISTRATION FORM<b></h1></div>
          
               <div class="g-position--relative g-bg-color--primary">
            <div class="g-container--md g-padding-y-80--xs g-padding-y-125--sm">
                               
                <form  Action="ClientAccount" method="POST"  class="center-block g-width-500--sm g-width-550--md">
           

                     
                     <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                            <input type="text" name="Sname" class="form-control s-form-v3__input" required="true" placeholder="Surname" ng-model="surname">
                        </div>
                        <div class="col-sm-6">
                            <input type="text" name="Oname" class="form-control s-form-v3__input" required="true" placeholder="Other Names" ng-model="othername">
                        </div>
                    </div>  
                    <br>
                    <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                            <select class="form-control s-form-v3__input select" required="true" name="gender">
                                <option class="select">SEX</option>
                                <option class="select" value="male">MALE</option>
                                <option class="select" value="female">FEMALE</option>
                            </select>
                        </div>
                        <div class="col-sm-6">
                            <input type="text" name="pbirth" class="form-control s-form-v3__input" required="true" placeholder="Place of birth">
                        </div>
                    </div>
                    <br>
                       <div class="row g-row-col-5 g-margin-b-50--xs">

  <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                            <select id="gender" class="form-control s-form-v3__input"  name="mStatus">
                                <option value="">Marital Status</option>
                                <option value="married">Married</option>
                                <option value="single">Single</option> 
                            </select>
                        </div>
                        <div class="col-sm-6">
                           <select required="true" name="state" style="font-weight:bold;width:auto; max-width:300px" class="form-control s-form-v3__input"   name="stateorigin" required="true">
                                <option value="null">STATE OF ORIGIN</option>
                               <%
ResultSet  resultset;
 try{
 Connection    con = DBConnection.getConnection();
PreparedStatement   ps =  con.prepareStatement("SELECT * FROM client_state");
resultset = ps.executeQuery();
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
                            <input type="text" required="true"  style="background-color: transparent" name="country"
                                   value="Nigeria" class="form-control s-form-v3__input" placeholder="Nigeria" readonly>
                        </div>
                        <div class="col-sm-6">
                          <select required="true" name="lga" style="font-weight:bold; width:auto; max-width:230px"  class="form-control s-form-v3__input"  name="lga" >
                                <option value="">L.G.A</option>
                                <%

 try{
 Connection    con = DBConnection.getConnection();
Statement   ps =  con.createStatement();resultset = ps.executeQuery("SELECT * FROM client_lga");
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
                            <input type="text" id="spouse" class="form-control s-form-v3__input"  name="spouse" placeholder="Name of Spouse">
                      
                        </div>
                        <div class="col-sm-6">
                            <input type="number" id="child" class="form-control s-form-v3__input" name="numChild"  min="0" placeholder="Number of Children">
                        </div>
                    </div>
                      <br>
                            <div class="row g-row-col-5 g-margin-b-50--xs">
                             <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                        <input type="text" class="form-control s-form-v3__input" required="true" name="edu" placeholder="Current Education Qualification">
                             </div>
                                <div class="col-sm-6">
                                    <input type="number" class="form-control s-form-v3__input" required="true" name="age" min="20" max="100" placeholder="Age">
                                </div>
                            </div>
                      <br>
                       <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                           <input type="text" class="form-control s-form-v3__input" required="true" name="occup" placeholder="Occupation">
                      
                        </div>
                        <div class="col-sm-6">
                            <input type="text" class="form-control s-form-v3__input" required="true" name="work" placeholder="Nature of Work/Business">
                        </div>
                    </div>     
                        <br>    
                       <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                           <input type="text" class="form-control s-form-v3__input" required="true" name="religion" placeholder="Religion">
                      
                        </div>
                        <div class="col-sm-6">
                            <input type="text" class="form-control s-form-v3__input" required="true" name="address" placeholder="Official Address">
                        </div>
                    </div>    
                        <br>
                        <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                           <input type="number" class="form-control s-form-v3__input" required="true" name="contact" placeholder="Official Contact">
                      
                        </div>
                        <div class="col-sm-6">
                            <input type="email" class="form-control s-form-v3__input"  required="true" name="mail" placeholder="Email">
                        </div>
                          </div> 
 <br>
 <div class="g-margin-b-80--xs">
     <textarea class="form-control s-form-v3__input" rows="7" required="true" name="Cbrief" placeholder="CLIENT BRIEF / DETAILS ABOUT YOUR CASE"></textarea>
    </div><br>
        <div>I,&nbsp;<b>{{surname}}&nbsp;&nbsp;{{othername}}</b> do hereby declare that all information hereinabove supplied 
                                  are to the best of my Knowledge true connect.I undertake to be held liable,
                                  if any information hereinabove state in this form is discovered to be false 
                                 </div>
         <input type="checkbox" required="true"  name="agree" value="" />&nbsp;I agree to the <a class="link" data-toggle="modal" href="#myModal">Terms and Conditions</a>
         <br>  
           <br>
         <input type="submit" class="btn btn-block bg-primary " value="Get Me A Lawyer"/>
     </form>
                       <br>
                       <br>
                       
                       </div>
                  </div>
  </div>
</div>
 

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
 
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Terms And Conditions</h4>
      </div>
      <div class="modal-body">
        <section class="mbr-section article" data-rv-view="230">

     

    <div class="container">
 <blockquote><p> </p><p><strong><br></strong></p><p><strong><br></strong></p><p><strong>TERMS AND CONDITION</strong></p><p><strong>If you continue to browse and use this website, you are agreeing to comply with and be bound by the following
&nbsp;</strong><strong>terms and conditions of use, which together with our privacy policy govern prof international network relationship with you &nbsp;</strong><strong>in relation to this website.&nbsp;</strong></p><p><strong>if you disagree with any part of these terms and conditions, please do not use our website.
</strong></p><p><br></p><p><strong>PAYMENT TERMS
</strong></p><p><strong>Certain aspects of the services maybe provided for a fee, subscription or other charge.&nbsp;</strong></p><p><strong>you are responsible for all fees, including taxes, associated with your use of the service.
</strong></p><p><strong>you are responsible for providing us with a valid means of payment.
</strong></p><p><strong>
</strong></p><p><strong>Lawyers fees to sign up with our plateform is 2000 naira a month, and twenty thousand naira a year.
</strong></p><p><strong>
</strong></p><p><strong>Our client is expected to pay 5000 naira to subscribe to get a lawyer from our platform.</strong></p><p><strong>
</strong></p><p><strong>
</strong></p><p><strong>
</strong></p><p><strong>Our client is also expected to pay 500 naire to get an instant &nbsp;judgement from our platform.</strong></p><p><strong>ALL CONTENT ON THE JUDGE NIGERIA, INCLUDING TEXT, GRAPHICS, DESIGNS, PICTURES, VIDEO, MUSIC, SOUND, ETC
</strong></p><p><strong>ARE THE PROPERTY OF THE JUDGE NIGERIA, OR ITS LICENSORS, WITH ALL RIGHT RESERVED. NO CONTENT MAY BE MODIFIED, COPIED,
</strong></p><p><strong>DISTRIBUTED, FRAMED,REPRODUCED, REPUBLISHED, DOWNLOADED, TRANSMITTED OR SOLD IN ANY FORM BY ANY MEANS, IN WHOLE OR IN PART.
</strong></p><p><strong>WITHOUT THE JUDGE NIGERIA CONSERT.
</strong></p><p><strong>
</strong></p><p><strong>ELIGIBILITY
</strong></p><p><strong>
</strong><strong>The services provided by the judge nigeria.org are intended solely for users who are eighteen (18) years of age or older &nbsp;</strong></p><p><strong>or between the ages of 13-18 years old with the parential consert.
</strong></p><p><strong>Any registration by, use of, or access to the judge nigreia services by anyone under 18 years without parential consert is
</strong></p><p><strong>unauthorized, unlicensed, and in violation of these terms of use.
</strong></p><p><strong>
</strong></p><p><strong>
</strong></p><p><strong>ATTORNEY ADVERTISEMENT/PAST RESULT
</strong></p><p><strong>
</strong><strong>This website maybe considered an attorney advertisement. the facts and the circumstances of each case are different&nbsp;</strong></p><p><strong>and results may not be typical. Past results are not a quarantee of future outcomes.</strong></p><p><strong> 
</strong></p><p><strong>
</strong></p><p><strong>
</strong></p><p><br></p><p><br></p><p><strong>
</strong></p><p><strong>LINKS TO THIRD PARTY RESOURCES
</strong></p><p><strong>The film does not permit or allow or allow advertising on our website. 
</strong></p><p><strong>Any popup advertising that may appear while you are accessing oursite are not generated by access to our website,
</strong></p><p><strong>nor are they endorsed by our firm.
</strong></p><p><strong>
</strong></p><p><strong>COPYRIGHT NOTICE
</strong></p><p><br></p><p><strong>The firm does not collect personal identifying information from visitors to the site unless provided by the visitor's
</strong></p><p><strong>browser. The firm will not use information provided through your use of this site except to respond to direct inquires
</strong></p><p><strong>or to measure traffic tends at this site. we do not provide or sell any of this information to third parties.
</strong></p><p><strong>we reserve the right, at our sole discretion to change, modify, add or delete portions of these terms of use at any time
</strong></p><p><strong>without further notice.
</strong></p><p><strong>if we do this, we will post the changes to these terms of use on this page and will indicate at the top of this page the 
</strong></p><p><strong>effective date of the revised terms of use.
</strong></p><p><strong>it is your responsibility to regularly check these terms of use and to review any changes.</strong></p><p><strong><br></strong></p><p><strong>
</strong></p><p><strong>
</strong></p><p><strong>
</strong></p><p><strong><br></strong></p><p><strong>&nbsp;THE COMPANY SHALL NOT BE RESPONSIBLE FOR ANY PERFORMANCE OR
</strong></p><p><strong>&nbsp;SERVICE PROBLEMS CAUSED BY ANY THIRD PARTY WEBSITE OR THIRD PARTY SERVICE PROVIDER
</strong></p><p><strong>&nbsp;(including, for example, your web service provider service, Stripe payment services, 
</strong></p><p><strong>&nbsp;your software and/or any updates or upgrades to that software).
</strong></p><p><strong>&nbsp;ANY SUCH PROBLEM SHALL BE GOVERNED SOLELY BY THE AGREEMENT BETWEEN YOU AND THAT PROVIDER.
</strong></p><p><strong>&nbsp;THE COMPANY RESERVES THE RIGHT TO DETERMINE, IN ITS SOLE DISCRETION, WHETHER THE COMPANY IS RESPONSIBLE FOR ANY SUCH MALFUNCTION
</strong></p><p><strong>&nbsp;OR DISRUPTION. THE COMPANY ALSO RESERVES THE RIGHT TO LIMIT YOUR USE OF THE SITE AND/OR THE CONTENT OR TO TERMINATE YOUR ACCOUNT
</strong></p><p><strong>&nbsp;SHOULD THE COMPANY DETERMINE THAT YOU HAVE VIOLATED THESE TERMS OF USE, OR THAT YOU HAVE VIOLATED ANY OTHER RULES OR CONDITIONS OF THE COMPANY. 
</strong></p><p><strong>&nbsp;THE COMPANY RESERVES THE RIGHT TO REFUSE ACCESS TO THE SITE AND/OR THE COMPANY’S CONTENT, PRODUCTS AND/OR SERVICES TO ANYONE IN ITS SOLE DISCRETION. 
</strong></p><p><strong>&nbsp;THE COMPANY RESERVES THE RIGHT TO DETERMINE, IN ITS SOLE DISCRETION, WHETHER THE COMPANY IS RESPONSIBLE FOR ANY SUCH MALFUNCTION OR DISRUPTION. 
</strong></p><p><strong>&nbsp;THE COMPANY MAY, IN ITS SOLE DISCRETION, REFUND THE INITIAL FEE CHARGED FOR ANY USE OF THE SITE AND/OR ANY CONTENT OR A PRO-RATA PORTION THEREOF
</strong></p><p><strong>&nbsp;CONSISTENT WITH THE COMPANY’S REFUND POLICY. THE COMPANY SHALL REFUSE ANY REFUND THIRTY (30) DAYS AFTER YOUR PAYMENT FOR USE OF THE SITE AND/OR ANY 
</strong></p><p><strong>&nbsp;CONTENT, EITHER PURSUANT TO THE COMPANY’S CUSTOMER LICENSE AGREEMENT OR OTHERWISE, REGARDLESS OF THE REASON FOR DISRUPTION.
</strong></p><p><strong>
</strong></p><p><strong>
</strong></p><p><strong>&nbsp;IN NO EVENT SHALL THE COMPANY BE LIABLE FOR ANY SPECIAL, INCIDENTAL, INDIRECT, PUNITIVE, RELIANCE OR CONSEQUENTIAL DAMAGES, 
</strong></p><p><strong>WHETHER FORESEEABLE OR NOT, INCLUDING, BUT NOT LIMITED TO, DAMAGE OR LOSS OF PROPERTY, EQUIPMENT, INFORMATION OR DATA, LOSS OF PROFITS, 
</strong></p><p><strong>REVENUE OR GOODWILL, COST OF CAPITAL, COST OF REPLACEMENT SERVICES, OR CLAIMS FOR SERVICE INTERRUPTIONS OR TRANSMISSION PROBLEMS,
</strong></p><p><strong>&nbsp;OCCASIONED BY ANY DEFECT IN THE SITE, THE CONTENT, AND/OR RELATED MATERIALS, THE INABILITY TO USE SERVICES PROVIDED HEREUNDER OR 
</strong></p><p><strong>ANY OTHER CAUSE WHATSOEVER WITH RESPECT THERETO, REGARDLESS OF THEORY OF LIABILITY. THIS LIMITATION WILL APPLY EVEN IF THE COMPANY
</strong></p><p><strong>&nbsp;HAS BEEN ADVISED OR IS AWARE OF THE POSSIBILITY OF SUCH DAMAGES.
</strong></p><p><strong>
</strong></p><p><strong>&nbsp;You agree to indemnify and hold the Company and each of its directors, officers employees, and agents, harmless from any and all liabilities, 
</strong></p><p><strong>claims, damages and expenses, including reasonable attorney’s fees, arising out of or relating to (i) your breach of this Agreement, 
</strong></p><p><strong>(ii) any violation by you of law or the rights of any third party, (iii) any materials, information, works and/or other content of
</strong></p><p><strong>&nbsp;whatever nature or media that you post or share on or through the Site, (iv) your use of the Site or any services that the Company 
</strong></p><p><strong>may provide via the Site, and (v) your conduct in connection with the Site or the services or with other users of the Site or the services. 
</strong></p><p><strong>The Company reserves the right to assume the exclusive defense of any claim for which we are entitled to indemnification under this Section. 
</strong></p><p><strong>In such event, you shall provide the Company with such cooperation as is reasonably requested by the Company.
</strong></p><p><strong>
</strong></p><p><strong>&nbsp;The provisions of these Terms of Use are for the benefit of the Company, its subsidiaries,
</strong></p><p><strong>&nbsp;affiliates and its third party content providers and licensors, and each shall have the right to assert and
</strong></p><p><strong>&nbsp;enforce such provisions directly or on its own behalf.
</strong></p><p><strong>
</strong></p><p><strong>&nbsp;Security: Security for all personally identifiable information is extremely important to us. Unfortunately, 
</strong></p><p><strong>&nbsp;no data transmission over the internet can be guaranteed to be 100% secure. As a result,
</strong></p><p><strong>&nbsp;while we strive to protect your personal information, The Company cannot ensure or warrant
</strong></p><p><strong>&nbsp;the security of any information you transmit via the internet. By transmitting any such information to the Company,
</strong></p><p><strong>&nbsp;you accept that you do so at your own risk.
</strong></p><p><strong>
</strong></p><p><strong>
</strong></p><p><strong>&nbsp;Cookies
</strong></p><p><strong>&nbsp;A cookie is a piece of data stored on the user's hard drive while they are visiting a particular website.
</strong></p><p><strong>&nbsp;It contains simple information about the user's identity but no personal information.
</strong></p><p><strong>&nbsp;This is primarily used to provide a unique experience while on our site. When the user closes their browser,
</strong></p><p><strong>&nbsp;the cookie is typically destroyed with the exception of account management cookies
</strong></p><p><strong>
</strong></p><p><strong>No Third party cookies are used on this website, with exception to JavaScript based social networking links.
</strong></p><p><strong>In accordance with the Data Protection Act 1998 and the EU directive - known as the "Cookie Directive" 
</strong></p><p><strong>the following activities may set a cookie on your computer.
</strong></p><p><strong>1.	Accessing our site (detrimental requirement), we store a session cookie which holds a random unique reference so that we can
</strong></p><p><strong>&nbsp; &nbsp; &nbsp; &nbsp; determine how many unique visitors we have received. This is destroyed once you leave our site or close your browser and cannot track you.
</strong></p><p><strong>2.	Logging in to your account (None detrimental requirement) If “remember me“ is selected  then this stores a unique number so that we
</strong></p><p><strong>&nbsp; &nbsp; &nbsp; &nbsp; can personalise the experience you receive while using our website such as; account access, pre filling forms and preferences. Also allows
</strong></p><p><strong>&nbsp; &nbsp; &nbsp; &nbsp; you to re access your account without the need to login each time.
</strong></p><p><strong>3.	Site polls and questionnaires (detrimental requirement), stores your chosen options while using the feature or service.
</strong></p><p><strong>&nbsp; &nbsp; &nbsp; &nbsp; Without accepting these cookies we cannot reliably process your poll selection or questionnaires through to completion.
</strong></p><p><strong>4.	Placing an order (detrimental requirement), stores basic information such as shipping courier preferences, country location and
</strong></p><p><strong>&nbsp; &nbsp; &nbsp; &nbsp; discount codes when used. Once an order is complete all cookies are destroyed. Without accepting these cookies we cannot reliably process 
</strong></p><p><strong>&nbsp; &nbsp; &nbsp; &nbsp; your order through to completion.
</strong></p><p><strong>Log files
</strong></p><p><strong>As with all websites our servers collect and store general log files, these are for our technical department 
</strong></p><p><strong>and log event such as pages visited and error reports. Our records do not contain any personal information about users.
</strong></p><p><strong>
</strong></p><p><strong>
</strong></p><p><strong>Disclaimer
</strong></p><p><strong>Contents of this website are intended for educational purposes only and should not be relied upon for any legal, technical 
</strong></p><p><strong>or financial decisions. Any opinions expressed on this website and related publications are the opinions of the authors and 
</strong></p><p><strong>not necessarily of those of copyright holders, their affiliates, and the website owners' former and current employers.
</strong></p><p><strong>We make no representations about the suitability, reliability, timeliness, appropriateness, or accuracy of the information on this website and in related publications. When you use this site, we will not be liable for damages of any kind arising from the use of information on this website and related publications, including, but not limited to, direct, incidental, punitive, and consequential damages.
</strong></p><p><strong>This website present general information about the judge nigeria. you should not act upon information contained
</strong></p><p><strong>in our website without seeking professional advice from us, or a lawyer licensed in your state or country.</strong></p><p><strong>
</strong></p><p><strong>
</strong></p><p><strong><br></strong></p></blockquote>
            </div>
      
</section>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
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
   
