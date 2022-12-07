
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="text/html; charset=UTF-8">
        <title>Book Hotel Page</title>
        <link href="css/Main (1).css" rel="stylesheet" type="text/css"/>
        <style>
            button{
                padding: 10px;
                background-color: skyblue;
            }
            h1{text-align: center;color: red; font: sans-serif}
            div{text-align: center;color: deeppink}
        </style>
    </head>
    <body>
        <div class="welcome">
            <h1>BOOK HOTEL</h1>
            <center>
            <form action="package.jsp" method="post">
            <div class="contain">
               
                    <div class="user-details">
                        <div class="input-box">
                            <span class="details">User Name:<%=(String)session.getAttribute("userName")%></span>
                        </div>
                        
                        <div class="input-box">
                            <span class="details">Total Persons</span>
                            <input type="text" name="no_of_per" placeholder="No_Of_Persons" required>
                        </div>
                        
                        <div class="input-box">
                            <span class="details">Total Days</span>
                            <input type="text" name="no_of_days" placeholder="No_Of_Days" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Arrival Date</span>
                            <input type="text" name="date" placeholder="dd/mm/yy" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Phone</span>
                            <input type="text" name="phone" placeholder="Enter phone no." required>
                        </div>
                        
                        <%
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                             Statement st =con.createStatement();
                        String sql="select ac_room_price,non_ac_room_price from hotel where hotel_id="+(String)session.getAttribute("hotelidnew");
                        ResultSet rs=st.executeQuery(sql);
                        String ac_price="0";
                        String non_ac="0";
                        if(rs.next())
                        {
                         ac_price=rs.getString(1);
                        non_ac=rs.getString(2);
                        }
                        session.setAttribute("ac",ac_price);
                        session.setAttribute("nonac",non_ac);
                        
                        %>
                        <div class="input-box">
                            <span class="details">Price of AC rooms:<%=ac_price%></span>
                        </div>
                        <div class="input-box">
                            <span class="details">Price of NON-AC rooms:<%=non_ac%></span>
                        </div>
                        <div class="category">
                            <div class="dot">
                            A/C Required:
                            <input type="radio" name="ac" value="Yes"/>Yes
                            <input type="radio" name="ac" value="No"/>No
                            </div>
                        </div>
                       
                        
                            <div class="change">
                            <button type="submit" name="hid" value="BOOK HOTEL">Book Hotel</button>
                            </div>   
            </div> 
                            <%
                                }
                                    catch(Exception e)
                                    {
                                         e.printStackTrace();
                                    }
                        %>
                    
        </div>
  </form>
                         
            </center>
                        <div class="square">
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <div class="circle">
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
                        <br>
                        <center>
         <form action="hotel.jsp">
               <button type="submit" name="hid" value="back">BACK</button>
                </form>   
                        </center>
  </body>
</html>
