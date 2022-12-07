package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.servlet.*;

public final class addPersonalDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    session=request.getSession();
    String fname=request.getParameter("first_name");
    String lname=request.getParameter("last_name");
    String name=fname+lname;
    String country=request.getParameter("country");
    String address=request.getParameter("landmark");
    String pincode=request.getParameter("pincode");
    String city=request.getParameter("city");
    String state=request.getParameter("state");
    String email=request.getParameter("email");
    String phone=request.getParameter("phone");
    String Idtype=request.getParameter("subject");
    String Idnumber=request.getParameter("idnumber");
    String age=request.getParameter("age");
    String Gender=request.getParameter("gender");
    
    
    try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","shikha");
                            
                            String sql="insert into customer(cust_id,id_type,id_number,name,gender,state,city,pincode,address,mobile_no,email_id,age) values(?,?,?,?,?,?,?,?,?,?,?,?)";
                            PreparedStatement pt = con.prepareStatement(sql);
                            pt.setInt(1,5);
                            pt.setString(2,"aadhar");
                            pt.setString(3,"123456789054");
                            pt.setString(4,"sgsh");
                            pt.setString(5,"male");
                            pt.setString(6,"sgashfa");
                            pt.setString(7,"sagsf");
                            pt.setString(8,"123009");
                            pt.setString(9,"ssfs");
                            pt.setString(10,"1234567908");
                            pt.setString(11,"sfsfa");
                            pt.setInt(12,6);
                            int x=pt.executeUpdate();
                            
                            if(x==1)
                                out.println("Record added Successfully");
                            else
                            {
                                out.println("not added successfully");
                                response.sendRedirect("Personal.jsp");
                            }
        }
        catch(Exception e){
                            e.printStackTrace();
                        }

      out.write('\n');
      out.write('\n');
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
