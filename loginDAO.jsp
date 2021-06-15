<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<html>
	<body>
		<sql:setDataSource var="Connection" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/BISAG?useSSL=false" user="root" password="mypass2002"></sql:setDataSource>

		<c:catch var="catchError">
			<sql:query dataSource="${Connection}" var="res">
				select * from bisag.employee where first_name = ? and password = ?;

				<sql:param value="${param.firsntame}" />
				<sql:param value="${param.password}" />
			</sql:query>

			<c:forEach items="${res.rows}" var="r">
				<c:if test="${r.firstName == param.firstName and r.password == param.password}">
					<c:redirect url="employeeRegister.jsp">
						<c:param name="firstName" value="${r.firstName}" />
						<c:param name="password" value="${r.password}" />
						
					</c:redirect>
				</c:if>				
			</c:forEach>

			<c:redirect url="employeeLogin.jsp">
				<c:param name="errMsg" value="Username/Password are invalid!!!" />
				<c:param name="firstName" value="${r.firstName}" />
			</c:redirect>

		</c:catch>

		<c:if test="${catchError != null}">
			<p> Type: <c:out value="${catchError}" /> </p>
			<p> Message: <c:out value="${catchError.message}" /> </p>
		</c:if>
	</body>
</html>
