<%-- 
    Document   : ViewPersonalDetails
    Created on : 5 Apr, 2022, 11:00:08 PM
    Author     : Shivam
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Main (1).css" rel="stylesheet" type="text/css"/>
        <title>Destination page jsp</title>
        <style>
            body{
                background-color: #ccff99;
                background-position:center;
                background-size:cover;
                font-family:sans-serif;
                margin-top:20px;
            }
            button{
                padding: 10px;
                background-color: skyblue;
            }
            h2{
                background-color: lightslategray;
                padding: 20px;
                color: white;
                font-family: serif;
                text-decoration: underline;
                text-align: center;
            }
            h1
            {
               font-size: 20px;
               padding: 0px;
               color: red;
               font-family: serif;
               margin-left: 70px;
               
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
               color:#ff3333;
               font-family: serif;
               margin-left: 70px;
            }
            
        </style>
    </head>
    
      <body>
          
<%
    //out.println("hi there "+ (String)session.getAttribute("hotelidnew"));
    ResultSet rs;
    String sql;
    Statement st;
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            st =con.createStatement();
                            sql="select* from customer where cust_id="+(Integer)session.getAttribute("userID");
                            rs =st.executeQuery(sql);
                            if(rs.next())
                            {
                                
                            
    %>

        
        
       
      <center><div class="regform"><h2> Your Details... </h2></div></center>
        <form action="updatePersonalDetails.jsp" method="post">
            <h1>Username :<%=(String)session.getAttribute("userName")%></h1>
                
                
                <h1>Name :<%=rs.getString(4)%></h1>
                
            <h1>Country :<%=rs.getString(6)%></h1>
            
                <h1>Address: </h1>
                
                <label>landmark :<%=rs.getString(10)%></label><br>
                <label>city :<%=rs.getString(8)%></label>
                <label>state :<%=rs.getString(7)%></label><br>
                <label>pincode :<%=rs.getString(9)%> </label>
            
                
                
         
            <h1>Email :<%=rs.getString(12)%></h1>
            

            <h1> Phone :<%=rs.getString(11)%></h1>

            <h1> ID type :<%=rs.getString(2)%></h1>
            
                
           <h1> Id Number :<%=rs.getString(3)%></h1>
          
            
            <h1> Age :<%=rs.getString(13)%></h1>
            
            <h1> Gender :<%=rs.getString(5)%></h1>
          

                <center>
                    <button type="submit">Edit Details
                        <a href="updatePersonalDetails.jsp"></a>
                    </button> <br> <hr> <br>
                    
                </center>
        </form>
            
    <%
                                }
                                }
    catch(Exception e){
                            e.printStackTrace();
                        }
                                %>
    <center>
                                <form action="BookHotel.jsp" method="post">
                                    <button type ="submit" value="Book Without Change">CONTINUE</button>
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
                
    </body>
   
     
</html>
