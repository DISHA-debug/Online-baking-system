<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
<title>ONLINE BANKING SYSTEM</title>
<style>
.container {
  position: relative;
  font-family: Arial;
}

.text-block {
  position: transparent;
  bottom: 100px;
  right: 80px;
  background-color: black;
  color: white;
  padding-left: 100px;
  padding-right: 200px;
}
.topnav {
  overflow: hidden;
  background-color:#F0F3F4;
   font-size: 20px;
  
}

.topnav a {
  float: left;
  color:black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 20px;
}

.topnav a:hover {
  background-color:#85C1E9 ;
  color:black;
}

.topnav a.active {
  background-color:#48C9B0 ;
  color:black;
}

.topnav-right {
  float: right;
}

</style>
</head>
<body>
<div id="top_links">

<div id="header">
	<h1>Online Banking System<span class="style1"></span></h1>
    <h2>ExtraOrdinary Services</h2>	

</div>
<div class="topnav">
  <a class="active" href="#home">Home</a>
  <div class="topnav-right">
    <a href="login.jsp">Admin Login</a>
    <a href="login.jsp">User Login</a>
  </div>
</div>

<BR>  
<table style="width:897px;background:white;margin:0 auto;"><tr align="justify">
	<td width="299" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services"><h1>Services</h1><br>
		    <ul>
		    <li><a href="service.html" target="_self">ONLINE BANKING</a></li>
        	<li><a href="service1.html" target="_self">BANK GUARANTEE</a></li>
            <li><a href="service2.html" target="_self">ATMs SERVICES</a></li>
            <li><a href="service3.html" target="_self">ADVANCING OF LOANS</a></li>
            <li><a href="service4.html" target="_self">CONSULTANCY</a></li>
            </ul>
			
       </div>
	</td>
    <td width="299" valign="top" style="border-right:#666666 1px dotted;">
     <div id="welcome"><h1>Welcome</h1><br>
    	    <center><img src="images/globe_10.gif" alt="WELCOME" width="196" height="106"></center>
		    <p>Dear Customer, Thank you so much for allowing us to help you with your recent account opening. We are committed to providing our customers with the highest level of service and the most innovative banking products possible.</p>
	    	
	    </div> 	   
    </td>
     <td width="299" valign="top">
   	  <div id="news"><h1>News &amp; Events</h1><br>
      	<div class="img"><img src="images/globe_12.gif" alt="Business"></div>
        <h2>JUNE. 09, 2021.</h2>
        <p>Get all your money safe using our Global Banking Sytem and get amazing offers "Ghar Bethe Bethe".</p><br>
        <div class="img"><img src="images/globe_16.gif" alt="Business"></div>
        <h2>JUNE. 09, 2021.</h2>
        <p>Now you can have your account with a safer hands.Lets Get Started!</p>
      
      </div>
        	
     </td>
</tr></table>
<!-- Footer -->
<div id="footer_top">  
  <div id="footer_copyright" >
 <div class="container">
  <div class="text-block">
  <h4>OUR BANK SERVICES</h4>
    <p>Our Online banking System is an electronic payment system that enables customers of a bank or other financial institution to conduct a range of financial transactions through the financial institution's Webapp.</p>
   Copyright © Online Banking System</div>
</div>
		  </div>
</div>

</div>
</body>
</html>