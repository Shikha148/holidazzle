package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import newpackage.User;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("   \n");
      out.write("    <link href=\"css/style1.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <!-- Boxicons CDN Link -->\n");
      out.write("    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>\n");
      out.write("     <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("   </head>\n");
      out.write("<body>\n");
      out.write("  <div class=\"sidebar\">\n");
      out.write("    <div class=\"logo-details\">\n");
      out.write("      <i class='bx bxl-c-plus-plus'></i>\n");
      out.write("      <span class=\"logo_name\">Holidazzle</span>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("      <ul class=\"nav-links\">\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\" class=\"active\">\n");
      out.write("            <i class='bx bx-grid-alt' ></i>\n");
      out.write("            <span class=\"links_name\">Home</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"destination.jsp\">\n");
      out.write("            <i class='bx bx-box' ></i>\n");
      out.write("            <span class=\"links_name\">Book Destination</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"hotel.jsp\">\n");
      out.write("            <i class='bx bx-list-ul' ></i>\n");
      out.write("            <span class=\"links_name\">View Hotels</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"package.jsp\">\n");
      out.write("            <i class='bx bx-pie-chart-alt-2' ></i>\n");
      out.write("            <span class=\"links_name\">View Packages</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"booking.jsp\">\n");
      out.write("            <i class='bx bx-coin-stack' ></i>\n");
      out.write("            <span class=\"links_name\">View Bookings</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"contact.jsp\">\n");
      out.write("            <i class='bx bx-book-alt' ></i>\n");
      out.write("            <span class=\"links_name\">Contact us</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"LogoutServlet\">\n");
      out.write("            <i class='bx bx-log-out' ></i>\n");
      out.write("            <span class=\"links_name\">Logout</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("  </div>\n");
      out.write("  <section class=\"home-section\">\n");
      out.write("    <nav>\n");
      out.write("        \n");
      out.write("      <div class=\"sidebar-button\">\n");
      out.write("        <i class='bx bx-menu sidebarBtn'></i>\n");
      out.write("        <span class=\"dashboard\">Dashboard</span>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"search-box\">\n");
      out.write("        <input type=\"text\" placeholder=\"Search...\">\n");
      out.write("        <i class='bx bx-search' ></i>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"profile-details\">\n");
      out.write("        <!--<img src=\"images/profile.jpg\" alt=\"\">-->\n");
      out.write("        <span class=\"admin_name\">Welcome,");
      out.write("</span>\n");
      out.write("        <i class='bx bx-chevron-down' ></i>\n");
      out.write("      </div>\n");
      out.write("        \n");
      out.write("    </nav>\n");
      out.write("       <video autoplay loop class=\"back-video\" muted >\n");
      out.write("          <source src=\"video.mp4\" type=\"video/mp4\">\n");
      out.write("      </video> \n");
      out.write("      \n");
      out.write("  </section>\n");
      out.write(" \n");
      out.write("        \n");
      out.write("  <script>\n");
      out.write("   let sidebar = document.querySelector(\".sidebar\");\n");
      out.write("let sidebarBtn = document.querySelector(\".sidebarBtn\");\n");
      out.write("sidebarBtn.onclick = function() {\n");
      out.write("  sidebar.classList.toggle(\"active\");\n");
      out.write("  if(sidebar.classList.contains(\"active\")){\n");
      out.write("  sidebarBtn.classList.replace(\"bx-menu\" ,\"bx-menu-alt-right\");\n");
      out.write("}else\n");
      out.write("  sidebarBtn.classList.replace(\"bx-menu-alt-right\", \"bx-menu\");\n");
      out.write("}\n");
      out.write(" </script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
