<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
  for(var i=0; i<3; i++)
   {
        if(!isNaN(form.elements[i].value))
		{
		   alert("First Name must be in Characters & can't be null")
		   form.elements[i].value=""	
		   form.elements[i].focus()
		   return false
		}
   } 
    if(document.F1.password.value!=document.F1.repassword.value)
    {
	   alert("Check Confirm Password"); 
	   document.F1.repassword.value=""
	   document.F1.repassword.focus()	
	   return false
	}
    if(isNaN(document.F1.idcard.value))
    {
        alert("ID CARD NO must  be  number & can't be null")
 	   document.F1.idcard.value=""
 	   document.F1.idcard.focus()
 	   return false
    }
    if(!isNaN(document.F1.lname.value))
    {
        alert("Last Name  must  be  char's & can't be null")
 	   document.F1.lname.value=""
 	   document.F1.lname.focus()
 	   return false
    }

	
	if(!isNaN(document.F1.phone.value))
   {
	   if(document.F1.phone.value < 9 )
	   {
		 alert("The digits cannot be less than 10!!")
		 document.F1.phone.value=""
		 document.F1.phone.focus()
         return false   
	   }
   }
   else
   {
       alert("The Phone Number must be in numbers and upto 10 digits")
	   document.F1.phone.value=""
	   return false
   }
	
	
	

   if(!isNaN(document.F1.amount.value))
   {
	   if(document.F1.amount.value < 500)
	   {
		 alert("Minimum Balance should be 500 /-")
		 document.F1.amount.value=""
		 document.F1.amount.focus()
         return false   
	   }
   }
   else
   {
       alert("This Phone Field  must  be in numbers")
	   document.F1.amount.value=""
	   return false
   }
   
   

   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.username.focus()
		   return false
		}
   }

   

   return true   
   }
</SCRIPT>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
<title>ONLINE BANKING SYSTEM</title>
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

<style>
.container {
  position: relative;
  font-family: Arial;
}

.text-block {
  position: transparent;
  bottom: 100px;
  right: 80px;
  background-color: black;
  color: white;
  padding-left: 100px;
  padding-right: 200px;
}
</style>
</head>
<body>

<div id="top_links">

<div id="header">
	<h1>Online Banking System<span class="style1"></span></h1>
    <h2>ExtraOrdinary Services</h2>	

</div>
<!-- Navigation -->
<br>
<div id="navigation">
<ul>
  <li><a href="newacc.jsp">NEW ACCOUNT</a></li>
  <li><a href="balance.jsp">BALANCE</a></li>
  <li><a href="savings.jsp">SAVINGS</a></li>
  <li><a href="deposit.jsp">DEPOSIT</a></li>
  <li><a href="withdraw.jsp">WITHDRAW</a></li>
  <li><a href="transfer.jsp">TRANSFER</a></li>
  <li><a href="closeacc.jsp">CLOSE A/C</a></li>
 </ul>
</div>
<table style="width:897px; background:#FFFFFF; margin:0 auto;"><tr align="justify">
	<td width="299" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services"><h1>Services</h1><br>
		    <ul>
		    <li><a href="service.html" target="_self">ONLINE BANKING</a></li>
        	<li><a href="service1.html" target="_self">BANK GUARANTEE</a></li>
            <li><a href="service2.html" target="_self">ATMs SERVICES</a></li>
            <li><a href="service3.html" target="_self">ADVANCING OF LOANS</a></li>
            <li><a href="service4.html" target="_self">CONSULTANCY</a></li>
            </ul>
       </div>
	</td>
<td>
<form name=F1 onSubmit="return dil(this)" method="get" action="<%=request.getContextPath()%>/accregister.jsp" >
	 <center><h3 style="color:#283747">Already Have An Account?</h3><a href="viewsearch.jsp"><b>VIEW YOUR ACCOUNT DETAILS</b></a></center> <hr>
	<h3 style="color:#C24A44">Don't Have An Account? CREATE ONE !!</h3>
	 <fieldset>
    <legend>ACCOUNT OPENING FORM:</legend>
				  <table cellspacing="5" cellpadding="3">	
					<tr><td>FIRST NAME:</td><td> <input type="text" name="fname"/></td></tr>
					<tr><td>LAST NAME:</td><td> <input type="text" name="lname"/></td></tr>
					<tr><td><label>GENDER:</label></td><td><span>
			<input type="radio" id="male" name="gender" value="male">
<label for="male">Male</label><br>
<input type="radio" id="female" name="gender" value="female">
<label for="female">Female</label><br>
<input type="radio" id="other" name="gender" value="other">
<label for="other">Other</label></span>
		</td></tr>
					<tr><td>ACCOUNT TYPE:</td><td> <input type="text" name="acctype"/></td></tr>
					<tr><td>ID CARD NUMBER:</td><td> <input type="number" name="idcard" placeholder="eg:1234"/></td></tr>
					<tr><td>MONTHLY SALARY:</td><td> <input type="text" name="salary"/></td></tr>
					<tr><td>NATIONALITY:</td><td> <input type="text" name="nation"/></td></tr>
					 <tr><td><label for="birthday">DATE OF BIRTH:</label></td><td>
                      <input type="date" id="birthday" name="birthday"></td></tr>
                      <tr><td><label>ACCOUNT OPENING DATE:</label></td><td><input type="date"  name="accopen"/></td></tr>
                    <tr><td>NET AMOUNT:</td><td> <input type="text" name="amount"/></td></tr>
					<tr><td>ADDRESS:</td><td> <input type="text" name="address"/></td></tr>
					<tr><td>PHONE:</td><td> <input type="text" name="phone"/></td></tr>
					<tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
					<tr><td>RE-PASSWORD:</td><td> <input type="password" name="repassword"/></td></tr>
					<tr><td></td><td><input type="submit" value="Submit"/>
					
					<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
					</table>
					 </fieldset>
					 <hr>
	<center><a href="index.html"><b>USER DASHBOARD</b></a></center>
               		</form>
</td>
</table>
<!-- Footer -->
<div id="footer_top">  
  <div id="footer_copyright" >
 <div class="container">
  <div class="text-block">
  <h4>OUR BANK SERVICES</h4>
    <p>Our Online banking System is an electronic payment system that enables customers of a bank or other financial institution to conduct a range of financial transactions through the financial institution's Webapp.</p>
   Copyright � Online Banking System</div>
</div>
		  </div>
</div>
</div>
</body>
</html>