<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<html>
<%
    session=request.getSession();
    String hot_id=request.getParameter("hot_del");
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            
                             
                            String sql="delete from hotel where hotel_id=?";
                            PreparedStatement pt = con.prepareStatement(sql);
                            pt.setInt(1,Integer.parseInt(hot_id));
                           
                           boolean x= pt.execute();
                            if(x==true)
                            {
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
</html>
    
