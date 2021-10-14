<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <head>
      <title>Room Availability</title>
   </head>

   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/hotelapp"
         user = "test1"  password = "Test1234"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * FROM hotelapp.roomdetails;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>RoomNumber</th>
            <th>RoomType</th>
           
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.RoomNumber}"/></td>
               <td><c:out value = "${row.RoomType}"/></td>
               
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>