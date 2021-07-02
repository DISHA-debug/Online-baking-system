<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ONS.amountadd"%>
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
<jsp:useBean id="u" class="ONS.transfer"></jsp:useBean> 
<jsp:setProperty property="*" name="u"></jsp:setProperty>

<%
int i = amountadd.amountadd(u);
if(i>0)
{
System.out.println("Your Money is Deposited Successfully!!");
}
%>
<jsp:include page="viewtransferDetails.jsp" />
</body>
</html>