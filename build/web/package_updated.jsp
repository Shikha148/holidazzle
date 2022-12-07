<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<%
    
    session=request.getSession();
    String pac_id=request.getParameter("id");
    String name=request.getParameter("name");
    String days_inc=request.getParameter("days_inc");
    String price=request.getParameter("price");
    String air_assistance=request.getParameter("air_assistance");
    String city_tour=request.getParameter("city_tour");
    String welcome_drinks=request.getParameter("welcome_drinks");
    String daily_buffe=request.getParameter("daily_buffe");
    String guide=request.getParameter("guide");
    String special_for=request.getParameter("special_for");
    String pico=request.getParameter("pic_org");
    String img=request.getParameter("image");
    
   
    if(img==null)
        img=pico;
   
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            int pid=Integer.parseInt(pac_id);
                            String sql="update package set name=?,days_inc=?,price=?,air_assistance=?,city_tour=?,welcome_drinks=?,daily_buffe=?,guide=?,special_for=?,pic=? where package_id=?";
                            PreparedStatement pt = con.prepareStatement(sql);
                         
                            pt.setString(1,name);
                            pt.setInt(2,Integer.parseInt(days_inc));
                            pt.setFloat(3,Float.parseFloat(price));
                            pt.setString(4,air_assistance);
                            pt.setString(5,city_tour);
                            pt.setString(6,welcome_drinks);
                            pt.setString(7,daily_buffe);
                            pt.setString(8,guide);
                            pt.setString(9,special_for);
                            pt.setString(10, img);
                            pt.setInt(11,pid);
                            int x=pt.executeUpdate();
                            
                            if(x==1)
                            {
                                %>
                                
                                <h1> Updated </h1>
                                <%
                                response.sendRedirect("admin_packages.jsp");
                            }
                            else
                            {
                                out.println("not added successfully");
                                response.sendRedirect("update_package.jsp");
                            }
        }
        catch(Exception e){
                            e.printStackTrace();
                        }
%>
</html>



