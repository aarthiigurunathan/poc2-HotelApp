package Controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.dao.Database_Connection;

@WebServlet("/LoginDB")
public class LoginDB extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		try {
		// TODO Auto-generated method stub
			String uname = request.getParameter("username");
			String pswd = request.getParameter("password");
			HttpSession session= request.getSession();
			session.setAttribute("username", uname);

			//database Communication
			Connection conn = Database_Connection.initializeDatabase();
			Statement stmt = conn.createStatement();

			ResultSet res = stmt
					.executeQuery("select * from userdetail where UserName = '" + uname + "' and password = '" + pswd + "' ");

			if (res.next()) {

				if(((res.getString("UserType")).equals("User"))) {
					response.sendRedirect("userPage.jsp");
				}
				else {
					response.sendRedirect("adminPage.jsp");
				}
			} 
			else {
				PrintWriter out = response.getWriter();
				out.println("Invalid Credentials");
				response.sendRedirect("login.jsp");
			}
			conn.close();
			res.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}	
}