<%-- 
    Document   : package
    Created on : 7 Mar, 2022, 8:22:26 PM
    Author     : Shivam
--%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%
    session=request.getSession();
    String idtype=request.getParameter("IdType");
    session.setAttribute("IdType",idtype);
    String idnum=request.getParameter("IdNum");
    session.setAttribute("IdNum",idnum);
    String noofper=request.getParameter("no_of_per");
    session.setAttribute("no_of_per",noofper);
    String noofdays=request.getParameter("no_of_days");
    session.setAttribute("no_of_days",noofdays);
    //String phone=request.getParameter("phone");
    //session.setAttribute("phone",phone);
    String date=request.getParameter("date");
    String acyes=request.getParameter("ac");
    session.setAttribute("arrival_date",date);
    session.setAttribute("hotel_price", "3456");
    boolean AC=false;
    if(acyes.equals("Yes"))
        AC=true;
    String room_price="0";
    if(AC==true)
    {
        room_price=(String)session.getAttribute("ac");
    }
    else 
    {
        room_price=(String)session.getAttribute("nonac");
    }
    session.setAttribute("room_price",room_price);
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Package Page</title>
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
            <form action="booking.jsp" method="post">
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
                                            
                                            <h3>Price: </h3>
                                            <div class="price"><%="Rs."+rs.getString("price")%> </div>
                                            <button type ="submit" name="pid" value="<%=rs.getString("package_id")%>">
                                            <a href="#" class="btn" >book now</a>
                                            </button>
                                        </div>
                                    </div>
                                <%
                            }
                            %></div>
        </form>
                            </section>
                            <%
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                %>
                
                <form action="hotel.jsp">
                <input type="submit" value="Back">
                </form>
      
    </body>
</html>
