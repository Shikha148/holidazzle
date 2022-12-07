<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<html>
<%
    session=request.getSession();
    String pac_id=request.getParameter("pac_del");
    
    
    
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            
                             
                            String sql="delete from package where package_id=?";
                            PreparedStatement pt = con.prepareStatement(sql);
                            pt.setInt(1,Integer.parseInt(pac_id));
                           
                           boolean x= pt.execute();
                            if(x==true)
                            {
                                %>
                                
                                <h1> Updated </h1>
                                <%
                                response.sendRedirect("admin_packages.jsp");
                            }
                            else
                            {
                                out.println("not added successfully");
                                response.sendRedirect("admin_packages.jsp");
                            }
        }
        catch(Exception e){
                            e.printStackTrace();
                        }
%>
    
</html>
