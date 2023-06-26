

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class servlet_connect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","admin");
				
				
				
				
				
				String name = request.getParameter("name");
				String password = request.getParameter("pass");
				String email = request.getParameter("email");
			
				
				
				
				
				PreparedStatement p = con.prepareStatement("insert into adminin values(?,?,?)");
				
				p.setString(1, name);
				
				p.setString(2, password);
				
				p.setString(3, email);
				
				p.executeUpdate();
				
				
				
				PrintWriter out = response.getWriter();
				out.print("you have registerd sucessfully");
				
				
				
			
		} catch (Exception e) {
			
		}
		
		
	}

}
