<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Fly Away Happily!</title>
<style>
body {
	background-image:
		url("https://images.unsplash.com/photo-1556388158-158ea5ccacbd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWlycG9ydHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80");
	/* Full height */
	height: 100%;
	max-width: 1200px;
	/* Center and scale the image nicely */
	background-repeat: no-repeat;
	background-size: cover;
	
	
}

.bg {
	/* The image used */
	position: relative;
	left: 150px;
	top: 200px;
}
</style>
</head>
<body>
	<div class="bg">
		<div class="h1" style="color: #EFEFEF">Fly Away</div>
         <br>
         <br>
		 <h3>Menu Options</h3>
		<button class="btn-light">
			<a href="/FlyAway/search-form.jsp" style="color: #001E6C">Book Flight</a>
		</button>
		<button class=" btn-light">
			<a href="/FlyAway/admin-login.jsp" style="color: #001E6C">Admin Login</a>
		</button>
	</div>

	<!-- Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>