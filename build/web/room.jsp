<%-- 
    Document   : room
    Created on : 8 Mar, 2022, 8:50:16 AM
    Author     : Shivam
--%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%
    session=request.getSession();
    String pId=request.getParameter("pid");
    session.setAttribute("pidnew",pId);
    out.println("hi there "+ pId);
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Room Page</title>
        <style>
            button{
                padding: 10px;
                background-color: greenyellow;
            }
            h1{
                background-color: lightslategray;
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
                background-color: lightgoldenrodyellow;
                background-size: 100%;
                background-attachment: fixed;
            }
            th,tr,td{
                border: 5px solid grey;
            }
        </style>
    </head>
    
    <body>
        <h1>View Different Rooms at selected hotel</h1>
        <br><br>
        <center>
            <form action="booking.jsp" method="post">
            <table class="table table striped"> 
                <tr style="border: 5px solid grey">
                    <th> Room No</th>
                    <th> Type</th>
                    <th> Price</th>
                    <th> Status</th>
                    
                </tr>
                
                <%
                     try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            Statement st =con.createStatement();
                            String sql="select* from room where hotel_id="+(String)session.getAttribute("hotelidnew")+" and status='A'";
                            ResultSet rs =st.executeQuery(sql);
                            while(rs.next())
                            {
                                %>
                                <tr>
                                    <td id="roomid"><%=rs.getString(1)%></td>
                                    <%session.setAttribute("roomid",rs.getString(1));%>
                                    <td><%=rs.getString(4)%></td>
                                    <td><%=rs.getString(5)%></td>
                                <td>
                                        <button type="submit" name="rid" value="<%=rs.getString(1)%>">Next</button>
                               </td>
                                </tr>
                                <%
                            }
                            out.println("bye hotel"+ (String)session.getAttribute("hotelidnew"));
                            out.println("bye dest"+ (String)session.getAttribute("destidnew"));
                            out.println("bye package"+ (String)session.getAttribute("pidnew"));
                            %>
                              </table>
            </form>
                            <%
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                %>
                
                <form action="package.jsp">
                <input type="submit" value="Back">
                </form>
           </center>
      
    </body>
</html>

