<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

        <title>Admin Page</title>

    </head>

    <body bgcolor="black"><font color="red">

        <h1>This is an Admin Page</h1>

        <%

            String str = (String) session.getAttribute("username");

            out.print("Welcome " + str);

        %>

        </font>       

    </body>   
</html>