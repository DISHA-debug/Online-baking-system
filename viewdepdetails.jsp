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
password="drashti@16"></sql:setDataSource>
 <sql:query var="display" dataSource="${connection}">
select deposittable.fname,deposittable.lname,deposittable.acctype,deposittable.idcard,newacc.amount,deposittable.depamount, newacc.amount+deposittable.depamount as totalamount   
 from newacc 
 INNER join deposittable  
 on newacc.idcard = deposittable.idcard WHERE deposittable.idcard="${param.idcard}";
</sql:query>

<c:forEach var="table" items="${display.rows}">  
<center><h1>Your Amout is Successfully deposited ${table.fname} !!</h1></center>
<center><h1>Here Are Your Deposit Details</h1></center><hr>
<table border="2">  
<tr>
<th style="width:5%">FIRST NAME</th>
<th style="width:5%">LAST NAME</th>
<th style="width:5%">ACCOUNT TYPE</th>
<th style="width:5%">ID CARD NUM</th>
<th style="width:5%">NET AMOUNT</th>
<th style="width:5%">DEPOSITED AMOUNT</th>
<th style="width:5%">TOTAL AMOUNT</th>

</tr> 
<tr> 
<td><c:out value="${table.fname}"/></td> 
<td><c:out value="${table.lname}"/></td>  
<td><c:out value="${table.acctype}"/></td> 
<td><c:out value="${table.idcard}"/></td>
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