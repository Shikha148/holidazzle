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
    <%
        session=request.getSession();
        int did=(Integer)session.getAttribute("ad_hotel_des");
        out.println(did);
        %>
    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-dark"
                 style="background-color: tomato">
                <ul class="navbar-nav">
                    <li>
                        <a href="admin_hotel.jsp"
                           class="nav-link">Hotels</a>
                    </li>
                </ul>
            </nav>
        </header>
        <br>
        <div class="container col-md-5">
            <div class="card">
                <div class="card-body">
                    
                        <form action="hotel_added.jsp" method="post">
                         <h2>
                               Add New Hotel
                         </h2>
                     
                         <fieldset class="form-group">
                             <input type="hidden" class="form-control" name="id" value="<%=did%>">                  
                         </fieldset>
                         
                   
                         <fieldset class="form-group">
                             <label>NAME</label> <input type="text" class="form-control" name="name" required="required">                  
                         </fieldset>
                               
                         <fieldset class="form-group">
                             <label>AC room_price</label> <input type="text" class="form-control" name="ac_room_price" required="required">                  
                         </fieldset>
                         
                         <fieldset class="form-group">
                             <label>NON-AC room_price</label> <input type="text" class="form-control" name="non_ac_room_price" required="required">                  
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
                             <label>ADDRESS</label> <input type="text" class="form-control" name="address" required="required">                  
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
