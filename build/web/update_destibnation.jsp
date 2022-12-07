<%@page language="java" contentType="text/html; charset=UTF-8" 
        pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<!DOCTYPE html>
<html>
    <%
    session=request.getSession();
    String des_id=request.getParameter("des_upt");
    
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            
                             
                            String sql="Select* from destination where destination_id="+ des_id;
                            Statement st =con.createStatement();
                            ResultSet rs =rs =st.executeQuery(sql);
                            if(rs.next())
                            {
    %>
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
                    
                        <form action="destination_updated.jsp" method="post">
                         <h2>
                               Update  Destination
                         </h2>
                     
                            
                            
                         <fieldset class="form-group">
                              <input type="hidden" class="form-control" name="id" value="<%=rs.getString(1)%>" >                  
                         </fieldset>
                   
                         <fieldset class="form-group">
                             <label>NAME</label> <input type="text" class="form-control" name="name" value="<%=rs.getString("name")%>" required="required">                  
                         </fieldset>
                                     
                         <fieldset class="form-group">
                             <label>STATE</label> <input type="text" class="form-control" name="state" value="<%=rs.getString("state")%>" required="required">                  
                         </fieldset>
                                     
                         <fieldset class="form-group">
                             <label>CITY</label> <input type="text" class="form-control" name="city" value="<%=rs.getString("city")%>" required="required">                  
                         </fieldset>
                                     
                          <fieldset class="form-group">
                             <label>PINCODE</label> <input type="text" class="form-control" name="pincode" value="<%=rs.getString("pincode")%>"required="required">                  
                         </fieldset>
                                     
                         <fieldset class="form-group">
                             <label>FAMOUS_FOR</label><input type="text" class="form-control" name="famous_for" value="<%=rs.getString("famous_for")%>" required="required" >                  
                         </fieldset>
                              
                         <fieldset class="form-group">
                              <input type="hidden" class="form-control" name="pic_org" value="<%=rs.getString("pic")%>" >                  
                         </fieldset>
                         
                         <fieldset class="form-group">
                             <label>ADD Another IMAGE</label> <input type="file" class="form-control" name="image" >                 
                         </fieldset>
                         
                         <button type="submit" class="btn btn-success">Update</button>
                        </form> 
                             <%}
                            }catch(Exception e){
                            e.printStackTrace();
                        }%>
                </div>
            </div>
        </div>
    </body>
</html>
