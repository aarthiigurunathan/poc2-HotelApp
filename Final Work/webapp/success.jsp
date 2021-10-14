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
<title>Logged In successfully</title>
<link href="css/success.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="head">
		<h1>Welcome ${param.username} to Swagat resort, Logged In
			successfully !</h1>
		<div class="room">
			<h1>Choose your room number and room type</h1>
		</div>
		<div class="sqlDB">
			<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/hotelapp" user="test1"
				password="Test1234" />

			<sql:query dataSource="${snapshot}" var="result">
         SELECT * FROM hotelapp.roomdetails;
      </sql:query>

			<table class="table" border="1" width="50%">
				<tr>
					<th>RoomNumber</th>
					<th>RoomType</th>

				</tr>

				<c:forEach var="row" items="${result.rows}">
					<tr>
						<td><c:out value="${row.RoomNumber}" /></td>
						<td><c:out value="${row.RoomType}" /></td>

					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="thanks">
			<h1>Thank you, Have a great day.</h1>
		</div>
	</div>
</body>
</html>