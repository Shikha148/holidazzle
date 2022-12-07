<%-- 
    Document   : ViewOrders
    Created on : 6 Apr, 2022, 1:32:57 AM
    Author     : Shivam
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>View Booking History</title>
        <style>
            body{
                
                background-color:#ccff99;
                background-size: 100%;
                background-attachment: fixed;
            }
            button{
                padding: 10px;
                background-color: greenyellow;
            }
            h2{
                background-color: lightslategray;
                padding: 20px;
                color: white;
                font-family: serif;
                text-decoration: underline;
                text-align: center;
            }
            h3{
                padding: 20px;
                color:#081D45;
                font-size:19px;
                font-family: serif;
                text-align: right;
            }
            h1
            {
               font-size: 18px;
               padding: 0px;
               color: red;
               font-family:serif;
               margin-left: 50px;
               
            }
            
            #b1
            {
                font-family: serif;
                font-size: 20px;
                margin-top: 200px;
                border-radius: 20px;
            }
            label{
               font-size: 22px;
               padding: 0px;
               color: red;
               font-family: serif;
               margin-left: 70px;
            }
            
            th,tr,td{
                border: 5px solid grey;
            }
        </style>
    </head>
    
      <body>
          <center><div class="regform"><h2> Your Bookings... </h2></div></center>
            <h3>Customer  name :<%=(String)session.getAttribute("userName")%></h3>
<%
    //out.println("hi there "+ (String)session.getAttribute("hotelidnew"));
    ResultSet rs;
    String sql;
    Statement st;
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            st =con.createStatement();
                            sql="select* from b where cust_id="+(Integer)session.getAttribute("userID");
                            rs =st.executeQuery(sql);
                            while(rs.next())
                            {
                                String book_hotel_id=rs.getString(5);
                                String hotel_id="1";
                                String no_of_per="0";
                                String no_of_days="0";
                                String arrival="dd/mm/yy";
                                String hotel_price="90";
                                String sql2="select* from book_hotel where book_hotel_id="+Integer.parseInt(book_hotel_id);
                                Statement st2=con.createStatement();
                                ResultSet rs2=st2.executeQuery(sql2);
                               if(rs2.next())
                                {
                                    hotel_id=rs2.getString(2);
                                    no_of_per=rs2.getString(4);
                                    no_of_days=rs2.getString(6);
                                    arrival=rs2.getString(7);
                                    hotel_price=rs2.getString(8);
                                }
                                String package_id=rs.getString(4);
                                String package_name="packa";
                               Statement st3=con.createStatement();
                                String sql3="select* from package where package_id="+Integer.parseInt(package_id);
                                ResultSet rs3 =st3.executeQuery(sql3);
                                if(rs3.next())
                                {
                                package_name=rs3.getString(2);
                                }
                                
                                String destination_id=rs.getString(3);
                                String dest_name="dest";
                                Statement st4=con.createStatement();
                                String sql4="select* from destination where destination_id="+Integer.parseInt(destination_id);
                                ResultSet rs4 =st4.executeQuery(sql4);
                                if(rs4.next())
                                {
                                dest_name=rs4.getString(2);
                                }
                                
                                String hotel_name="hotel";
                                Statement st5=con.createStatement();
                                String sql5="select* from hotel where hotel_id="+Integer.parseInt(hotel_id);
                                ResultSet rs5 =st5.executeQuery(sql5);
                                if(rs5.next())
                                {
                                hotel_name=rs5.getString(3);
                                }
                                
                                
                            
    %>

        
                
                <h1>Order id :<%=rs.getString(1)%></h1>
               <h1> Destination :<%=dest_name%></h1>
                
           <h1> Hotel Name :<%=hotel_name%></h1>
                
                <h1> Number of Person :<%=no_of_per%></h1>
                <h1> Number of Days :<%=no_of_days%></h1>
                <h1> Hotel Price :<%=hotel_price%></h1>
                <h1> Arrival date :<%=arrival%></h1>
                
                <h1> Package Selected :<%=package_name%></h1>
                
            <h1> Total price :<%=rs.getString(6)%></h1>
            <hr>
            <center>
                <form action="home.jsp">
                    <button style="background-color: red; border-color: yellowgreen; text-decoration-color: white" type="submit"  value="Back">BACK</button>
                </form>
    </center>
    <%
                                }
                                }
    catch(Exception e){
                            e.printStackTrace();
                        }
                                %>
    </body>
   
     
</html>

