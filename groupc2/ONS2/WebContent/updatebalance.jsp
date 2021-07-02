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
password=""></sql:setDataSource> <sql:query var="display" dataSource="${connection}">
select deposittable.fname,deposittable.idcard,newacc.amount as amount, deposittable.depamount as depamount, newacc.amount+deposittable.depamount as totalamount   
 from newacc 
 INNER join deposittable  
 on newacc.idcard = deposittable.idcard WHERE deposittable.idcard="${param.idcard}";   
</sql:query>

<center><h1>Here Are Your Updated Details ${table.fname}</h1></center><hr>
<table border="2">  
<tr>
<th style="width:5%">ID CARD NUM</th>
<th style="width:5%">FIRST NAME</th>
<th style="width:5%">NET AMOUNT</th>
<th style="width:5%">DEPOSITED AMOUNT</th>
<th style="width:5%">TOTAL AMOUNT</th>
</tr> 
<c:forEach var="table" items="${display.rows}">  
<tr> 
<td><c:out value="${table.idcard}"/></td>
<td><c:out value="${table.fname}"/></td>
<td><c:out value="${table.amount}"/></td>
<td><c:out value="${table.depamount}"/></td>
<td><c:out value="${table.totalamount}"/></td> 
</tr> 
</c:forEach>                      
</table>

<hr> 
  <center><a href="index.html"><b>USER DASHBOARD</b></a></center>
</body>  
</html>