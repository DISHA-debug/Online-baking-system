<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>Insert title here</title><style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color:window;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background:silver;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #dddddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: navy;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 2;
}

/* Add a blue text color to links */
a {
  color: navy;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color:menu;
  text-align: center;
}
</style>
</head>
<body>

<form action="<%= request.getContextPath() %>/register" method="post">
  <div class="container">
    <center><h1>Registration Form</h1></center>
    <p>**Please fill in this form to enjoy the services of online banking.**</p>
    <hr>

    <label for="firstName"><b> Name</b></label>
    <input type="text" placeholder="Enter your Name" name="firstName" id="firstName" required>
    
    <label for="lastName"><b>Surname</b></label>
    <input type="text" placeholder="Enter your SurName" name="lastName" id="lastName" required>
    
    
    
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>

    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" id="password" required>
    
    
    <label for="address"><b>Address</b></label>
    <input type="text" placeholder="Enter address" name="address" id="address" required>
    
    <label for="contact"><b>Contact No</b></label>
    <input type="text" placeholder="Enter contactNo" name="contact" id="contact" required>
    
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button input type="submit" value="submit" class="registerbtn" >Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="login.jsp">Sign in</a>.</p>
  </div>
</form>
</body>
</html>