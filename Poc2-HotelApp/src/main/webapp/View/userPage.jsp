<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logged In successfully</title>
<link href="css/userPage.css" rel="stylesheet" type="text/css" />
</head>
<%
String name=(String)session.getAttribute("username");
%>
<body>
		<nav>
		<ul class="topnav" id="dropdownclick">
			<li class="titlelogo">Swagat<span>Resort</span></li>
			<li class="topnav-right"><a href="logout">Logout</a></li>
			<li class="topnav-right"><a href="myBookingPage.jsp">My Bookings</a></li>
			<li class="topnav-right"><a href="bookRoom.jsp">Book A Room</a>|</li>
		</ul>
	</nav>
	<h1 style="text-align: center; color: Green">Welcome <%= name %> to Swagat resort, Logged In successfully !</h1>
	<br>
	<h1>Our Services</h1>
	<p>The 11-story hotel has 201 rooms (ranging from 43 to 180 sq m), including 20 suites, spread across seven floors. An 8,072 sq ft (747 sq m) banquet space is divisible into six rooms. A swimming pool overlooks the Guindy National Park. The hotel was designed by New York architects, George Wong Designs. The hotel is decorated with Indian textiles. designed by Venu Juneja from Goa. The 'weaving theme' features silk on one wall and canvas on the other. The signature restaurant, 'The Flying Elephant', is set on three levels, with six open show kitchens.
	</p>
</body>
</html>