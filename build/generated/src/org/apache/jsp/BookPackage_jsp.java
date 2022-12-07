package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class BookPackage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Book Package Page</title>\n");
      out.write("        <link  href=\"css/Package.css\" rel=\"stylesheet\" >\n");
      out.write("        <style>\n");
      out.write("            h1{text-align: center;color: blue; font: sans-serif}\n");
      out.write("            div{text-align: center;color: indigo}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"welcome\"><br>\n");
      out.write("            <h1>BOOK PACKAGE</h1>\n");
      out.write("            <div class=\"contain\">\n");
      out.write("                <form >\n");
      out.write("                    <div class=\"user-details\">\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">User Name</span>\n");
      out.write("                            <input type=\"text\" placeholder=\"Enter your username\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            Package (select):\n");
      out.write("                            <select name=\"Package\">\n");
      out.write("                                <option>Select</option>\n");
      out.write("                                <option>Package 1</option>\n");
      out.write("                                <option>Package 2</option>\n");
      out.write("                                <option>Package 3</option>\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">Total Persons</span>\n");
      out.write("                            <input type=\"text\" placeholder=\"No_Of_Persons\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">ID Type</span>\n");
      out.write("                            <input type=\"text\" placeholder=\"Type of ID\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">ID Number</span>\n");
      out.write("                            <input type=\"text\" placeholder=\"Enter ID No.\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">Phone</span>\n");
      out.write("                            <input type=\"text\" placeholder=\"Enter phone no.\" required>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <span class=\"details\">Price</span>\n");
      out.write("                            <input type=\"text\" placeholder=\"Price\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"change\">\n");
      out.write("                        <button type=\"submit\">Check Price</button>\n");
      out.write("                    \n");
      out.write("                        <button type=\"submit\">Book Package</button>\n");
      out.write("                    \n");
      out.write("                        <button type=\"submit\">Back</button></div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"square\">\n");
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
      out.write("        \n");
      out.write("    </body>\n");
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
