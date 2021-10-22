<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Booking Details</title>
<link href="css/myBooking.css" rel="stylesheet" type="text/css" />
</head>
<%
String name = (String) session.getAttribute("username");
%>
<body>
	<nav>
		<ul class="topnav" id="dropdownclick">
			<li class="titlelogo">Swagat<span>Resort</span></li>
			<li class="topnav-right"><a href="logout">Logout</a></li>
			<li class="topnav-right"><a href="bookRoom.jsp">Book A Room</a>|</li>
		</ul>
	</nav>
	<div class="head">
		<h1>
			Welcome <%=name%> to Swagat resort, Room Booked successfully!
		</h1>
		<div class="room">
			<h1>Your Booking Details :</h1>
		</div>
		<div class="sqlDB">
			<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/hotelapp" user="test1"
				password="Test1234" />
			<c:set var="uname" value="<%=name%>" />
			<sql:query dataSource="${snapshot}" var="result">
         SELECT * FROM hotelapp.bookingdetails WHERE UserName = ?
         <sql:param value="${uname}" />
			</sql:query>

			<table class="table" border="1">
				<tr>
					<th>UserName</th>
					<th>RoomNumber</th>
					<th>RoomType</th>
					<th>BookingDate</th>
					<th>StartDate</th>
					<th>EndDate</th>

				</tr>

				<c:forEach var="row" items="${result.rows}">
					<tr>
						<td><c:out value="${row.UserName}" /></td>
						<td><c:out value="${row.RoomNumber}" /></td>
						<td><c:out value="${row.RoomType}" /></td>
						<td><c:out value="${row.BookingDate}" /></td>
						<td><c:out value="${row.StartDate}" /></td>
						<td><c:out value="${row.EndDate}" /></td>

					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="thanks">
			<h1>Thank you!</h1>
		</div>
	</div>
</body>
</html>