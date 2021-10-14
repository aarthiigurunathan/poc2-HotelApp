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
String uname = request.getParameter("username");
String pswd = request.getParameter("password");

//database Communication
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelapp","test1","Test1234");
Statement stmt = conn.createStatement();

ResultSet res = stmt.executeQuery("select * from userdetail where UserName = '"+uname+"' and password = '"+pswd+"' ");

if(res.next()){
	response.sendRedirect("success.jsp");
}
else {
	out.println("Invalid Credentials");
	out.println("<a href = login.jsp>Please Login Again !</a>");
}

%>
</body>
</html>