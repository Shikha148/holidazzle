package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.servlet.*;

public final class BookHotel_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta name=\"viewport\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Book Hotel Page</title>\n");
      out.write("        <link href=\"css/Main (1).css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <style>\n");
      out.write("            button{\n");
      out.write("                padding: 10px;\n");
      out.write("                background-color: skyblue;\n");
      out.write("            }\n");
      out.write("            h1{text-align: center;color: red; font: sans-serif}\n");
      out.write("            div{text-align: center;color: deeppink}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"welcome\">\n");
      out.write("            <h1>BOOK HOTEL</h1>\n");
      out.write("            <center>\n");
      out.write("            <form action=\"package.jsp\" method=\"post\">\n");
      out.write("            <div class=\"contain\">\n");
      out.write("               \n");
      out.write("                    <div class=\"user-details\">\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">User Name:");
      out.print((String)session.getAttribute("userName"));
      out.write("</span>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">Total Persons</span>\n");
      out.write("                            <input type=\"text\" name=\"no_of_per\" placeholder=\"No_Of_Persons\" required>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">Total Days</span>\n");
      out.write("                            <input type=\"text\" name=\"no_of_days\" placeholder=\"No_Of_Days\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">Arrival Date</span>\n");
      out.write("                            <input type=\"text\" name=\"date\" placeholder=\"dd/mm/yy\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">Phone</span>\n");
      out.write("                            <input type=\"text\" name=\"phone\" placeholder=\"Enter phone no.\" required>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        ");

                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                             Statement st =con.createStatement();
                        String sql="select ac_room_price,non_ac_room_price from hotel where hotel_id="+(String)session.getAttribute("hotelidnew");
                        ResultSet rs=st.executeQuery(sql);
                        String ac_price="0";
                        String non_ac="0";
                        if(rs.next())
                        {
                         ac_price=rs.getString(1);
                        non_ac=rs.getString(2);
                        }
                        session.setAttribute("ac",ac_price);
                        session.setAttribute("nonac",non_ac);
                        
                        
      out.write("\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">Price of AC rooms:");
      out.print(ac_price);
      out.write("</span>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">Price of NON-AC rooms:");
      out.print(non_ac);
      out.write("</span>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"category\">\n");
      out.write("                            <div class=\"dot\">\n");
      out.write("                            A/C Required:\n");
      out.write("                            <input type=\"radio\" name=\"ac\" value=\"Yes\"/>Yes\n");
      out.write("                            <input type=\"radio\" name=\"ac\" value=\"No\"/>No\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                       \n");
      out.write("                        \n");
      out.write("                            <div class=\"change\">\n");
      out.write("                            <button type=\"submit\" name=\"hid\" value=\"BOOK HOTEL\">Book Hotel</button>\n");
      out.write("                            </div>   \n");
      out.write("            </div> \n");
      out.write("                            ");

                                }
                                    catch(Exception e)
                                    {
                                         e.printStackTrace();
                                    }
                        
      out.write("\n");
      out.write("                    \n");
      out.write("        </div>\n");
      out.write("  </form>\n");
      out.write("                         \n");
      out.write("            </center>\n");
      out.write("                        <div class=\"square\">\n");
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
      out.write("                        <br>\n");
      out.write("                        <center>\n");
      out.write("         <form action=\"hotel.jsp\">\n");
      out.write("               <button type=\"submit\" name=\"hid\" value=\"back\">BACK</button>\n");
      out.write("                </form>   \n");
      out.write("                        </center>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
