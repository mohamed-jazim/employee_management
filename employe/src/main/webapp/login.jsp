<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login</title>

            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 <style >
 
    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
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
  background-color: orange; 
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
          <nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue;">
          <div>
          <a href="" class="navbar-brand"> ADMIN LOGIN </a>
          </div>

                   
                </nav>
            </header>
            
            <br>
            
                    
<form action="login" method="post">
  <div class="container">
    <div class="input-container">
      <table>
        <tr>
          <td>Admin Username:</td>
          <td><input type="text" name="name" required="required"></td>
        </tr>
        <tr>
          <td>Admin password:</td>
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
  
  <input type="button" value="admin">
  </form>
  
</body>
</html>