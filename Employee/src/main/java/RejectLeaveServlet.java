

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class RejectLeaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 int id = Integer.parseInt(request.getParameter("id"));

	        // Update the status of the leave request to "Approved"
	        try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "admin");
	            PreparedStatement pstmt = conn.prepareStatement("UPDATE leave_request SET status = 'Rejected' WHERE id = ?");
	            pstmt.setInt(1, id);
	            pstmt.executeUpdate();
	            pstmt.close();
	            conn.close();
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	        }

	        // Redirect back to the admin page to see updated leave requests
	        response.sendRedirect("admin.jsp");
	    }
		
		
		
		
	}


