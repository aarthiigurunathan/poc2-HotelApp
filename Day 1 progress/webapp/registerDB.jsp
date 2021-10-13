<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String id = request.getParameter("id");
String firstName = request.getParameter("Firstname");
String lastName = request.getParameter("Lastname");
String userName = request.getParameter("Username");
String dob = request.getParameter("DOB");
String phoneNumber = request.getParameter("Contact Number");
String email = request.getParameter("email");
String password = request.getParameter("password");

//database Communication
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelapp","test1","Test1234");
 PreparedStatement stmt = conn.prepareStatement("Insert into userdetails values(?,?,?,?,?,?,?,?)");
 
 stmt.setString(1, id);
 stmt.setString(2, firstName);
 stmt.setString(3, lastName);
 stmt.setString(4, userName);
 stmt.setString(5, dob);
 stmt.setString(6, phoneNumber);
 stmt.setString(7, email);
 stmt.setString(8, password);
 
 int i = stmt.executeUpdate();
 if (i>0){
	 response.sendRedirect("success.jsp");
 }
%>
</body>
</html>