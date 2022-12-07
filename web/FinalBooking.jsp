
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="javax.servlet.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Main (1).css" rel="stylesheet" type="text/css"/>
        <title>Booked</title>
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
        <br><br><br><br><br><br>
        <center>
            <form action="home.jsp" method="post">
            <h1>Booking Placed</h1>
                    
                <%
                    String ndays=(String) session.getAttribute("no_of_days");
                    String nper=(String) session.getAttribute("no_of_per");
                    float t=Float.parseFloat((String) session.getAttribute("room_price"));
                    t=t*(Integer.parseInt(ndays))*(Integer.parseInt(nper));
                    String dob=(String)session.getAttribute("arrival_date");
                    SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
                    java.util.Date udob=sdf.parse(dob);
                    long ms=udob.getTime();
                    java.sql.Date sqdob=new java.sql.Date(ms);
                    
                     try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                             Statement st =con.createStatement();
                             
                            String sql="insert into book_hotel(hotel_id,user_id,no_of_per,no_of_rooms,no_of_days,arrival,price) values(?,?,?,?,?,?,?)";
                            PreparedStatement pt = con.prepareStatement(sql);
                            pt.setInt(1,Integer.parseInt((String) session.getAttribute("hotelidnew")));
                            pt.setInt(2,(Integer)session.getAttribute("userID"));
                            pt.setInt(3,Integer.parseInt((String) session.getAttribute("no_of_per")));
                            pt.setInt(4,Integer.parseInt((String) session.getAttribute("no_of_per")));
                            pt.setInt(5,Integer.parseInt((String) session.getAttribute("no_of_days")));
                            pt.setDate(6,sqdob);
                            pt.setFloat(7,t);
                            int x=pt.executeUpdate();
                             
                            sql="select max(book_hotel_id) from book_hotel ";
                            ResultSet rs =st.executeQuery(sql);
                            int book_id=0;
                            if(rs.next())
                            {
                             book_id=rs.getInt(1);
                            }
                            
                            sql="select price from package where package_id=" +(String) session.getAttribute("packId");
                            rs=st.executeQuery(sql);
                            float total=t;
                            if(rs.next())
                            {
                                total+=rs.getFloat(1);
                            }
                            //total+=Float.parseFloat((String) session.getAttribute("package_price"));
                            sql="insert into b(cust_id,destination_id,package_id,book_hotel_id,price) values(?,?,?,?,?)" ;
                            pt = con.prepareStatement(sql);
                            pt.setInt(1,(Integer)session.getAttribute("userID"));
                            pt.setInt(2,Integer.parseInt((String) session.getAttribute("destidnew")));
                            pt.setInt(3,Integer.parseInt((String) session.getAttribute("packId")));
                            pt.setInt(4,book_id);
                            pt.setFloat(5,(Float)session.getAttribute("total"));
                            pt.executeUpdate();
                            
                            %>
                            <%
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                %>
                <input type="submit" value="HOME">
            </form>
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
                
           </center>
      
    </body>
</html>

