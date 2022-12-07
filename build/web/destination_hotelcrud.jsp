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
        <span>D</span>
        <span>E</span>
        <span>S</span>
        <span>T</span>
        <span>I</span>
        <span>N</span>
        <span>A</span>
        <span>T</span>
        <span>I</span>
        <span>O</span>
        <span>N</span>
        <span>S</span>
    </h1>
            <%--<form action="admin_hotel.jsp" method="post">
                <button type ="submit" name="des" value="addnew">
                    <a href="#" class="btn" >ADD NEW HOTEL </a>
                </button>
            </form>--%>
          
                <div class="box-container">
           
                
                <%
                     try{
                            Blob pic=null;
                            String image=null;
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            Statement st =con.createStatement();
                            String sql="select* from destination";
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
                                            <h3>Famous for: </h3>
                                            <p><%=rs.getString("famous_for")%></p>
                                            
                                            <form action="admin_hotel.jsp" method="post">
                                            <button type ="submit" name="des_id" value="<%=rs.getString("destination_id")%>">
                                            <a href="admin_hotel.jsp" class="btn" >NEXT </a>
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


