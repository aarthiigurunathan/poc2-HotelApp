package appFile;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginDB")
public class LoginDB extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		try {
		// TODO Auto-generated method stub
			String uname = request.getParameter("username");
			String pswd = request.getParameter("password");

			//database Communication
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelapp", "test1", "Test1234");
			Statement stmt = conn.createStatement();

			ResultSet res = stmt
					.executeQuery("select * from userdetail where UserName = '" + uname + "' and password = '" + pswd + "' ");

			if (res.next()) {
				response.sendRedirect("success.jsp");
			} else {
				PrintWriter out = response.getWriter();
				out.println("Invalid Credentials");
				response.sendRedirect("login.jsp");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}	

}
