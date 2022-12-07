<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<!DOCTYPE html>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/personalDetails.css" rel="stylesheet" type="text/css"/>
              

        </head>
    <body>
        <div class="regform"><h1> Update your Details... </h1></div>
    <div class="mane">
        <form action="updateDetails.jsp" method="post">
            <center><h2 class="name">Username:<%=(String)session.getAttribute("userName")%></h2></center>
            <div id="name">
                <h2 class="name">Name</h2>
                <input class="firstname" type="text" name="first_name" value="<%=rs.getString(4)%>"><br>
                <label class="firstlabel">full name</label>
            </div>
            <h2 class="name">Country</h2>
            <input class="country" type="text" name="country" value="<%=rs.getString(6)%>">

            <div id="name">
                <h2 class="name">Address</h2>
                <input class="firstinput" type="text" name="landmark" value="<%=rs.getString(10)%>">
                <label class="firsthlabel">house no/street no/landmark</label>
                <input class="secondinput" type="text" name="pincode" value="<%=rs.getString(9)%>">
                <label class="secondlabel">pincode</label>
            </div>
            <div id="name">
                <input class="thirdinput" type="text" name="city" value="<%=rs.getString(8)%>">
                <label class="thirdlabel">city</label>
                <input class="fourthinput" type="text" name="state" value="<%=rs.getString(7)%>">
                <label class="fourthlabel">state</label>
            </div>


            <h2 class="name">Email</h2>
            <input class="email" type="text" name="email" value="<%=rs.getString(12)%>">

            <h2 class="name"> Phone</h2>
            <input class="number" type="text" name="phone" value="<%=rs.getString(11)%>">
            <label class="phone-number">Phone Number</label>

            <h2 class="name"> ID type</h2>
            <select class="option" name="subject" >
                <option disabled="disabled" selected="selected" value="<%=rs.getString(2)%>"></option>
                <option> Adhaar Card</option>
                <option> Passport</option>
                <option> Driving License</option>

            </select>
                
           <h2 class="name"> Id Number</h2>
            <input class="number" type="text" name="idnumber"><br>
            
            <h2 class="name"> Age</h2>
            <input class="number" type="text" name="age" value="<%=rs.getString(13)%>"><br>
            
            <%--<div class="wrapper">
                <input class="file-upload-input" type="file" onchange="readURL(this)" accept="Image/*" >
            </div>--%>
            <div id="name">
                <label class="name"> Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" class="radio" id="male" name="gender" value="male">
                <label for="male" class="radio">Male</label>&nbsp;&nbsp;&nbsp;
                <input type="radio" class="radio" id="female" name="gender" value="female">
                <label for="female" class="radio">Female</label>
            </div>
  <%
                                }
                                }
    catch(Exception e){
                            e.printStackTrace();
                        }
                                %>
                <center>
                    <button type="submit">UPDATE
                        <a href="updateDetails.jsp"></a>
                    </button><br> 
                    
                </center>
        </form>
    </div>
            
  
                                
    </body>
     
</html>
