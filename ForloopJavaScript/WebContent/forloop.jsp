<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
var a,i;

a=prompt("Enter the value is:");

for(i=0;i<=a;i++)
	{
	  if(i%2==0)
		  {
		    document.write("Even",i);
		  }
	  else
		  {
		   document.write("Odd",i);
		  }
	  
	}


</script>
</body>
</html>