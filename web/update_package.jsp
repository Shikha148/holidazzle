<%@page language="java" contentType="text/html; charset=UTF-8" 
        pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<!DOCTYPE html>
<html>
    <%
    session=request.getSession();
    String pac_id=request.getParameter("pac_upt");
    
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            
                             
                            String sql="Select* from package where package_id="+ pac_id;
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
                    
                        <form action="package_updated.jsp" method="post">
                         <h2>
                               Update  Package
                         </h2>
                     
                            
                            
                         <fieldset class="form-group">
                              <input type="hidden" class="form-control" name="id" value="<%=rs.getString(1)%>" >                  
                         </fieldset>
                   
                         <fieldset class="form-group">
                             <label>NAME</label> <input type="text" class="form-control" name="name" value="<%=rs.getString("name")%>" required="required">                  
                         </fieldset>
                                     
                         <fieldset class="form-group">
                             <label>DAYS INCLUDED</label> <input type="text" class="form-control" name="days_inc" value="<%=rs.getString("days_inc")%>" required="required">                  
                         </fieldset>
                                     
                         <fieldset class="form-group">
                             <label>PRICE</label> <input type="text" class="form-control" name="price" value="<%=rs.getString("price")%>" required="required">                  
                         </fieldset>
                                     
                          <fieldset class="form-group">
                             <label>AIR ASSISTANCE(yes/no)</label> <input type="text" class="form-control" name="air_assistance" value="<%=rs.getString("air_assistance")%>" required="required">                  
                         </fieldset>
                                     
                         <fieldset class="form-group">
                             <label>CITY TOUR(yes/no)</label> <input type="text" class="form-control" name="city_tour" value="<%=rs.getString("city_tour")%>" required="required">                  
                         </fieldset>

                         <fieldset class="form-group">
                             <label>WELCOME DRINKS(yes/no)</label> <input type="text" class="form-control" name="welcome_drinks" value="<%=rs.getString("welcome_drinks")%>" required="required">                  
                         </fieldset>

                        <fieldset class="form-group">
                             <label>DAILY BUFFE(yes/no)</label> <input type="text" class="form-control" name="daily_buffe" value="<%=rs.getString("daily_buffe")%>" required="required">                  
                         </fieldset>

                         <fieldset class="form-group">
                             <label>GUIDE(yes/no)</label> <input type="text" class="form-control" name="guide" value="<%=rs.getString("guide")%>" required="required">                  
                         </fieldset>

                         <fieldset class="form-group">
                             <label>SPECIAL FOR</label> <input type="text" class="form-control" name="special_for" value="<%=rs.getString("special_for")%>" required="required">                  
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
