<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
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
            padding: 20px;
            margin: 100px;
            max-width: 1300px;
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

<div class="content">
<header>

 
 <nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue;">
          
          <a href="" class="navbar-brand"> MYSOFTNET </a>
          
<ul class="navigation-menu">
                <li class="highlight"><a href="http://mysoftnet.in/about.html" >About</a></li>
                <li><a href="http://mysoftnet.in/contact.html">Contact Us</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="signup.jsp">Register</a></li>
            </ul>
                   
                </nav>
            </header>
            
            <br>
            
            <div class="text-container">
        <h1>Employee Management system using Jsp and Servlet</h1>
        <p>An employee management system is technology designed to streamline core HR services and improve workforce productivity. It accomplishes these goals largely by automating labor-intensive, administrative tasks and using analytics to drive business decisions.</p>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
     <div class="conten">
        <h1>ABOUT MY SOFTNET</h1>
        <P>MySoftNet is an IT Services Company that cost-effectively provides cutting edge information technology services to a global clientele spread across the globe. MySoftNet is one of the Best Software Company in Kochi with highly qualified workers, who all offer a high quality and responsive website with SEO friendly design. Our aim is to help the companies to increase their flexibility through our services.
With the latest technologies and expertise, we provide the best Application development services that help your company grow strategically and efficiently.Headquartered in Cochin, MySoftNet focuses on software development, network solutions and IT training. MySoftNet helps companies align Information Technology with their organizational goals and business objectives, while ensuring enhanced operational efficiency, greater flexibility and substantial cost savings. Our goal is to maintain and grow a culture of IT engineering and customer service excellence through a continuous process improvement program.</P>
      
    </div>
   
    <div class="conten">
    <h1>CONTACT US</h1>
    <P>Feel free to talk to our online representative at any time you please using our Live Chat system on our website or one of the below instant messaging programs.</P>
    </div>
    
    
    <div class="bottom-text">
        <p>Contact MYSOFTNET FOR MORE INFORMATION</p>
    </div>
</div>
</body>
</html>