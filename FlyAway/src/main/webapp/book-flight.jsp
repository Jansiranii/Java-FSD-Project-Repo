<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.flyaway.bean.Flight"%>
<%@page import="com.flyaway.bean.Airline"%>
<%@page import="com.flyaway.bean.Location"%>
<%@page import="com.flyaway.bean.SearchForm"%>
<%@page import="com.flyaway.dao.AirlineDao"%>
<%@page import="com.flyaway.dao.AirlineImplementationDao"%>
<%@page import="com.flyaway.dao.LocationDao"%>
<%@page import="com.flyaway.dao.LocationDaoImpl"%>
<%@page import="com.flyaway.dao.FlightDao"%>
<%@page import="com.flyaway.dao.FlightDaoImpl"%>
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

<title>Hello, world!</title>
<style type="text/css">
.container {
	margin-top: 70px;
	background-color: white;
	padding: 20px;
	margin-bottom: 50px;
}

body {
	background-color: #cdecf2;
}
</style>
</head>
<body>
	<div class="container">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<div align="center">
						<%
						SearchForm search = (SearchForm) request.getSession().getAttribute("searchForm");
						List<Flight> listOfFlights = search.getFilteredFlights();
						%>
						<div class="h1 text-center" style="color: #0eb1e6">FlyAway</div>
						<br>
						

						<h4 class="text-center">List of Flights</h4>

						<table class="table table-striped">

							<tr>
								<th>Flight ID</th>
								<th>Airline</th>
								<th>Source</th>
								<th>Destination</th>
								<th>Date</th>
								<th>Price per Ticket</th>
								<th>Select</th>

							</tr>
							<%
							// Iterating through subjectList

							if (listOfFlights != null) // Null check for the object
							{
								Iterator<Flight> iterator = listOfFlights.iterator(); // Iterator interface

								while (iterator.hasNext()) // iterate through all the data until the last record
								{
									Flight flight = iterator.next();
							%>
							<tr>
								<td><%=flight.getFlightId()%></td>
								<td><%=flight.getAirline().getAirlineName()%></td>
								<td><%=flight.getLocation().getSource()%></td>
								<td><%=flight.getLocation().getDestination()%></td>
								<td><%=search.getDate()%></td>
								<td><%=flight.getPricePerTicket()%></td>
								<td><a href="booking?flightid=<%=flight.getFlightId()%>">Book Flight</a></td>
							</tr>
							<%
							}
							}
							%>
						</table>
					</div>
					
				</div>
				<div class="col-6 text-center"><img
					src="https://media.istockphoto.com/photos/commercial-jet-flying-over-clouds-picture-id155380716?b=1&k=20&m=155380716&s=170667a&w=0&h=LjalFiyrKtBye-26dufNMHkbU_k_KrJ1-UYnbTpaxtM="
					class="" alt="..."></div>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>