<%-- 
    Document   : destination-form
    Created on : 29 Apr, 2022, 1:24:56 PM
    Author     : shivangi
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" 
        pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Destination Page</title>
        
        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              >
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-dark"
                 style="background-color: tomato">
                <ul class="navbar-nav">
                    <li>
                        <a href="admin_destination.jsp"
                           class="nav-link">Destinations</a>
                    </li>
                </ul>
            </nav>
        </header>
        <br>
        <div class="container col-md-5">
            <div class="card">
                <div class="card-body">
                    
                        <form action="destination_added.jsp" method="post">
                         <h2>
                            
                               Add New Destination
                         </h2>
                     
                         <input type="hidden" name="id" value="<c:out value='${destination.id}'/>"/>
                   
                         <fieldset class="form-group">
                             <label>NAME</label> <input type="text" class="form-control" name="name" required="required">                  
                         </fieldset>
                                     
                         <fieldset class="form-group">
                             <label>STATE</label> <input type="text" class="form-control" name="state" required="required">                  
                         </fieldset>
                                     
                         <fieldset class="form-group">
                             <label>CITY</label> <input type="text" class="form-control" name="city" required="required">                  
                         </fieldset>
                                     
                          <fieldset class="form-group">
                             <label>PINCODE</label> <input type="text" class="form-control" name="pincode" required="required">                  
                         </fieldset>
                                     
                         <fieldset class="form-group">
                             <label>FAMOUS_FOR</label> <input type="text" class="form-control" name="famous_for" required="required">                  
                         </fieldset>
                         <fieldset class="form-group">
                             <label>ADD IMAGE</label> <input type="file" class="form-control" name="image" required="required">                  
                         </fieldset>
                                     
                         <button type="submit" class="btn btn-success">Save</button>
                        </form>           
                </div>
            </div>
        </div>
    </body>
</html>
