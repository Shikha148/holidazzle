<%-- 
    Document   : checkPersonalDetails
    Created on : 3 Apr, 2022, 11:09:18 AM
    Author     : Shivam
--%>

<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session=request.getSession();
    String hId=request.getParameter("hid");
    session.setAttribute("hotelidnew",hId);
    out.println("hi there "+ hId);
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            Statement st =con.createStatement();
                           // int id=(Integer)session.getAttribute("destid");
                            //int ID=Integer.parseInt(id);
                            String sql="select* from customer where cust_id="+(Integer)session.getAttribute("userID");
                            ResultSet rs =st.executeQuery(sql);
                            if(rs.next())
                            {
                                response.sendRedirect("ViewPersonalDetails.jsp");
                            }
                            else
                            {
                                response.sendRedirect("Personal.jsp");
                            }
                                }
    catch(Exception e){
                            e.printStackTrace();
                        }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
