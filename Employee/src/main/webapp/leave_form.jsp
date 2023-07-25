<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- leave_form.jsp -->
<!-- leave_form.jsp -->
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat" %>

<!DOCTYPE html>
<html>
<head>
    <title>Leave Management System</title>
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
            color: white; 
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
            padding-left:50px;
            margin-top:180px;
            margin-left:500px;
            max-width: 500px;
            max-height:500px;
            border-radius: 10px;
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }
        
        .text-container:hover {
            transform: scale(1.1);
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
        </style>
</head>
<body>
    <h1>Leave Request Status</h1>
    <%-- Retrieve leave request status from the database based on employee name and leave date --%>
    <% 
        String employeeName = request.getParameter("employeeName");
        String leaveDateStr = request.getParameter("leaveDate");
        Date leaveDate = null;
        String status = "Pending";

        try {
            leaveDate = new SimpleDateFormat("yyyy-MM-dd").parse(leaveDateStr);
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "admin");
            PreparedStatement pstmt = conn.prepareStatement("SELECT status FROM leave_request WHERE employee_name = ? AND leave_date = ?");
            pstmt.setString(1, employeeName);
            pstmt.setDate(2, new java.sql.Date(leaveDate.getTime()));
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                status = rs.getString("status");
            }

            rs.close();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
    
    <div class ="text-container">
    <p>Employee: <%= employeeName %></p>
    <p>Leave Date: <%= DateFormat.getDateInstance(DateFormat.MEDIUM).format(leaveDate) %></p>
    <p style="background-color: lightgreen;">Status: <%= status %></p>
    </div>
</body>
</html>
