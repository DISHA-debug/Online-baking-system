<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Updated Balance</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.container {
  position: relative;
  font-family: Arial;
}
* {box-sizing: border-box;}
.form-inline {  
  display: flex;
  flex-flow: row wrap;
  align-items: center;
}
.form-inline label {
  margin: 5px 10px 5px 0;
}
.form-inline input {
  vertical-align: middle;
  margin: 5px 10px 5px 0;
  padding: 10px;
  background-color: #fff;
  border: 1px solid #ddd;
}
.form-inline button {
  padding: 10px 20px;
  background-color: dodgerblue;
  border: 1px solid #ddd;
  color: white;
  cursor: pointer;
}
.form-inline button:hover {
  background-color: royalblue;
}
</style>
</head>
<body>
<div class="container"> 
<form class="form-inline" method="POST" action="updatebalance.jsp">
<table cellspacing="5" cellpadding="3">	
<tr><td>IDCARD:</td><td><input id="mySearch" size="45" type="text" name="idcard" class="form-control" placeholder="Enter Your idcard number"></td></tr>
<tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
<tr><td><button type="submit" name="save" class="btn btn-primary">View</button></td></tr>
</table>
</form>
<script>
function myFunction() {
  var x = document.getElementById("mySearch").size;
  document.getElementById("demo").innerHTML = x;
}
</script>
</div>
</body>
</html>