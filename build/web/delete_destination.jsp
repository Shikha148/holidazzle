<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<html>
<%
    session=request.getSession();
    String des_id=request.getParameter("des_del");
    
    
    
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            
                             
                            String sql="delete from destination where destination_id=?";
                            PreparedStatement pt = con.prepareStatement(sql);
                            pt.setInt(1,Integer.parseInt(des_id));
                           
                           boolean x= pt.execute();
                            if(x==true)
                            {
                                %>
                                
                                <h1> Updated </h1>
                                <%
                                response.sendRedirect("admin_destination.jsp");
                            }
                            else
                            {
                                out.println("not added successfully");
                                response.sendRedirect("admin_destination.jsp");
                            }
        }
        catch(Exception e){
                            e.printStackTrace();
                        }
%>
    
</html>