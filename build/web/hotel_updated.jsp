<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<%
    session=request.getSession();
    String hid=request.getParameter("hid");
   
    String desname=request.getParameter("name");
    String acprice=request.getParameter("ac_room_price");
     String non_acprice=request.getParameter("non_ac_room_price");
    String desstate=request.getParameter("state");
    String descity=request.getParameter("city");
    String despin=request.getParameter("pincode");
    String address=request.getParameter("address");
     String pico=request.getParameter("pic_org");
    String img=request.getParameter("image");
    if(img.isEmpty())
        img=pico;
    
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                          
                            String sql="update hotel set name=?,ac_room_price=?,non_ac_room_price=?,state=?,city=?,pincode=?,address=?,pic=? where hotel_id=?";
                            PreparedStatement pt = con.prepareStatement(sql);
                        
                            pt.setString(1,desname);
                            pt.setFloat(2,Float.parseFloat(acprice));
                            pt.setFloat(3,Float.parseFloat(non_acprice));
                            pt.setString(4,desstate);
                            pt.setString(5,descity);
                            pt.setInt(6,Integer.parseInt(despin));
                            pt.setString(7,address);
                            pt.setString(8,img);
                            pt.setInt(9,Integer.parseInt(hid));
                            
                            int x=pt.executeUpdate();
                            
                            if(x==1)
                            {
                                %>
                                
                                <h1> Updated </h1>
                                <%
                                response.sendRedirect("destination_hotelcrud.jsp");
                            }
                            else
                            {
                                out.println("not added successfully");
                                response.sendRedirect("destination_hotelcrud.jsp");
                            }
        }
        catch(Exception e){
                            e.printStackTrace();
                        }
%>


