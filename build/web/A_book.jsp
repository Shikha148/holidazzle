<%-- 
    Document   : A_book
    Created on : 4 May, 2022, 10:37:07 PM
    Author     : 91960
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking page jsp</title>
        <style>
            button{
                padding: 10px;
                background-color: greenyellow;
            }
            h1{
                background-color:darkorange;
                padding: 20px;
                color: white;
                font-family: serif;
                text-align: center;
                text-decoration: underline;
            }
            #b1
            {
                font-family: serif;
                font-size: 20px;
                margin-top: 200px;
                border-radius: 20px;
            }
            body{
                background-color:papayawhip;
                background-size: 100%;
                background-attachment: fixed;
            }
            th,tr,td{
                border: 5px solid white;
            }
        </style>
    </head>
    
    <body>
        <h1>View Bookings</h1>
        <br><br>
        <center>
            <form action="" method="post">
            <table class="table table striped"> 
                <tr style="border: 5px solid grey">
                    <th> ORDER_ID</th>
                    <th> CUST_ID</th>
                    <th> DESTINATION_ID</th>
                    <th> PACKAGE_ID</th>
                    <th> BOOK_HOTEL_ID</th>
                    <th> PRICE</th>
                </tr>
                
                <%
                     try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            Statement st =con.createStatement();
                            String sql="select* from b";
                            ResultSet rs =st.executeQuery(sql);
                            while(rs.next())
                            {
                                %>
                                <tr>
                                    
                                    <td id="orderid"><%=rs.getString("order_id")%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                                    <td><%=rs.getString(5)%></td>
                                    <td><%=rs.getString(6)%></td> 
                                    
                                    
                                </tr>
                                
                                <%
                            }
                            %>
                              </table>
            </form>
                            <%
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                %>
                
                <form action="admin_home.jsp">
                <input type="submit" value="Back">
                </form>
           </center>
      
    </body>
   
</html>

