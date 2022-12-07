<%-- 
    Document   : updateDetails
    Created on : 5 Apr, 2022, 12:02:52 PM
    Author     : Shivam
--%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session=request.getSession();
    String fname=request.getParameter("first_name");
    out.println(fname);
   // String lname=request.getParameter("last_name");
    //out.println(lname);
    String name=fname;
    out.println(name);
    String country=request.getParameter("country");
    out.println(country);
    String address=request.getParameter("landmark");
    out.println(address);
    String pincode=request.getParameter("pincode");
    out.println(pincode);
    String city=request.getParameter("city");
    out.println(city);
    String state=request.getParameter("state");
    out.println(state);
    String email=request.getParameter("email");
    out.println(email);
    String phone=request.getParameter("phone");
    out.println(phone);
    String Idtype=request.getParameter("subject");
    out.println(Idtype);
    String Idnumber=request.getParameter("idnumber");
    out.println(Idnumber);
    String age=request.getParameter("age");
    out.println(age);
    String Gender=request.getParameter("gender");
    out.println(Gender);
   
    String hid=(String)session.getAttribute("hotelidnew");
     out.println(hid);
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            
                            String sql="update customer set id_type=?,id_number=?,name=?,gender=?,country=?,state=?,city=?,pincode=?,address=?,mobile_no=?,email_id=?,age=? where cust_id="+(Integer)session.getAttribute("userID");
                            PreparedStatement pt = con.prepareStatement(sql);
                         //   pt.setInt(1,(Integer)session.getAttribute("userID"));
                            pt.setString(1,Idtype);
                            pt.setString(2,Idnumber);
                            pt.setString(3,name);
                            pt.setString(4,Gender);
                            pt.setString(5,country);
                            pt.setString(6,state);
                            pt.setString(7,city);
                            pt.setInt(8,Integer.parseInt(pincode));
                            pt.setString(9,address);
                            pt.setString(10,phone);
                            pt.setString(11,email);
                            pt.setInt(12,Integer.parseInt(age));
                            int x=pt.executeUpdate();
                            
                            if(x==1)
                            {
                                %>
                                <h1>Updated </h1>
                                <%
                                response.sendRedirect("BookHotel.jsp");
                            }
                            else
                            {
                                out.println("not added successfully");
                                response.sendRedirect("updatePersonalDetails.jsp");
                            }
        }
        catch(Exception e){
                            e.printStackTrace();
                        }
%>


