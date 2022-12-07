package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class A_005fbook_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Booking page jsp</title>\n");
      out.write("        <style>\n");
      out.write("            button{\n");
      out.write("                padding: 10px;\n");
      out.write("                background-color: greenyellow;\n");
      out.write("            }\n");
      out.write("            h1{\n");
      out.write("                background-color:darkorange;\n");
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
      out.write("                background-color:#9b59bd;\n");
      out.write("                background-size: 100%;\n");
      out.write("                background-attachment: fixed;\n");
      out.write("            }\n");
      out.write("            th,tr,td{\n");
      out.write("                border: 5px solid white;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <h1>View Bookings</h1>\n");
      out.write("        <br><br>\n");
      out.write("        <center>\n");
      out.write("            <form action=\"\" method=\"post\">\n");
      out.write("            <table class=\"table table striped\"> \n");
      out.write("                <tr style=\"border: 5px solid grey\">\n");
      out.write("                    <th> ORDER_ID</th>\n");
      out.write("                    <th> CUST_ID</th>\n");
      out.write("                    <th> DESTINATION_ID</th>\n");
      out.write("                    <th> PACKAGE_ID</th>\n");
      out.write("                    <th> BOOK_HOTEL_ID</th>\n");
      out.write("                    <th> PRICE</th>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                ");

                     try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            Statement st =con.createStatement();
                            String sql="select* from b";
                            ResultSet rs =st.executeQuery(sql);
                            while(rs.next())
                            {
                                
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    \n");
      out.write("                                    <td id=\"orderid\">");
      out.print(rs.getString("order_id"));
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print(rs.getString(6));
      out.write("</td> \n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                </tr>\n");
      out.write("                                \n");
      out.write("                                ");

                            }
                            
      out.write("\n");
      out.write("                              </table>\n");
      out.write("            </form>\n");
      out.write("                            ");

                        }catch(Exception e){
                            e.printStackTrace();
                        }
                
      out.write("\n");
      out.write("                \n");
      out.write("                <form action=\"Admin_home.jsp\">\n");
      out.write("                <input type=\"submit\" value=\"Back\">\n");
      out.write("                </form>\n");
      out.write("           </center>\n");
      out.write("      \n");
      out.write("    </body>\n");
      out.write("   \n");
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
