<%-- 
    Document   : addPersonalDetails
    Created on : 4 Apr, 2022, 8:27:15 PM
    Author     : Shivam
--%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session=request.getSession();
    String fname=request.getParameter("first_name");
    String lname=request.getParameter("last_name");
    String name=fname+" "+lname;
    String country=request.getParameter("country");
    String address=request.getParameter("landmark");
    String pincode=request.getParameter("pincode");
    String city=request.getParameter("city");
    String state=request.getParameter("state");
    String email=request.getParameter("email");
    String phone=request.getParameter("phone");
    String Idtype=request.getParameter("subject");
    String Idnumber=request.getParameter("idnumber");
    String age=request.getParameter("age");
    String Gender=request.getParameter("gender");
     out.println("Record added Successfully");
    
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            
                            String sql="insert into customer(cust_id,id_type,id_number,name,gender,country,state,city,pincode,address,mobile_no,email_id,age) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
                            PreparedStatement pt = con.prepareStatement(sql);
                            pt.setInt(1,(Integer)session.getAttribute("userID"));
                            pt.setString(2,Idtype);
                            pt.setString(3,Idnumber);
                            pt.setString(4,name);
                            pt.setString(5,Gender);
                            pt.setString(6,country);
                            pt.setString(7,state);
                            pt.setString(8,city);
                            pt.setInt(9,Integer.parseInt(pincode));
                            pt.setString(10,address);
                            pt.setString(11,phone);
                            pt.setString(12,email);
                            pt.setInt(13,Integer.parseInt(age));
                            int x=pt.executeUpdate();
                            
                            if(x==1)
                            {
                                out.println("Record added Successfully");
                                response.sendRedirect("BookHotel.jsp");
                            }
                            else
                            {
                                out.println("not added successfully");
                                response.sendRedirect("Personal.jsp");
                            }
        }
        catch(Exception e){
                            e.printStackTrace();
                        }
%>

