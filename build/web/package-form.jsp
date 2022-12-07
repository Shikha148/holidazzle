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
                        <a href="admin_packages.jsp"
                           class="nav-link">Packages</a>
                    </li>
                </ul>
            </nav>
        </header>
        <br>
        <div class="container col-md-5">
            <div class="card">
                <div class="card-body">
                    
                        <form action="package_added.jsp" method="post">
                         <h2>
                            
                               Add New Package
                         </h2>
                     
                         <input type="hidden" name="id" value="<c:out value='${destination.id}'/>"/>
                   
                         <fieldset class="form-group">
                             <label>NAME</label> <input type="text" class="form-control" name="name" required="required">                  
                         </fieldset>
                                     
                         <fieldset class="form-group">
                             <label>DAYS INCLUDED</label> <input type="text" class="form-control" name="days_inc" required="required">                  
                         </fieldset>
                                     
                         <fieldset class="form-group">
                             <label>PRICE</label> <input type="text" class="form-control" name="price" required="required">                  
                         </fieldset>
                                     
                          <fieldset class="form-group">
                             <label>AIR ASSISTANCE(yes/no)</label> <input type="text" class="form-control" name="air_assistance" required="required">                  
                         </fieldset>
                                     
                         <fieldset class="form-group">
                             <label>CITY TOUR(yes/no)</label> <input type="text" class="form-control" name="city_tour" required="required">                  
                         </fieldset>

                         <fieldset class="form-group">
                             <label>WELCOME DRINKS(yes/no)</label> <input type="text" class="form-control" name="welcome_drinks" required="required">                  
                         </fieldset>

                        <fieldset class="form-group">
                             <label>DAILY BUFFE(yes/no)</label> <input type="text" class="form-control" name="daily_buffe" required="required">                  
                         </fieldset>

                         <fieldset class="form-group">
                             <label>GUIDE(yes/no)</label> <input type="text" class="form-control" name="guide" required="required">                  
                         </fieldset>

                         <fieldset class="form-group">
                             <label>SPECIAL FOR</label> <input type="text" class="form-control" name="special_for" required="required">                  
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
