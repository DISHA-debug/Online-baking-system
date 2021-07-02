<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color: #D6DBDF ;
}
.top-container {
margin:0 auto;
background:#000 url(images/globe_03.gif) 0 0 no-repeat;
width:100%;
height:282px;
}
.head h1
{
font:bold 44px/18px Arial, Helvetica, sans-serif;
color:white  ;
padding:100px 0 0 380px;
}
.head h2
{
font:bold italic 24px/18px Arial, Helvetica, sans-serif;
color:#0EDCB3 ;
padding:20px 0 0 380px;
}
.header {
margin:0 auto;
width:100%;
height:60px;
background:#F0B27A ;
border:2px solid #282828;
text-align:center;
}
.button {
  background-color: #202060 ;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
 h1 {color:
#2980B9 ;}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="top-container">
<div class="head">
	<h1>Online Banking System</h1>
    <h2>ExtraOrdinary Services</h2>	

</div>
</div>
<br>
 <h1 style="text-align: center" >Welcome User !! You have been Successfully Registered!</h1>
 <%
String employeeFirstName = request.getAttribute("firstName").toString();
String employeeEmail = request.getAttribute("email").toString();
//String employeePassword = request.getAttribute("password").toString();
 %>
 <hr>
 <table border="5" style="width: 80%; margin-left: auto; margin-right: auto; ">
    <tr>
     <td><b>First Name</b></td>
     <td><%= employeeFirstName %></td>
    </tr>
   <tr>
     <td><b>Email</b></td>
     <td><%= employeeEmail %></td>
    </tr>
   </table>
   <br>
   <hr>
  <center> <a href="index.html"><button name="submit" class="button">CLICK HERE TO SURF THE DASHBOARD</button></a>
</center></body>
</html>