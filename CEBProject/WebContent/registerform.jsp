<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RegisterForm</title>
<script type="text/javascript">
//JavaScript Start code
function validate()//function
{
    
    var empname = document.getElementById("empname").value;
    var email = document.getElementById("email").value;
    var pass = document.getElementById("pass").value;
    var age = document.getElementById("age").value;
    var mobile = document.getElementById("mobile").value;
   
    if(empname==="")//condition -1
    {
        document.getElementById("div2").innerHTML="Enter a employee name";
        document.getElementById("div2").style.color="Red";
        
    }
    else
    {
        document.getElementById("div2").innerHTML="";
    }
    if(email.indexOf("@")> -1)//condition -2
    {
        document.getElementById("div4").innerHTML="";
    }
     else
    {
        document.getElementById("div4").innerHTML="Enter the correct email address";
        document.getElementById("div4").style.color="Red";
        
    }
    if(pass.length<=6)//condition -3
    {
        document.getElementById("div3").innerHTML="Password is weak";
        document.getElementById("div3").style.color="Red";
    }
     else
    {
        document.getElementById("div3").innerHTML="";
    }
    if(age==="")//condition -4
    {
        document.getElementById("div5").innerHTML="Enter a age";
        document.getElementById("div5").style.color="Red";
        
    }
    else
    {
        document.getElementById("div5").innerHTML="";
    }  
    if(mobile==="")//condition -6
    {
        document.getElementById("div6").innerHTML="Give Phone Number";
        document.getElementById("div6").style.color="Red";
    }
     else
    {
        document.getElementById("div6").innerHTML="";
    }
}    
//JavaScript end Code
    </script>
    
</head>
<body>

<h3>NewRegisterForm</h3>
<hr>
<!-- code start -->
<form action="registerformaction" method="get"><!-- Form action given -->
<table>
<!-- Table Design start -->
<tr><td>EmployeeName:</td><td><input type="text" name="empname" id="empname" onClick="validate()" requried/></td><td><h6 id="div2"></h6></td></tr>
<tr><td>Email:</td><td><input type="text" name="email" id="email" onClick="validate()"/></td><td><h6 id="div4"></h6></td></tr>
<tr><td>Password:</td><td><input type="password" name="pass" id="pass" onClick="validate()"/></td><td><h6 id="div3"></h6></td></tr>
<tr><td>Age:</td><td><input type="text" name="age" id="age" onClick="validate()"/></td><td><h6 id="div5"></h6></td></tr>
<tr><td>Dob:</td><td><input type="text" name="dob" placeholder="dd/mm/yyyy" required/></td></tr>
<tr><td>Mobile:</td><td><input type="text" name="mobile" id="mobile" onClick="validate()" /></td><td><h6 id="div6"></h6></td></tr>
<!-- <tr><td>Address:</td><td><input type="text" name="addr"/></td></tr> -->
<tr><td>Gender:</td><td><input type="radio" name="gen" value="male"/>Male
<input type="radio" name="gen" value="female"/>Female
</td></tr>
<tr><td>Qualification:</td><td>
<select name="quali">
<option>BE</option>
<option>BTECH</option>
<option>BSC</option>
<option>MSC</option>
</select>
</td></tr>
<tr><td><input type="submit" value="Register" onClick="validate()"/></td></tr>
<!-- Table Design End -->
</table>
</form>
<!-- Code End -->
</body>
</html>