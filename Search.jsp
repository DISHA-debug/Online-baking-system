<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/ons";
String userid = "root";
String password = "2548";
String idcard=request.getParameter("idcard");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body bgcolor='#4D9E9B'>
<h1>Your Account Details</h1>
<table border="2">
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
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from newacc where idcard="+idcard+" ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("lname") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("acctype") %></td>
<td><%=resultSet.getInt("idcard") %></td>
<td><%=resultSet.getInt("salary") %></td>
<td><%=resultSet.getString("nation") %></td>
<td><%=resultSet.getString("birthday") %></td>
<td><%=resultSet.getString("accopen") %></td>
<td><%=resultSet.getInt("amount") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("phone") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>