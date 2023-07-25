<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login</title>

            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 <style >
 
  body {
        background-image: url(https://cdn.pixabay.com/photo/2017/07/25/22/54/lego-2539844_1280.jpg);
        background-repeat: no-repeat;
        background-size:cover;
       
        margin: 0px;
        padding: 0px;
        
        height: 100vh;
        
    }
    
    
    
    .text-container {
            background-color: white;
            padding: 40px;
            max-width: 500px;
            margin-left:500px;
            margin-top:200px;
            border-radius: 10px;
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }
        
        .text-container:hover {
            transform: scale(1.1);
        }
    
    
    
    
    
    
    
    
    
 
 
    .input-container {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }
    
    .input-container input {
      width: 200px;
      margin-bottom: 10px;
    }
 
 	.custom-button {
  background-color: cyan; 
}
 
 
 
 
 </style>
</head>

<script>
        function showAlert() {
            alert("Login successful!");
        }
    </script>
<body>

 <header>
          <nav class="navbar navbar-expand-md navbar-dark" style="background-color: green;">
          <div>
          <a href="" class="navbar-brand"> ADMIN LOGIN </a>
          </div>

                   
                </nav>
            </header>
            
            <br>
            
                    
<form action="login" method="post">
  <div class="text-container">
    <div class="input-container">
      <table>
        <tr>
          <td>Email:</td>
          <td><input type="email" name="emaili" required="required"></td>
        </tr>
        <tr>
          <td>Password:</td>
          <td><input type="password" name="pass"></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" value="login" class="custom-button" required="required"></td>
        </tr>
        <tr>
          <td></td>
         <td> <p>New user? <a href="signup.jsp?redirectToLogin=true">Sign-in</a></p></td>
        </tr>
        <tr>
        <td>
        </td>
        </tr>
      </table>
    </div>
  </div>
  
  
  

  
  </form>
  
  <form action="admin" method="post">
  
  
  </form>
  
</body>
</html>