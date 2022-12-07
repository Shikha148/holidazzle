
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<%
    session=request.getSession();
    String des_id=request.getParameter("id");
    String desname=request.getParameter("name");
    String desstate=request.getParameter("state");
    String descity=request.getParameter("city");
    String despin=request.getParameter("pincode");
    String desfamous=request.getParameter("famous_for");
    String pico=request.getParameter("pic_org");
    String img=request.getParameter("image");
    if(img.isEmpty())
        img=pico;
   // session.setAttribute("des_id",desname);
   
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            int did=Integer.parseInt(des_id);
                            String sql="update destination set name=?,state=?,city=?,pincode=?,famous_for=?,pic=? where destination_id=?";
                            PreparedStatement pt = con.prepareStatement(sql);
                         //   pt.setInt(1,(Integer)session.getAttribute("userID"));
                            pt.setString(1,desname);
                            pt.setString(2,desstate);
                            pt.setString(3,descity);
                            pt.setInt(4,Integer.parseInt(despin));
                            pt.setString(5,desfamous);
                            pt.setString(6, img);
                            pt.setInt(7,did);
                            int x=pt.executeUpdate();
                            
                            if(x==1)
                            {
                                %>
                                
                                <h1> Updated </h1>
                                <%
                                response.sendRedirect("admin_destination.jsp");
                            }
                            else
                            {
                                out.println("not added successfully");
                                response.sendRedirect("update_destination.jsp");
                            }
        }
        catch(Exception e){
                            e.printStackTrace();
                        }
%>


