<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<script type="text/javascript">
	function eraseError(id){
		document.getElementById('tdSourceAccountNo').innerHTML="<span id='checkAno' onclick='checkAccountNo()'>check</span>";
		document.getElementById('tdTargetAccountNo').innerHTML="";
        document.getElementById('tdTransferAmount').innerHTML="";
	}
	function checkAccountNo(){
		regx=/^[1-9]{1}[0-9]{15}$/;
		var accountNo=$("#sourceAccountNo").val().trim();
		if(accountNo!=""){
			if(regx.test(accountNo)){
				$("#tdSourceAccountNo").html("<div id='checkingAccount' class='CheckingAccount'></div>");
				$.getJSON("${path}/CheckExistingAccountNo?accountNo="+accountNo,function(data){
					if(data==1){
						document.getElementById("checkingAccount").style.backgroundImage='url(${path}/images/tick.gif)';
					}else{
						$("#tdSourceAccountNo").html("Account does not exist");
					}
				});
			}else{
				$("#tdSourceAccountNo").html("Plz. enter valid account no");
			}
		}else{
			$("#tdSourceAccountNo").html("Plz. enter account no");
		}
	}
	function checkValidation(){
		var regx=/^[0-9]+$/;
		var sourceAccountNo = $("#sourceAccountNo").val().trim();
		var targetAccountNo = $("#targetAccountNo").val().trim();
		var transferAmount = $("#transferAmount").val().trim();
		if(sourceAccountNo==""){
			$("#tdSourceAccountNo").html("Plz. Enter source account No");
		}else if(targetAccountNo==""){
			$("#tdTargetAccountNo").html("Plz. Enter target account No");
		}else if(transferAmount==""){
			$("#tdTransferAmount").html("Plz. Enter transfer amount");
		}else{
			
			if(sourceAccountNo.length==10 && targetAccountNo.length==10 && regx.test(sourceAccountNo)==true && regx.test(targetAccountNo)==true && transferAmount>0){
				if(sourceAccountNo==targetAccountNo){
					$("#tdTargetAccountNo").html("Target Account No should not be same");
				}else{
					return true;
				}
			}else if(sourceAccountNo.length<10){
				$("#tdSourceAccountNo").html("Account No should be 10 digis");
			}else if(targetAccountNo.length<10){
				$("#tdTargetAccountNo").html("Account No should be 10 digis");
			}else if(regx.test(sourceAccountNo)==false){
				$("#tdSourceAccountNo").html("Only digits are allowed");
			}else if(regx.test(targetAccountNo)==false){
				$("#tdTargetAccountNo").html("Only digits are allowed");
			}else if(regx.test(transferAmount)==false || transferAmount<1){
				$("#tdTransferAmount").html("Plz. Enter valid amount");
			}
		}
		return false;
	}
	function fundTransfer() {
		var sano =document.getElementById("sourceAccountNo").value.trim();
		var tano =document.getElementById("targetAccountNo").value.trim();
		var ta =document.getElementById("transferAmount").value.trim();
        document.getElementById('loadingContainer').style.display="block";
        var xmlhttp;
        if (window.XMLHttpRequest){
        	xmlhttp=new XMLHttpRequest();
        }else{
        	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function(){
            if (xmlhttp.readyState==4)
            { 
            	document.getElementById('loadingContainer').style.display="none";
            	document.getElementById("leftContainer").innerHTML=xmlhttp.responseText;
            }
          }
        xmlhttp.open("POST","<%=request.getServletContext().getContextPath()%>/FundTransferServlet?sourceAccountNo="+sano+"&targetAccountNo="+tano+"&transferAmount="+ta,true);
        xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xmlhttp.send();
    }
	$(document).ready(function() {
		$("#transferBtn").click(function() {
			if(checkValidation()){
				fundTransfer();
			}
		});
	});	
	</script>


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
    <li><a href="create.html">NEW ACCOUNT</a></li>
    <li><a href="balance1.jsp">BALANCE</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <li><a href="withdraw1.jsp">WITHDRAW</a></li>
    <li><a href="transfer1.jsp">TRANSFER</a></li>
    <li><a href="closeac1.jsp">CLOSE A/C</a></li>
    <li><a href="saving.jsp">SAVING</a></li>
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
    	<div id="welcome" style="border-right:#666666 1px dotted;"><h1>TRANSFER ACCOUNT</h1><br></div>
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

				    <table >
           				<tr><td style="color:blue;font-size:18px;">Source Account Number</td></tr>
           				<tr><td><input type="text" id="sourceAccountNo" name="sourceAccountNo" maxlength="16" onkeyup="eraseError(this)" style="padding:1px 3px;font-size:18px;width:200px;color:darkblue;" /></td>
           					<td id="tdSourceAccountNo" style="color:red"><span id="checkAno" onclick="checkAccountNo()">check</span></td>
           				</tr>
           				<tr><td style="color:blue;font-size:18px;">Target Account Number</td></tr>
           				<tr><td><input type="text" id="targetAccountNo" name="targetAccountNo" maxlength="16" onkeyup="eraseError(this)" style="padding:1px 3px;font-size:18px;width:200px;color:darkblue;" /></td>
           					<td id="tdTargetAccountNo" style="color:red"></td>
           				</tr>
           				<tr><td style="color:blue;font-size:18px;">Amount to be transfered</td></tr>
           				<tr><td><input type="text" id="transferAmount" name="transferAmount" onkeyup="eraseError(this)" style="padding:1px 3px;font-size:18px;width:200px;color:blue;" /></td>
           					<td id="tdTransferAmount" style="color:red"></td>
           				</tr>
           			</table>
           			<input type="button" id="transferBtn" value="transfer" style="padding:3px;width:120px;margin-left:3px;"/>
					<input type="reset">
                    </td>
                    </tr>
                   	</table> 
				
			</td>
		</tr>
	</table>
    	   </div>      
 
    
            	
    

    
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  


<script type="text/javascript">
document.onload = ctck();
</script>
</div>

</body>
</html>
