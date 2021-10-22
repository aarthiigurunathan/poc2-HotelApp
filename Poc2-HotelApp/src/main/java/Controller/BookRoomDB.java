package Controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.dao.Database_Connection;

public class BookRoomDB extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		try {
			String fromDate = request.getParameter("startDate");
			String toDate = request.getParameter("endDate");
			LocalDate now = LocalDate.now(); 
			String currentDate = now.toString();
			String room = request.getParameter("Room");
			String available = "Available";
			String booked = "Booked";
			
			HttpSession session = request.getSession();
			String userName = (String) session.getAttribute("username");

			// database Communication
			Connection conn = Database_Connection.initializeDatabase();
			Statement stmt = conn.createStatement();

			ResultSet res = stmt.executeQuery(
					"select * from roomdetails where RoomType ='" + room + "' and RoomAvailability = '" + available + "'");
			System.out.println("Room check" + room);
			
			if (res.next()) {
				String roomNumber = res.getString("RoomNumber");
				String roomType = res.getString("RoomType");
				System.out.println(roomNumber + " " + roomType);
				PreparedStatement ps = conn.prepareStatement("update roomdetails set RoomAvailability= ? where RoomNumber = ? ");
				ps.setString(1, booked);
				ps.setString(2, roomNumber);
				ps.executeUpdate();
				
				PreparedStatement ps1 = conn.prepareStatement("insert into bookingdetails(UserName,RoomNumber,RoomType,BookingDate,StartDate,EndDate) values(?,?,?,?,?,?)");
				ps1.setString(1, userName);
				ps1.setString(2, roomNumber);
				ps1.setString(3, roomType);
				ps1.setString(4, currentDate);
				ps1.setString(5, fromDate);
				ps1.setString(6, toDate);
				ps1.executeUpdate();
				
				RequestDispatcher rd = request.getRequestDispatcher("userPage.jsp");
				rd.forward(request, response);
			} else {
				PrintWriter out=response.getWriter();  
				out.print("The selected Room Type are Not Avalaible, Please Choose Another Type !! "); 
				RequestDispatcher rd = request.getRequestDispatcher("bookRoom.jsp");
				rd.forward(request, response);
				out.print("The selected Room Type are Not Avalaible, Please Choose Another Type !! "); 
				out.close();  
			}
			conn.close();
			res.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}