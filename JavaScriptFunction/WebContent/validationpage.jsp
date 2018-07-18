<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function validate()
{
	//var mailformat = ;
	
	var x=document.forms["form1"]["uname"].value;
	if(x=="")
		{
		alert("please fill the textfield")
		//return false;
		}
	var y=document.forms["form1"]["pass"].value;
	if(y.length<6)
		{
		alert("give password  greater than 6")
		}
// 	var z=document.forms["form1"]["email"].value;
// 	if(z.match("[0-9_%+-]+@[0-9-]+\$"))
// 		{
// 		alert("give proper email id")
// 		}
	}

</script>

</head>
<body>
<form name="form1" onsubmit="validate()">
Name:<input type="text" name="uname"/>
Pass:<input type="text" name="pass"/>
Email:<input type="email" pattern="[^@]*@[^@]*" placeholder="enter the value is"/>
<input type="submit" value="Login" />
</form>
</body>
</html>