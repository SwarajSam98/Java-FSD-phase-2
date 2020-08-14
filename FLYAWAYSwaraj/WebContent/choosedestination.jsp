<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Destination</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<link href="bootstrap.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="template.css" />
</head>
<body class="d-flex flex-column h-100">
	<%@ include file="header.jsp"%>
	<h2>Please Select Your Journey from and to</h2>
	<br><br><br>
	<form action="flight" method="post">
	<center >
		<label style="margin-right: 150px;"> From </label>
		<select name="city1" class="form-control" style= "width: 250px;">
		<option value =-1> Select From </option>
		<%
			try
		{
				String Query="select * from destination";
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway_db","root" ,"Sss1998$1707" );
				Statement stm = conn.createStatement();
				ResultSet rs = stm.executeQuery(Query);
				while(rs.next()){
					%>
					<option value="<%=rs.getInt("id")%>"><%=rs.getString("country") %></option>
					<%
				}
				
		}catch(Exception ex){
			ex.printStackTrace();
			out.println(ex.getMessage());
		}
		%>
		
		</select> <br><br><br>
		<label style="margin-right: 150px;"> To </label>
		<select name="city2" class="form-control" style= "width: 250px;">
		<option value =-1> Select To</option>
		<%
			try
		{
				String Query="select * from destination";
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway_db","root" ,"Sss1998$1707" );
				Statement stm = conn.createStatement();
				ResultSet rs = stm.executeQuery(Query);
				while(rs.next()){
					%>
					<option value="<%=rs.getInt("id")%>"><%=rs.getString("country") %></option>
					<%
				}
				
		}catch(Exception ex){
			ex.printStackTrace();
			out.println(ex.getMessage());
		}
		%>
		</select><br><br>
		<input type="submit" class="btn btn-primary" value="Submit"/>
	</center>
	</form>
	<%@ include file="footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>