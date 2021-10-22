package Controller;

import java.io.IOException; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession; 

public class LogoutDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        response.setHeader("cache-control","no-cache, no-store,must-revalidate");
        if (session != null) {
            session.removeAttribute("username");
            
             
            RequestDispatcher dispatcher = request.getRequestDispatcher("home.html");
            dispatcher.forward(request, response);
            session.invalidate(); 
        }
    }
}
	
 

 
    