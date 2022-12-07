

<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%
    session=request.getSession();
    String pId=request.getParameter("pid");
    session.setAttribute("packId",pId);
    //out.println("hi there "+ (String)session.getAttribute("packId"));
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking page</title>
   <style>
            button{
                padding: 10px;
                background-color: whitesmoke;
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
                background-color:palevioletred;
                background-size: 100%;
                background-attachment: fixed;
            }
            th,tr,td{
                border: 5px solid grey;
            }
        </style>
    </head>
    
    <body>
        <h1>Order Details</h1>
        <br><br>
        <center>
            <form action="FinalBooking.jsp" method="post">
            <table class="table table striped"> 
                <tr style="border: 5px solid grey">
                    <th> Package selected</th>
                    <th> Destination</th>
                    <th> Hotel name</th>
                    <th> No of days</th>
                    <th> No of persons</th>
                    <th> Arrival Date</th>
                    <th>Total Price</th>
                    
                </tr>
                 <%
                 String ndays=(String) session.getAttribute("no_of_days");
                    String nper=(String) session.getAttribute("no_of_per");
                    float t=Float.parseFloat((String) session.getAttribute("room_price"));
                    t=t*(Integer.parseInt(ndays))*(Integer.parseInt(nper));
                     try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            Statement st =con.createStatement();
                            String sql="select* from package where package_id="+ (String)session.getAttribute("packId");
                            ResultSet rs1 =st.executeQuery(sql);
                            
                            Statement st1 =con.createStatement();
                            sql="select * from destination where destination_id="+Integer.parseInt((String)session.getAttribute("destidnew"));
                            ResultSet rs2=st1.executeQuery(sql);
                            
                            Statement st2 =con.createStatement();
                            sql="select * from hotel where hotel_id="+Integer.parseInt((String)session.getAttribute("hotelidnew"));
                            ResultSet rs3=st2.executeQuery(sql);
                            
                            float total=t;
                            
                            /*total=total*(Integer.parseInt(nper));
                            session.setAttribute("total",total);
                            */
                                %>
                                <%
                                if(rs1.next())
                                {
                                    
                                 total+=rs1.getFloat(4);
                                 total=total*(Integer.parseInt(nper));
                            session.setAttribute("total",total);
                                    %>
                            <tr>
                                <td><%=rs1.getString(2)%></td>
                                <%
                                }
                                %>
                                <%
                                if(rs2.next())
                                {
                                    %>
                                <td><%=rs2.getString(2)%></td>
                                <%
                                }
                                %>
                                <%
                                if(rs3.next())
                                {
                                    %>
                                <td><%=rs3.getString(3)%></td>  
                                 <%
                                }
                                %>
                                <td><%=(String)session.getAttribute("no_of_per")%></td>
                                <td><%=(String)session.getAttribute("no_of_days")%></td>
                                <td><%=(String)session.getAttribute("arrival_date")%></td>
                                <td><%=total%></td>
                                 <td>
                                        <button type="submit" name="pid" value="Book Now">Next</button>
                               </td>
                                </tr>
                                <%
                           // }
                            %>
                               
            </table>
            </form>
                                
                     <%
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                %>      
                          
                
                <form action="hotel.jsp">
                <input type="submit" value="Back">
                </form>
           </center>
      
    </body>
</html>

