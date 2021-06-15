<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
<title>ADMIN DASHBOARD</title>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
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
.main {
  margin-left: 350px; /* Same as the width of the sidenav */
  }
  
#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 102px;
}
* {
  box-sizing: border-box;
}
.footer_navigation ul li
{
width:80px;
font: large 12px/30px Arial, Helvetica, sans-serif;
color:black;
float:left;
}
.footer_navigation ul li a
{
text-decoration:none;
color:black;
height:30px;
}
.footer_navigation ul li a:hover
{
text-decoration:none;
color:#ffffff;
height:49px;
}
.footer_copyright
{
	background:#080808 ;
color:white;
font: large 11px/30px Arial, Helvetica, sans-serif;
margin:0 auto;
text-align:center;
}
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
<body bgcolor="#E5E7E9">

<div class="top-container">
<div class="head">
	<h1>Online Banking System</h1>
    <h2>ExtraOrdinary Services</h2>	

</div>
</div>

<div class="topnav" id="myHeader">
  <a class="active" href="#home">ADMIN DASHBOARD</a>
  <div class="topnav-right">
    <a href="adminview.jsp">USER DETAILS</a>
    <a href="login.jsp">BALANCE HISTORY</a>
  </div>
</div>
 <table style="width:100%; margin:right auto;"><tr align="justify">
	<td width="70%" height="300px" valign="top" style="border-right:#666666 1px dotted;">
	
<sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/ons" user="root"
password="2548"></sql:setDataSource> 

<sql:query var="display" dataSource="${connection}">
SELECT * FROM newacc;
</sql:query>
<table border="2"> 
<caption><h2>USER RECORDS</h2></caption><br>
<tr>
<th style="width:5%">FIRST NAME</th>
<th style="width:5%">LAST NAME</th>
<th style="width:5%">GENDER</th>
<th style="width:5%">ACCOUNT TYPE</th>
<th style="width:5%">ID CARD NUM</th>
<th style="width:5%">MONTHLY SALARY</th>
<th style="width:5%">NATIONALITY</th>
<th style="width:6%">DOB</th>
<th style="width:6%">A/C OPEN DATE</th>
<th style="width:5%">NET AMOUNT</th>
<th style="width:5%">ADDRESS</th>
<th style="width:5%">PHONE</th>
</tr> 
<c:forEach var="table" items="${display.rows}">  
<tr> 
<td><c:out value="${table.fname}"/></td> 
<td><c:out value="${table.lname}"/></td> 
<td><c:out value="${table.gender}"/></td> 
<td><c:out value="${table.acctype}"/></td> 
<td><c:out value="${table.idcard}"/></td>
<td><c:out value="${table.salary}"/></td> 
<td><c:out value="${table.nation}"/></td> 
<td><c:out value="${table.birthday}"/></td> 
<td><c:out value="${table.accopen}"/></td> 
<td><c:out value="${table.amount}"/></td>
<td><c:out value="${table.address}"/></td> 
<td><c:out value="${table.phone}"/></td> 
</tr> 
</c:forEach>                      
</table><hr> 
  <center><a href="admin.html"><b>ADMIN DASHBOARD</b></a></center>
</td>
</tr></table>  
<script>
window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>
<!-- Footer -->
<div class="footer_top">  
  <div class="footer_copyright" >
 <div class="container">
  <div class="text-block">
  <h4>OUR BANK SERVICES</h4>
    <p>Our Online banking System is an electronic payment system that enables customers of a bank or other financial institution to conduct a range of financial transactions through the financial institution's Webapp.</p>
   Copyright � Online Banking System</div>
</div>
		  </div>
</div>
</body>
</html>