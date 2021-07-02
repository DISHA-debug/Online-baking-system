


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.accountno.focus()
		   return false
		}
   }

   if(isNaN(document.F1.accountno.value))
   {
       alert("Accountno must  be  number & can't be null")
	   document.F1.accountno.value=""
	   document.F1.accountno.focus()
	   return false
   }
  

   if(!isNaN(document.F1.password.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }
   
   return true   
}
</SCRIPT>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ONLINE BANKING SYSTEM</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

</head>

<body>

<div id="top_links">
  

<div id="header">
	<h1>Online Banking System<span class="style1"></span></h1>
    <h2>ExtraOrdinary Services</h2>	

    <A href="index.html"><IMG SRC="images/home1.gif"></IMG></A>	
</div>

<div id="navigation">
<ul>
  <li><a href="newacc.jsp">NEW ACCOUNT</a></li>
  <li><a href="balance.jsp">BALANCE</a></li>
  <li><a href="savings.jsp">SAVINGS</a></li>
  <li><a href="deposit.jsp">DEPOSIT</a></li>
  <li><a href="withdraw.jsp">WITHDRAW</a></li>
  <li><a href="transfer.jsp">TRANSFER</a></li>
  <li><a href="closeac1.jsp">CLOSE A/C</a></li>
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
    
    <td width="1200" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;"><h1>CLOSE ACCOUNT</h1><br>
    	    <table  align="center" bgcolor="white">
		<tr>
				
		</tr>
		<tr>
			<td>
			<div><%if(request.getAttribute("balance")!=null)
			{
			out.print(request.getAttribute("balance"));
			}
			
			 %></div>
				<form name=F1 onSubmit="return dil(this)" method="get" action="<%=request.getContextPath()%>/viewcloseaccDetails.jsp" >
				     <table cellspacing="5" cellpadding="3">
				    <tr><td>ID CARD NO:</td><td> <input type="text" name="idcard"/></td></tr>
					<tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
					
					<tr><td></td><td><input type="submit" value="Submit"/>
					
                   
                    <INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
                   	</table>
				</form>
			</td>
		</tr>
	</table>
    	   </div>      
    </td>
    
            	
    
</tr></table>
    
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  


<script type="text/javascript">
document.onload = ctck();
</script>
</div>

</body>
</html>
