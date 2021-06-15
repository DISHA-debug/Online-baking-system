<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1 style="text-align: center">Employee has been Successfully Registered!</h1>
 <%
String employeeFirstName = request.getAttribute("firstName").toString();
String employeeEmail = request.getAttribute("email").toString();
//String employeePassword = request.getAttribute("password").toString();

 out.println("<h2>Please verify the details</h2>"); 
 %>
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
   <a href="home.jsp"><button name="submit">OK all is DONE</button></a>
</body>
</html>