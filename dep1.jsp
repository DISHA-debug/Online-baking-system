<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ONS.Addamount"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="ONS.deposit"></jsp:useBean> 
<jsp:setProperty property="*" name="u"></jsp:setProperty>

<%
int i = Addamount.add_amount(u);
if(i>0)
{
System.out.println("Your Money is Deposited Successfully!!");
}
%>
<jsp:include page="viewdepdetails.jsp" />
</body>
</html>