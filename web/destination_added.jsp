<%@page import="java.io.InputStream"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<html>
<%
    session=request.getSession();
    String desname=request.getParameter("name");
    String desstate=request.getParameter("state");
    String descity=request.getParameter("city");
    String despin=request.getParameter("pincode");
    String desfamous=request.getParameter("famous_for");
    String img=request.getParameter("image");
   // out.println(img);
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            Statement st =con.createStatement();
                             
                         
                            String sql="insert into destination(name,state,city,pincode,famous_for,pic) values(?,?,?,?,?,?)";
                            PreparedStatement pt = con.prepareStatement(sql);
                            
                            pt.setString(1,desname);
                            pt.setString(2,desstate);
                            pt.setString(3,descity);
                            pt.setInt(4,Integer.parseInt(despin));
                            pt.setString(5,desfamous);
                            pt.setString(6,img);
                            int x=pt.executeUpdate();
                            
                            if(x==1)
                            {
                                %>
                                <h1>Updated </h1>
                                <%
                                response.sendRedirect("admin_destination.jsp");
                            }
                            else
                            {
                                out.println("not added successfully");
                                response.sendRedirect("destination_form.jsp");
                            }
        }
        catch(Exception e){
                            e.printStackTrace();
                        }
%>

  
</html>