<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- index.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Leave Management System</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
            color: blue; 
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
            margin-left:550px;
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
        
        
        input[type="submit"] {
  background-color: #4CAF50; /* Replace this color with your desired color code */
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 20px;
  cursor: pointer;
}

/* Optional: Add styles for hover and focus states */
input[type="submit"]:hover,
input[type="submit"]:focus {
  background-color: #45a049; /* Replace this color with the desired hover color code */
}

 #myTextBox {
        background-color: wheat;
        font-size: 16px;
        border: 1px solid #ccc;
        margin-left: 20px;
        padding: 5px;
        border-radius: 20px;        
    }
     
   
</style>
</head>
<body>
     <header>
 <nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue;">
          <div>
          <a href="" class="navbar-brand"> Employee leave request </a>
          </div>

                   
                </nav>
            </header>
            
            <br>
   
    
    
    
    <form action="LeaveServlet" method="post">
  <div class="text-container">
 
    <div class="input-container">
      <table>
        <tr>
          <td>Employee name           :</td>
          <td><input type="text" name="employeeName" id= "myTextBox" required></td>
        
        </tr>
        
        
         <tr>
          <td>Reason for leave       :</td>
          <td><input type="text" name="res" id= "myTextBox" required></td>
        </tr>
        <tr>
        
        
         <tr>
          <td>Employee Dep      :</td>
          <td><input type="text" name="depart" id= "myTextBox" required></td>
        </tr>
        <tr>
        
        
        
        <tr>
          <td>Employee id:        :</td>
          <td><input type="text" name="eid" id= "myTextBox" required></td>
        </tr>
        <tr>
        
        
        <tr>
          <td>Leave Date from      :</td>
          <td><input type="date" name="leaveDate" id= "myTextBox" required></td>
        </tr>
        <tr>
        
        <tr>
          <td>Leave Date to      :</td>
          <td><input type="date" name="leaveDateTo" id= "myTextBox" required></td>
        </tr>
        <tr>
        
        
         
        
          <td></td>
          <td><input type="submit" value="Submit Leave Request"></td>
        </tr>
        <tr>
          <td></td>
         <td> <a href="admin.jsp?redirectToAdmin=true">Admin login</a></td>
        </tr>
        <tr>
        <td>
        </td>
        </tr>
      </table>
    </div>
  </div>

  
  
  

  
  </form>
  
    
</body>
</html>
    