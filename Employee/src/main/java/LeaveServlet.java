
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/LeaveServlet")
public class LeaveServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String employeeName = request.getParameter("employeeName");
        String leaveDate = request.getParameter("leaveDate");
        String status = "Pending";
        String reason = request.getParameter("res");
        String dep  = request.getParameter("depart");
        String leaveDateto = request.getParameter("leaveDateTo");

        // Save leave request to the database
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Replace "your_database_name", "your_username", and "your_password" with your actual database credentials
            String dbUrl = "jdbc:mysql://localhost:3306/demo";
            String dbUsername = "root";
            String dbPassword = "admin";
            
            Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO leave_request (employee_name, leave_date, status, reason, dep, leave_date_to) VALUES (?, ?, ?, ?, ?, ?)");
            pstmt.setString(1, employeeName);
            pstmt.setDate(2, java.sql.Date.valueOf(leaveDate));
            pstmt.setString(3, status);
            pstmt.setString(4, reason);
            pstmt.setString(5, dep);
            pstmt.setString(6, leaveDateto);
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        // Redirect to the leave_form.jsp with the request status
        request.setAttribute("employeeName", employeeName);
        request.setAttribute("leaveDate", leaveDate);
        request.setAttribute("status", status);
        request.getRequestDispatcher("leave_form.jsp").forward(request, response);
    }
}
