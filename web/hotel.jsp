<%-- 
    Document   : hotel
    Created on : 7 Mar, 2022, 8:22:11 PM
    Author     : Shivam
--%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%
    session=request.getSession();
    String rId=request.getParameter("des");
    session.setAttribute("destidnew",rId);
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>hotel Page</title>
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <link rel="stylesheet" href="css/trystyle.css">
    </head>
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
            <form action="checkPersonalDetails.jsp" method="post">
            <div class="box-container">
                
                <%
                     try{
                         Blob pic=null;
                            String image=null;
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            Statement st =con.createStatement();
                           // int id=(Integer)session.getAttribute("destid");
                            //int ID=Integer.parseInt(id);
                            String sql="select* from hotel where destination_id="+(String)session.getAttribute("destidnew");
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
                                            
                                            <h3>Price of rooms: </h3>
                                            <div class="price"><%="A.C Room:   Rs."+rs.getString("ac_room_price")%> </div>
                                            <div class="price"><%="NON A.C Room:   Rs."+rs.getString("non_ac_room_price")%> </div>
                                            <button type ="submit" name="hid" value="<%=rs.getString("hotel_id")%>">
                                            <a href="#" class="btn" >book now</a>
                                            </button>
                                        </div>
                                    </div>
                                
                                <%
                            }
                            %>
                            </div>
        </form>
                            </section>
                            <%
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                %>
                
                <form action="destination.jsp">
                <input type="submit" value="Back">
                </form>
      
    </body>
</html>
