package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.sql.*;
import java.util.Date;
import javax.servlet.*;

public final class FinalBooking_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/Main (1).css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>Booked</title>\n");
      out.write("   <style>\n");
      out.write("            button{\n");
      out.write("                padding: 10px;\n");
      out.write("                background-color: greenyellow;\n");
      out.write("            }\n");
      out.write("            h1{\n");
      out.write("                background-color: lightslategray;\n");
      out.write("                padding: 20px;\n");
      out.write("                color: white;\n");
      out.write("                font-family: serif;\n");
      out.write("                text-align: center;\n");
      out.write("                text-decoration: underline;\n");
      out.write("            }\n");
      out.write("            #b1\n");
      out.write("            {\n");
      out.write("                font-family: serif;\n");
      out.write("                font-size: 20px;\n");
      out.write("                margin-top: 200px;\n");
      out.write("                border-radius: 20px;\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                background-color: lightgoldenrodyellow;\n");
      out.write("                background-size: 100%;\n");
      out.write("                background-attachment: fixed;\n");
      out.write("            }\n");
      out.write("            th,tr,td{\n");
      out.write("                border: 5px solid grey;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <br><br><br><br><br><br>\n");
      out.write("        <center>\n");
      out.write("            <form action=\"home.jsp\" method=\"post\">\n");
      out.write("            <h1>Order Placed</h1>\n");
      out.write("                    \n");
      out.write("                ");

                    String ndays=(String) session.getAttribute("no_of_days");
                    String nper=(String) session.getAttribute("no_of_per");
                    float t=Float.parseFloat((String) session.getAttribute("room_price"));
                    t=t*(Integer.parseInt(ndays))*(Integer.parseInt(nper));
                    String dob=(String)session.getAttribute("arrival_date");
                    SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
                    java.util.Date udob=sdf.parse(dob);
                    long ms=udob.getTime();
                    java.sql.Date sqdob=new java.sql.Date(ms);
                    
                     try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                             Statement st =con.createStatement();
                             
                            String sql="insert into book_hotel(hotel_id,user_id,no_of_per,no_of_rooms,no_of_days,arrival,price) values(?,?,?,?,?,?,?)";
                            PreparedStatement pt = con.prepareStatement(sql);
                            pt.setInt(1,Integer.parseInt((String) session.getAttribute("hotelidnew")));
                            pt.setInt(2,(Integer)session.getAttribute("userID"));
                            pt.setInt(3,Integer.parseInt((String) session.getAttribute("no_of_per")));
                            pt.setInt(4,Integer.parseInt((String) session.getAttribute("no_of_per")));
                            pt.setInt(5,Integer.parseInt((String) session.getAttribute("no_of_days")));
                            pt.setDate(6,sqdob);
                            pt.setFloat(7,t);
                            int x=pt.executeUpdate();
                             
                            sql="select max(book_hotel_id) from book_hotel ";
                            ResultSet rs =st.executeQuery(sql);
                            int book_id=0;
                            if(rs.next())
                            {
                             book_id=rs.getInt(1);
                            }
                            
                            sql="select price from package where package_id=" +(String) session.getAttribute("packId");
                            rs=st.executeQuery(sql);
                            float total=t;
                            if(rs.next())
                            {
                                total+=rs.getFloat(1);
                            }
                            //total+=Float.parseFloat((String) session.getAttribute("package_price"));
                            sql="insert into b(cust_id,destination_id,package_id,book_hotel_id,price) values(?,?,?,?,?)" ;
                            pt = con.prepareStatement(sql);
                            pt.setInt(1,(Integer)session.getAttribute("userID"));
                            pt.setInt(2,Integer.parseInt((String) session.getAttribute("destidnew")));
                            pt.setInt(3,Integer.parseInt((String) session.getAttribute("packId")));
                            pt.setInt(4,book_id);
                            pt.setFloat(5,total);
                            pt.executeUpdate();
                            
                            
      out.write("\n");
      out.write("                            ");

                        }catch(Exception e){
                            e.printStackTrace();
                        }
                
      out.write("\n");
      out.write("                <input type=\"submit\" value=\"HOME\">\n");
      out.write("            </form>\n");
      out.write("                <div class=\"square\">\n");
      out.write("            <ul>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"circle\">\n");
      out.write("            <ul>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("                \n");
      out.write("           </center>\n");
      out.write("      \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
