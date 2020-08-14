<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Login Form</h2>
	<form action="LoginServlet" method="post">
		<input type="text" name="uname" placeholder="Enter Username">
		<input type="text" name="upass" placeholder="Enter Password">
		<input type="submit" name="Login">


	</form>
</body>
</html>