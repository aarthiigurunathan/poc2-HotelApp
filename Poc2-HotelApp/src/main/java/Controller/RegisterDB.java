package Controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.dao.Database_Connection;

public class RegisterDB extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			// TODO Auto-generated method stub

			String firstName = request.getParameter("Firstname");
			String lastName = request.getParameter("Lastname");
			String userName = request.getParameter("Username");
			String dob = request.getParameter("DOB");
			String phoneNumber = request.getParameter("phoneNumber");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String userType = "User";

			// database Communication
			Connection conn = Database_Connection.initializeDatabase();
			PreparedStatement stmt = conn.prepareStatement("Insert into userdetail values(?,?,?,?,?,?,?,?)");

			stmt.setString(1, firstName);
			stmt.setString(2, lastName);
			stmt.setString(3, userName);
			stmt.setString(4, dob);
			stmt.setString(5, phoneNumber);
			stmt.setString(6, email);
			stmt.setString(7, password);
			stmt.setString(8, userType);

			int i = stmt.executeUpdate();
			if (i > 0) {
				response.sendRedirect("login.jsp");
			} else {
				PrintWriter out = response.getWriter();
				out.println("To register with new credentials, register again here !");
				response.sendRedirect("registrationPage.jsp");
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
