<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN SIGNUP</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<style>
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
<body>
 <header>
 <nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue;">
          <div>
          <a href="" class="navbar-brand"> ADMIN SIGN-UP </a>
          </div>

                   
                </nav>
            </header>
            
            <br>
                   
<form action="servlet_connect" method="post">
  <div class="container">
    <div class="input-container">
      <table>
        <tr>
          <td>Admin NAME: </td>
          <td><input type="text" name="name"></td>
        </tr>
        <tr>
          <td>Admin Email: </td>
          <td><input type="email" name="email"></td>
        </tr>
        <tr>
       
        <tr>
         <tr>
          <td>Admin Password: </td>
          <td><input type="password" name="pass"></td>
        </tr>
        
         <tr>
          <td>Confirm Password: </td>
          <td><input type="password" name="cpass"></td>
        </tr>
        <tr>
        
        <tr>
          <td></td>
          <td><input type="submit" value="Sign-in" class="custom-button"></td>
        </tr>
        
        <tr>
          <td></td>
           <td> <p>Already a user? <a href="login.jsp?redirectToLogin=true">Login</a></p></td>
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