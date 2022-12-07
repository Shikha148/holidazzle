package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.servlet.*;

public final class updatePersonalDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");

    //out.println("hi there "+ (String)session.getAttribute("hotelidnew"));
    ResultSet rs;
    String sql;
    Statement st;
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            st =con.createStatement();
                            sql="select* from customer where cust_id="+(Integer)session.getAttribute("userID");
                            rs =st.executeQuery(sql);
                            if(rs.next())
                            {
                                
                            
    
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/personalDetails.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("              \n");
      out.write("\n");
      out.write("        </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"regform\"><h1> Update your Details... </h1></div>\n");
      out.write("    <div class=\"mane\">\n");
      out.write("        <form action=\"updateDetails.jsp\" method=\"post\">\n");
      out.write("            <center><h2 class=\"name\">Username:");
      out.print((String)session.getAttribute("userName"));
      out.write("</h2></center>\n");
      out.write("            <div id=\"name\">\n");
      out.write("                <h2 class=\"name\">Name</h2>\n");
      out.write("                <input class=\"firstname\" type=\"text\" name=\"first_name\" value=\"");
      out.print(rs.getString(4));
      out.write("\"><br>\n");
      out.write("                <label class=\"firstlabel\">full name</label>\n");
      out.write("            </div>\n");
      out.write("            <h2 class=\"name\">Country</h2>\n");
      out.write("            <input class=\"country\" type=\"text\" name=\"country\" value=\"");
      out.print(rs.getString(6));
      out.write("\">\n");
      out.write("\n");
      out.write("            <div id=\"name\">\n");
      out.write("                <h2 class=\"name\">Address</h2>\n");
      out.write("                <input class=\"firstinput\" type=\"text\" name=\"landmark\" value=\"");
      out.print(rs.getString(10));
      out.write("\">\n");
      out.write("                <label class=\"firsthlabel\">house no/street no/landmark</label>\n");
      out.write("                <input class=\"secondinput\" type=\"text\" name=\"pincode\" value=\"");
      out.print(rs.getString(9));
      out.write("\">\n");
      out.write("                <label class=\"secondlabel\">pincode</label>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"name\">\n");
      out.write("                <input class=\"thirdinput\" type=\"text\" name=\"city\" value=\"");
      out.print(rs.getString(8));
      out.write("\">\n");
      out.write("                <label class=\"thirdlabel\">city</label>\n");
      out.write("                <input class=\"fourthinput\" type=\"text\" name=\"state\" value=\"");
      out.print(rs.getString(7));
      out.write("\">\n");
      out.write("                <label class=\"fourthlabel\">state</label>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <h2 class=\"name\">Email</h2>\n");
      out.write("            <input class=\"email\" type=\"text\" name=\"email\" value=\"");
      out.print(rs.getString(12));
      out.write("\">\n");
      out.write("\n");
      out.write("            <h2 class=\"name\"> Phone</h2>\n");
      out.write("            <input class=\"number\" type=\"text\" name=\"phone\" value=\"");
      out.print(rs.getString(11));
      out.write("\">\n");
      out.write("            <label class=\"phone-number\">Phone Number</label>\n");
      out.write("\n");
      out.write("            <h2 class=\"name\"> ID type</h2>\n");
      out.write("            <select class=\"option\" name=\"subject\" >\n");
      out.write("                <option disabled=\"disabled\" selected=\"selected\" value=\"");
      out.print(rs.getString(2));
      out.write("\"></option>\n");
      out.write("                <option> Adhaar Card</option>\n");
      out.write("                <option> Passport</option>\n");
      out.write("                <option> Driving License</option>\n");
      out.write("\n");
      out.write("            </select>\n");
      out.write("                \n");
      out.write("           <h2 class=\"name\"> Id Number</h2>\n");
      out.write("            <input class=\"number\" type=\"text\" name=\"idnumber\"><br>\n");
      out.write("            \n");
      out.write("            <h2 class=\"name\"> Age</h2>\n");
      out.write("            <input class=\"number\" type=\"text\" name=\"age\" value=\"");
      out.print(rs.getString(13));
      out.write("\"><br>\n");
      out.write("            \n");
      out.write("            ");
      out.write("\n");
      out.write("            <div id=\"name\">\n");
      out.write("                <label class=\"name\"> Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                <input type=\"radio\" class=\"radio\" id=\"male\" name=\"gender\" value=\"male\">\n");
      out.write("                <label for=\"male\" class=\"radio\">Male</label>&nbsp;&nbsp;&nbsp;\n");
      out.write("                <input type=\"radio\" class=\"radio\" id=\"female\" name=\"gender\" value=\"female\">\n");
      out.write("                <label for=\"female\" class=\"radio\">Female</label>\n");
      out.write("            </div>\n");
      out.write("  ");

                                }
                                }
    catch(Exception e){
                            e.printStackTrace();
                        }
                                
      out.write("\n");
      out.write("                <center>\n");
      out.write("                    <button type=\"submit\">UPDATE\n");
      out.write("                        <a href=\"updateDetails.jsp\"></a>\n");
      out.write("                    </button><br> \n");
      out.write("                    \n");
      out.write("                </center>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("            \n");
      out.write("  \n");
      out.write("                                \n");
      out.write("    </body>\n");
      out.write("     \n");
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
