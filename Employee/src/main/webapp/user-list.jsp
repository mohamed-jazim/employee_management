<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Employee Management Application</title>
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
    
    
    
    h3{
    color:  white;
    
    }
    
    
 table {
        border-collapse: collapse;
        width: 100%;
        border-radius: 20px;
    }

    th, td {
        border: 1px solid #ccc;
       
        padding: 8px;
        text-align: center;
        background-color: white;
    }

    th {
        background-color: grey;
        font-weight: bold;
        
    }
    
    
    
    </style>
       
       
       
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: green">
                    <div>
                        <a href="" class="navbar-brand"> Employee
     Management App </a>
                    </div>

                   
                </nav>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">List of Employees</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
     New Employee</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>EMP ID</th>
                                <th>EMP Name</th>
                                <th>EMP Email</th>
                                <th>EMP Country</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="user" items="${listUser}">

                                <tr>
                                    <td>
                                        <c:out value="${user.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.name}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.email}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.country}" />
                                    </td>
                                    <td><a href="edit?id=<c:out value='${user.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>