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
var n=prompt("Enter the value is::")

var rev=0;

while(n!=0)
{
	rev=rev*10;
	rev=rev+(n%10);
	n=Math.floor(n/10);
	}
	document.write(rev)
</script>
</body>
</html>