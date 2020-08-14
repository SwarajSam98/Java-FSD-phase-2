<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="template.css" />
</head>
<body class="d-flex flex-column h-100">

	<%@ include file="header.jsp"%>
	<main role="main" class="flex-shrink-0">
		<div class="container"><br><br>
			<h1 class="mt-5">FlyAway Admin Portal</h1>
			<p class="lead"> FlyAway is a online booking portal for flights. You can search about any flights and book. It is 
			developed by Swaraj Sambare</p>
		</div>
	</main>
	<%@ include file="footer.jsp"%>
	<!-- JS, Popper.js, and jQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</body>
</html>