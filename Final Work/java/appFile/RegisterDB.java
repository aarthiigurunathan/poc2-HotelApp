package appFile;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterDB")
public class RegisterDB extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		try {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String firstName = request.getParameter("Firstname");
		String lastName = request.getParameter("Lastname");
		String userName = request.getParameter("Username");
		String dob = request.getParameter("DOB");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		//database Communication
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelapp", "test1", "Test1234");
		PreparedStatement stmt = conn.prepareStatement("Insert into userdetail values(?,?,?,?,?,?,?)");

		stmt.setString(1, id);
		stmt.setString(2, firstName);
		stmt.setString(3, lastName);
		stmt.setString(4, userName);
		stmt.setString(5, dob);
		stmt.setString(6, email);
		stmt.setString(7, password);

		int i = stmt.executeUpdate();
		if (i > 0) {
			response.sendRedirect("login.jsp");
		} else {
			PrintWriter out = response.getWriter();
			out.println("To register with new credentials, register again here !");
			response.sendRedirect("registrationPage.jsp");
		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}	

}
