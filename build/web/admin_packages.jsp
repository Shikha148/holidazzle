<%-- 
    Document   : destination
    Created on : 7 Mar, 2022, 8:21:31 PM
    Author     : Shivam
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <link rel="stylesheet" href="css/trystyle.css">
     
    </head>
    
    <body>
        
        <section class="packages" id="packages">

    <h1 class="heading">
        <span>P</span>
        <span>A</span>
        <span>C</span>
        <span>K</span>
        <span>A</span>
        <span>G</span>
        <span>E</span>
        <span>S</span>
    </h1>
            <form action="package-form.jsp" method="post">
                <button type ="submit" name="des" value="addnew">
                    <a href="#" class="btn" >ADD NEW PACKAGES </a>
                </button>
            </form>
          
                <div class="box-container">
           
                
                <%
                     try{
                            Blob pic=null;
                            String image=null;
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            Statement st =con.createStatement();
                            String sql="select* from package";
                            ResultSet rs =st.executeQuery(sql);
                            while(rs.next())
                            {
                                image=rs.getString("pic");
                                %>
                                    <div class="box">
                                        <img src="<%=image%>" alt="">
                                        <div class="content">
                                            <h3> <i class="fas fa-map-marker-alt"></i><%=rs.getString("name")%></h3>
                                            <br>
                                            <h3>Special for: </h3>
                                            <p><%=rs.getString("special_for")%></p>
                                            <h3>Price : </h3>
                                            <p>Rs. <%=rs.getString("price")%></p>
                                            
                                            <form action="update_package.jsp" method="post">
                                            <button type ="submit" name="pac_upt" value="<%=rs.getString("package_id")%>">
                                            <a href="update_package.jsp" class="btn" >Update </a>
                                            </button>
                                            </form>
                                            
                                            <form action="delete_package.jsp" method="post">
                                            <button type ="submit" name="pac_del" value="<%=rs.getString("package_id")%>">
                                            <a href="delete_package.jsp" class="btn" > Delete </a>
                                            </button>
                                            </form>
                                        </div>
                                    </div>
                                
                                <%
                            }
                            %>
                            </div>
       
            
                             </section>
                            <%
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                %>
    <center>
                <form action="admin_home.jsp">
                    <button style="background-color: red; border-color: yellowgreen; text-decoration-color: white" type="submit"  value="Back">BACK</button>
                </form>
    </center>
    </body>
   
</html>

