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
    <%
        session=request.getSession();
    String des_id=request.getParameter("des_id");
    int did=Integer.parseInt(des_id);
    session.setAttribute("ad_hotel_des",did);
    %>
    <body>
        
        <section class="packages" id="packages">

    <h1 class="heading">
        <span>H</span>
        <span>O</span>
        <span>T</span>
        <span>E</span>
        <span>L</span>
        <span>S</span>
    </h1>
            <form action="hotel-form.jsp" method="post">
                <button type ="submit" name="des" value="des_id">
                    <a href="#" class="btn" >ADD NEW HOTEL </a>
                </button>
            </form>
          
                <div class="box-container">
           
                
                <%
    
                     try{
                            Blob pic=null;
                            String image=null;
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            
                            String sql="select* from hotel where destination_id="+did;
                            
                            Statement st =con.createStatement();
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
                                            <h3>Price: </h3>
                                            <p>AC ROOM: Rs.<%=rs.getString("ac_room_price")%></p>
                                            <p>NON-AC ROOM: Rs.<%=rs.getString("non_ac_room_price")%></p>
                                            
                                            <form action="update_hotel.jsp" method="post">
                                            <button type ="submit" name="hot_upt" value="<%=rs.getString("hotel_id")%>">
                                            <a href="update_hotel.jsp" class="btn" >Update </a>
                                            </button>
                                            </form>
                                            
                                            <form action="delete_hotel.jsp" method="post">
                                            <button type ="submit" name="hot_del" value="<%=rs.getString("hotel_id")%>">
                                            <a href="delete_hotel.jsp" class="btn" > Delete </a>
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
                <form action="destination_hotelcrud.jsp">
                    <button style="background-color: red; border-color: yellowgreen; text-decoration-color: white" type="submit"  value="Back">BACK</button>
                </form>
    </center>
    </body>
   
</html>

