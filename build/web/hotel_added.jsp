<%@page import="java.io.InputStream"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<html>
<%
    session=request.getSession();
    String did=request.getParameter("id");
    String desname=request.getParameter("name");
    String acprice=request.getParameter("ac_room_price");
     String non_acprice=request.getParameter("non_ac_room_price");
    String desstate=request.getParameter("state");
    String descity=request.getParameter("city");
    String despin=request.getParameter("pincode");
    String address=request.getParameter("address");
    String img=request.getParameter("image");
    out.println(desname+acprice+non_acprice+desstate+descity);
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            Statement st =con.createStatement();
                          
                            String sql="insert into hotel(destination_id,name,ac_room_price,non_ac_room_price,state,city,pincode,address,pic) values(?,?,?,?,?,?,?,?,?)";
                            PreparedStatement pt = con.prepareStatement(sql);
                            
                            pt.setInt(1,Integer.parseInt(did));
                            pt.setString(2,desname);
                            pt.setFloat(3,Float.parseFloat(acprice));
                            pt.setFloat(4,Float.parseFloat(non_acprice));
                            pt.setString(5,desstate);
                            pt.setString(6,descity);
                            pt.setInt(7,Integer.parseInt(despin));
                            pt.setString(8,address);
                            pt.setString(9,img);
                            int x=pt.executeUpdate();
                            
                            if(x==1)
                            {
                                %>
                                <h1>Updated </h1>
                                <%
                                response.sendRedirect("destination_hotelcrud.jsp");
                            }
                            else
                            {
                                out.println("not added successfully");
                                response.sendRedirect("hotel-form.jsp");
                            }
        }
        catch(Exception e){
                            e.printStackTrace();
                        }
%>

  
</html>
