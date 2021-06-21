<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ONS.withamount"%>
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
<jsp:useBean id="u" class="ONS.withdraw"></jsp:useBean> 
<jsp:setProperty property="*" name="u"></jsp:setProperty>

<%
int i = withamount.with_amount(u);
if(i>0)
{
System.out.println("Your Money is Withdrawed Successfully!!");
}
%>
<jsp:include page="viewwithdetails.jsp" />
</body>
</html>