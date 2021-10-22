<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Room</title>
<link href="css/bookRoom.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<nav>
		<ul class="topnav" id="dropdownclick">
			<li class="titlelogo">Swagat<span>Resort</span></li>
			<li class="topnav-right"><a href="logout">Logout</a></li>
			<li class="topnav-right"><a href="myBooking.jsp">My Bookings</a></li>
		</ul>
	</nav>
	<br>
	<h1>Book A Room</h1>

	<form action="book" method="post">
		<div class="date">
			<p>From</p>
			<input type="date" placeholder="From" name="startDate" required>
			<p>To</p>
			<input type="date" placeholder="To" name="endDate" required>
		</div>
		<br>
		<div class="flex-container">
			<div><INPUT TYPE="radio" NAME="Room" VALUE="Single" />Single Type Room<br></div>
			<div><INPUT TYPE="radio" NAME="Room" VALUE="Twin" />Twin Type Room<br></div>
			<div><INPUT TYPE="radio" NAME="Room" VALUE="Executive" />Executive<br></div>
			<div><INPUT TYPE="radio" NAME="Room" VALUE="Presidential Suite" />Presidential Suite<br></div>
			<div><INPUT TYPE="radio" NAME="Room" VALUE="Villa" />Villa Type<br></div>
		</div>
		<div class="submit"><INPUT TYPE="submit" VALUE="Book" /><br></div>
	</form>
</body>
</html>