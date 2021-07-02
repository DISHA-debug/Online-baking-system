<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<!DOCTYPE html>
<html>
<head>
<style>
    h1 { color: #283747; }
  </style>
<meta charset="ISO-8859-1">
<title>Account Details</title>
</head>
  
<body bgcolor='#4D9E9B'> 
<sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3307/onlinebankingsystem" user="root"
password=""></sql:setDataSource> 
<sql:query var="display" dataSource="${connection}">
SELECT * FROM newacc where phone="${param.phone}" and  password="${param.password}";
</sql:query> 
<c:forEach var="table" items="${display.rows}">  
<center><h1>Welcome Back ${table.fname} !!</h1></center>
<center><h1>Here Are Your Account Details</h1></center><hr>
<table border="2">  
<tr>
<th style="width:5%">FIRST NAME</th>
<th style="width:5%">LAST NAME</th>
<th style="width:5%">GENDER</th>
<th style="width:5%">ACCOUNT TYPE</th>
<th style="width:5%">ID CARD NUM</th>
<th style="width:5%">MONTHLY SALARY</th>
<th style="width:5%">NATIONALITY</th>
<th style="width:5%">DOB</th>
<th style="width:5%">A/C OPEN DATE</th>
<th style="width:5%">NET AMOUNT</th>
<th style="width:5%">ADDRESS</th>
<th style="width:5%">PHONE</th>
</tr> 
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
</table>
<hr> 
  <center><a href="index.html"><b>USER DASHBOARD</b></a></center>
</body>  
</html>  