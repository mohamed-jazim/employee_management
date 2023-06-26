

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","admin");
		
			String name=request.getParameter("name");
			String password = request.getParameter("pass");
			
			

			PreparedStatement ps=con.prepareStatement( "select * from adminin where name=? and password=?");  
					ps.setString(1,name);  
					ps.setString(2,password);     
					ResultSet rs=ps.executeQuery();  
					
			
			 if(rs.next()){  
			        RequestDispatcher rd=request.getRequestDispatcher("home.jsp");  
			        rd.forward(request,response);
			        
			    }  
			    else{  
			       
			    	PrintWriter out = response.getWriter();
			    	out.print("</script>");
			        RequestDispatcher rd=request.getRequestDispatcher("er.jsp");  
			        rd.forward(request, response);  
			    }  
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
	}

}
