<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- admin.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Leave Management System - Admin Panel</title>
    <style>
  
  
   body {
        background-image: url(https://cdn.pixabay.com/photo/2017/07/25/22/54/lego-2539844_1280.jpg);
        background-repeat: no-repeat;
        background-size:cover;
       
        margin: 0px;
        padding: 0px;
        
        height: 100vh;
        overflow-y: scroll;
        
    }
    
    
    
    h1 {
            color:white; 
        }
    
    .content {
            height: 2000px;
            flex: 1;
            padding-bottom: 50px; 
        }
    
    
     .navigation-menu {
            list-style-type: none;
            padding: 0;
            margin: 0;
            text-align: right;
             transition: transform 0.3s ease-in-out;
        }
        
        .navigation-menu li {
            display: inline;
            margin-left: 50px;
            
        }
        .navigation-menu li a {
            color: white;
            text-decoration: none;
        }
     .text-container {
            background-color: white;
            padding: 80px;
            
            margin-top:180px;
            margin-left:250px;
            max-width: 800px;
            max-height:500px;
            border-radius: 10px;
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }
        
       
        
        
        .bottom-text {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #f2f2f2;
            padding: 10px;
            text-align: center;
        }
        
         .conten {
            text-align: center;
            margin: 110px;
        }
        
        .highlight {
            color: red; 
        }

        .highlight:hover {
            color: blue; 
        }
        
        
        /* Apply styles to the submit button */
input[type="submit"] {
  background-color: #4CAF50; /* Replace this color with your desired color code */
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

/* Optional: Add styles for hover and focus states */
input[type="submit"]:hover,
input[type="submit"]:focus {
  background-color: #45a049; /* Replace this color with the desired hover color code */
}


 table {
        border-collapse: collapse;
        width: 100%;
    }

    th, td {
        border: 1px solid #ccc;
        padding: 8px;
        text-align: center;
    }

    th {
        background-color: grey;
        font-weight: bold;
    }

        
   
</style>
</head>
<body>
    <h1>Welcome to Admin Panel</h1>
     <div class="text-container">
    <table border="1">
     <tr>
            <th>ID</th>
            <th>Employee Name</th>
            <th>Leave Date from</th>
            <th>Leave Date to</th>
            <th>Status</th>
            <th>Reason</th>
            <th>Department</th>
            
            
            <th>Action</th>
            <th>Action</th>
        </tr>
        
        <%-- Retrieve pending leave requests from the database --%>
        <%@ page import="java.sql.*" %>
        <%@ page import="java.util.Date" %>
        <% 
            try {
            	Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "admin");
                PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM leave_request WHERE status = 'Pending'");
                ResultSet rs = pstmt.executeQuery();

                while (rs.next()) {
                    int id = rs.getInt("id");
                    String employeeName = rs.getString("employee_name");
                    Date leaveDate = rs.getDate("leave_date");
                    String status = rs.getString("status");
                    String reas = rs.getString("reason");
                    String depa = rs.getString("dep");
                    Date leave = rs.getDate("leave_date_to");
        %>
        
        
        
       
        <tr>
            <td><%= id %></td>
            <td><%= employeeName %></td>
            <td><%= leaveDate %></td>
            <td><%= leave %></td>
            <td><%= status %></td>
            <td><%= reas %></td>
            <td><%= depa %></td>
            
            <td>
                <form action="ApproveLeaveServlet" method="post">
                    <input type="hidden" name="id" value="<%= id %>">
                    <input type="submit" value="Approve">
                    
                    
                </form>
              
            </td>
            <td>
              <form action="RejectLeaveServlet" method="post">
                    <input type="hidden" name="id" value="<%= id %>">
                    <input type="submit" value="Reject">
                    
                    
                </form>
            </td>
        </tr>
        
        
        
        
       
        
        
        <% 
                }
                rs.close();
                pstmt.close();
                conn.close();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        %>
        
    </table>
    
    
     
    
    </div>
</body>
</html>
    