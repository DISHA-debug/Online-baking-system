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
<title>closeacc</title>
</head>
  
<body bgcolor='#4D9E9B'>
<core:set var="idcard" value="${param.idcard}"></core:set>

<sql:setDataSource var="Connection" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3307/onlinebankingsystem" user="root" password=""></sql:setDataSource>

<!--delete * from newacc where idcard="${table.idcard}" and password="${table.password}";-->
<sql:update var="deleteData" dataSource="${Connection }">
delete from newacc where idcard=?;

<sql:param value="${param.idcard}"></sql:param>

</sql:update>


 
<center><h1>Your account is successfully closed!!!</h1></center>
<hr>
<br><center><a href="newacc.jsp"><b>CLICK HERE TO CREATE NEW ACCOUNT</b></a></center><br>
  <center><a href="home.jsp"><b>LOGOUT</b></a></center>
</body>  
</html>  
