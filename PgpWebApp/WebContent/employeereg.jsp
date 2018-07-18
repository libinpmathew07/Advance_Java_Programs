<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="empregaction.jsp">
Email:<input type="text" name="email"/>
Pass:<input type="text" name="pass"/>
Male:<input type="radio" name="gen" value="male"/>
Female:<input type="radio" name="gen" value="female"/>
Mobile:<input type="text" name="phone"/>
<input type="submit" value="Login"/> 
</form>
</body>
</html>