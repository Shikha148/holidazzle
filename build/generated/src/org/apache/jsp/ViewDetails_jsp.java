package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ViewDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            *{\n");
      out.write("                margin:0;\n");
      out.write("                padding:0;\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                background-image:url(img/l1.jpg);\n");
      out.write("                background-position:center;\n");
      out.write("                background-size:cover;\n");
      out.write("                font-family:sans-serif;\n");
      out.write("                margin-top:40px;\n");
      out.write("            }\n");
      out.write("            .regform{\n");
      out.write("                width:800px;\n");
      out.write("                background-color:rgb(0,0,0,0.6);\n");
      out.write("                margin:auto;\n");
      out.write("                color:#FFFFFF;\n");
      out.write("                padding:10px 0px 10px 0px;\n");
      out.write("                text-align:center;\n");
      out.write("                border-radius:15px 15px 0px 0px;I\n");
      out.write("            }\n");
      out.write("            .mane{\n");
      out.write("                background-color:rgb(0,0,0,0.5);\n");
      out.write("                width:800px;\n");
      out.write("                margin:auto;\n");
      out.write("            }\n");
      out.write("            form{\n");
      out.write("                padding:10px;\n");
      out.write("            }\n");
      out.write("            #name {\n");
      out.write("                width:100%;\n");
      out.write("                height:100px;\n");
      out.write("            }\n");
      out.write("            .uname{\n");
      out.write("                position:relative;\n");
      out.write("                left:200px;\n");
      out.write("                top:-37px;\n");
      out.write("                line-height:40px;\n");
      out.write("                border-radius:6px;\n");
      out.write("                padding:0 22px;\n");
      out.write("                font-size:16px;\n");
      out.write("            }\n");
      out.write("            .name {\n");
      out.write("                margin-left:25px;\n");
      out.write("                margin-top:30px;\n");
      out.write("                width:125px;\n");
      out.write("                color:white;\n");
      out.write("                font-size:18px;\n");
      out.write("                font-weight:700;\n");
      out.write("            }\n");
      out.write("            .firstname{\n");
      out.write("                position:relative;\n");
      out.write("                left:200px;\n");
      out.write("                top:-37px;\n");
      out.write("                line-height:40px;\n");
      out.write("                border-radius:6px;\n");
      out.write("                padding:0 22px;\n");
      out.write("                font-size:16px;\n");
      out.write("            }\n");
      out.write("            .lastname{\n");
      out.write("                position:relative;\n");
      out.write("                left:417px;\n");
      out.write("                top:-80px;\n");
      out.write("                line-height:40px;\n");
      out.write("                border-radius:6px;\n");
      out.write("                padding:0 22px;\n");
      out.write("                font-size:16px;\n");
      out.write("                color:#555;\n");
      out.write("            }\n");
      out.write("            .firstlabel{\n");
      out.write("                position:relative;\n");
      out.write("                color:#E5E5E5;\n");
      out.write("                text-transform:capitalize;\n");
      out.write("                font-size:14px;\n");
      out.write("                left:203px;\n");
      out.write("                top:-45px;\n");
      out.write("            }\n");
      out.write("            .lastlabel{\n");
      out.write("                position:relative;\n");
      out.write("                color:#E5E5E5;\n");
      out.write("                text-transform:capitalize;\n");
      out.write("                font-size:14px;\n");
      out.write("                left:175px;\n");
      out.write("                top:-45px;\n");
      out.write("            }\n");
      out.write("            .country{\n");
      out.write("                position:relative;\n");
      out.write("                left:200px;\n");
      out.write("                top:-37px;\n");
      out.write("                line-height:40px;\n");
      out.write("                width:480px;\n");
      out.write("                border-radius:6px;\n");
      out.write("                padding:0 22px;\n");
      out.write("                font-size:16px;\n");
      out.write("                color:#555;\n");
      out.write("            }\n");
      out.write("            .firstinput{\n");
      out.write("                position:relative;\n");
      out.write("                left:200px;\n");
      out.write("                top:-37px;\n");
      out.write("                line-height:40px;\n");
      out.write("                border-radius:6px;\n");
      out.write("                padding:0 22px;\n");
      out.write("                font-size:16px;\n");
      out.write("                width:280px;\n");
      out.write("            }\n");
      out.write("            .firsthlabel{\n");
      out.write("                position:relative;\n");
      out.write("                color:#E5E5E5;\n");
      out.write("                text-transform:capitalize;\n");
      out.write("                font-size:14px;\n");
      out.write("                left:-127px;\n");
      out.write("                top:-2px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .secondinput{\n");
      out.write("                position:relative;\n");
      out.write("                left:157px;\n");
      out.write("                top:-37px;\n");
      out.write("                line-height:40px;\n");
      out.write("                border-radius:6px;\n");
      out.write("                padding:0 22px;\n");
      out.write("                font-size:16px;\n");
      out.write("                color:#555;\n");
      out.write("                width:125px;\n");
      out.write("            }\n");
      out.write("            .secondlabel{\n");
      out.write("                position:relative;\n");
      out.write("                color:#E5E5E5;\n");
      out.write("                text-transform:capitalize;\n");
      out.write("                font-size:14px;\n");
      out.write("                left:-15px;\n");
      out.write("                top:-5px;\n");
      out.write("            }\n");
      out.write("            .thirdinput{\n");
      out.write("                position:relative;\n");
      out.write("                left:200px;\n");
      out.write("                top:-25px;\n");
      out.write("                line-height:40px;\n");
      out.write("                border-radius:6px;\n");
      out.write("                padding:0 22px;\n");
      out.write("                font-size:16px;\n");
      out.write("            }\n");
      out.write("            .thirdlabel{\n");
      out.write("                position:relative;\n");
      out.write("                color:#E5E5E5;\n");
      out.write("                text-transform:capitalize;\n");
      out.write("                font-size:14px;\n");
      out.write("                left:-42px;\n");
      out.write("                top:9px;\n");
      out.write("            }\n");
      out.write("            .fourthinput{\n");
      out.write("                position:relative;\n");
      out.write("                left:207px;\n");
      out.write("                top:-25px;\n");
      out.write("                line-height:40px;\n");
      out.write("                border-radius:6px;\n");
      out.write("                padding:0 22px;\n");
      out.write("                font-size:16px;\n");
      out.write("                color:#555;\n");
      out.write("            }\n");
      out.write("            .fourthlabel{\n");
      out.write("                position:relative;\n");
      out.write("                color:#E5E5E5;\n");
      out.write("                text-transform:capitalize;\n");
      out.write("                font-size:14px;\n");
      out.write("                left:-32px;\n");
      out.write("                top:9px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .email{\n");
      out.write("                position: relative;\n");
      out.write("                left:200px;\n");
      out.write("                top:-37px;\n");
      out.write("                line-height: 40px;\n");
      out.write("                width:480px;\n");
      out.write("                border-radius: 6px;\n");
      out.write("                padding: 0 22px;\n");
      out.write("                font-size: 16px;\n");
      out.write("                color: #555;\n");
      out.write("            }\n");
      out.write("            .code{\n");
      out.write("                position:relative;\n");
      out.write("                left:200px;\n");
      out.write("                top:-37px;\n");
      out.write("                line-height: 40px;\n");
      out.write("                width:95px;\n");
      out.write("                border-radius: 6px;\n");
      out.write("                padding: 0 22px;\n");
      out.write("                font-size: 16px;\n");
      out.write("                color: #555;\n");
      out.write("            }\n");
      out.write("            .number{\n");
      out.write("                position:relative;\n");
      out.write("                left:200px;\n");
      out.write("                top:-37px;\n");
      out.write("                line-height: 40px;\n");
      out.write("                width:255px;\n");
      out.write("                border-radius: 6px;\n");
      out.write("                padding: 0 22px;\n");
      out.write("                font-size: 16px;\n");
      out.write("                color: #555;\n");
      out.write("            }\n");
      out.write("            .area-code{\n");
      out.write("                position:relative;\n");
      out.write("                color:#E5E5E5;\n");
      out.write("                text-transform:capitalize;\n");
      out.write("                font-size:16px;\n");
      out.write("                left:54px;\n");
      out.write("                top:-4px;\n");
      out.write("            }\n");
      out.write("            .phone-number{\n");
      out.write("                position:relative;\n");
      out.write("                color:#E5E5E5;\n");
      out.write("                text-transform:capitalize;\n");
      out.write("                font-size:16px;\n");
      out.write("                left:-100px;\n");
      out.write("                top:-2px;\n");
      out.write("            }\n");
      out.write("            .option{\n");
      out.write("                position:relative;\n");
      out.write("                left:200px;\n");
      out.write("                top:-37px;\n");
      out.write("                line-height: 40px;\n");
      out.write("                width:532px;\n");
      out.write("                height:40px;\n");
      out.write("                border-radius: 6px;\n");
      out.write("                padding: 0 22px;\n");
      out.write("                font-size: 16px;\n");
      out.write("                color: #555;\n");
      out.write("                outline:none;\n");
      out.write("                overflow:hidden;\n");
      out.write("            } I\n");
      out.write("            .option option{\n");
      out.write("                font-size:20px;\n");
      out.write("            }\n");
      out.write("            #coustomer{\n");
      out.write("                margin-left:25px;\n");
      out.write("                color:white;\n");
      out.write("                font-size:18px;\n");
      out.write("            }\n");
      out.write("            .radio{\n");
      out.write("\n");
      out.write("                padding-right:70px;\n");
      out.write("                font-size:20px;\n");
      out.write("                margin-left:25px;\n");
      out.write("                margin-top:15px;\n");
      out.write("                color:white;\n");
      out.write("            }\n");
      out.write("            .radio input{\n");
      out.write("                width:20px;\n");
      out.write("                height:20px;\n");
      out.write("                border-radius:50%;\n");
      out.write("                cursor:pointer;\n");
      out.write("                outline:none; I\n");
      out.write("            }\n");
      out.write("            button{\n");
      out.write("                background-color:#3BAF9F;\n");
      out.write("                display:block;\n");
      out.write("                margin:20px 0px 0px 20px;\n");
      out.write("                text-align:center;\n");
      out.write("                border-radius:12px;\n");
      out.write("                border: 2px solid #366473;\n");
      out.write("                padding:14px 110px;\n");
      out.write("                outline:none;\n");
      out.write("                color:white;\n");
      out.write("                cursor:pointer;\n");
      out.write("                transition:0.25px;\n");
      out.write("            }\n");
      out.write("            button:hover{\n");
      out.write("                background-color:#5390F5;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"regform\"><h1>Your Details... </h1></div>\n");
      out.write("        <div class=\"mane\">\n");
      out.write("            <form>\n");
      out.write("                <h2 class=\"name\">Username</h2>\n");
      out.write("                <label class=\"uname\"> shikha</label><br>\n");
      out.write("\n");
      out.write("                <h2 class=\"name\">Name</h2>\n");
      out.write("                <label class=\"firstname\"></label><br>\n");
      out.write("\n");
      out.write("                <label class=\"lastname\"></label>\n");
      out.write("\n");
      out.write("                <h2 class=\"name\">Country</h2>\n");
      out.write("                <label class=\"country\"></label>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <h2 class=\"name\">Address</h2>\n");
      out.write("                <label class=\"firstinput\"></label>\n");
      out.write("\n");
      out.write("                <label class=\"secondinput\"></label>\n");
      out.write("\n");
      out.write("                <label class=\"thirdinput\"></label>\n");
      out.write("\n");
      out.write("                <label class=\"fourthinput\"></label>\n");
      out.write("\n");
      out.write("                <h2 class=\"name\">Gender</h2>\n");
      out.write("                <label class=\"gender\"></label>\n");
      out.write("\n");
      out.write("                <h2 class=\"name\">Email</h2>\n");
      out.write("                <label class=\"email\"></label>\n");
      out.write("\n");
      out.write("                <h2 class=\"name\"> Phone</h2>\n");
      out.write("                <label class=\"code\"></label>\n");
      out.write("\n");
      out.write("                <label class=\"number\"></label>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <h2 class=\"name\"> ID type</h2>\n");
      out.write("                <label class=\"option\"></label>\n");
      out.write("\n");
      out.write("                <button type=\"submit\">back</button>\n");
      out.write("                <button type=\"submit\">update</button>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
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