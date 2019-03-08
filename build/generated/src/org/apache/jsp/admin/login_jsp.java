package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 Connection con;
            Statement stmt;
            ResultSet rs;
        
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
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\"/>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background-color:#2d3a4b; \n");
      out.write("            }\n");
      out.write("            div.login{\n");
      out.write("                margin-top: 150px;\n");
      out.write("            }\n");
      out.write("            div.login div{\n");
      out.write("                color: white;\n");
      out.write("                font-size: 17px;\n");
      out.write("                margin-bottom: 15px;\n");
      out.write("            }\n");
      out.write("            h2{\n");
      out.write("                color: white;\n");
      out.write("                font-family: cursive;\n");
      out.write("            }\n");
      out.write("           .form-control + .glyphicon-user{\n");
      out.write("                left: 0;\n");
      out.write("                top: 5px;\n");
      out.write("                padding-left: 10px;\n");
      out.write("            }\n");
      out.write("            .form-control + .glyphicon-lock{\n");
      out.write("                left: 0;\n");
      out.write("                top: 5px;\n");
      out.write("                padding-left: 10px;\n");
      out.write("            }\n");
      out.write("            .has-left-icon{\n");
      out.write("                 padding-left: 40px !important;\n");
      out.write("                padding-right: 10px !important;\n");
      out.write("            }\n");
      out.write("            div.input-div{\n");
      out.write("                width: 300px;\n");
      out.write("            }\n");
      out.write("            input[type=submit]{\n");
      out.write("                background-color: #82b440;\n");
      out.write("                border: 0px solid #cccccc;\n");
      out.write("                width: 300px;\n");
      out.write("                color: #fff;\n");
      out.write("                line-height: 45px;\n");
      out.write("                border-radius: 8px;\n");
      out.write("            }\n");
      out.write("            input[type=email]{\n");
      out.write("                height: 45px;\n");
      out.write("                border-radius: 8px;\n");
      out.write("                color: #889aa4;\n");
      out.write("                background-color: #283443;\n");
      out.write("                border: 1px solid rgba(255,255,255,0.1);\n");
      out.write("            }\n");
      out.write("            input[type=password]{\n");
      out.write("                height: 45px;\n");
      out.write("                border-radius: 8px;\n");
      out.write("                color: #889aa4;\n");
      out.write("                background-color: #283443;\n");
      out.write("                border: 1px solid rgba(255,255,255,0.1);\n");
      out.write("            }\n");
      out.write("            a{\n");
      out.write("                text-decoration: none;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            a:hover{\n");
      out.write("                text-decoration: none;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            input[type=email]:focus{\n");
      out.write("                border: 1px solid rgba(255,255,255,0.1);\n");
      out.write("            }\n");
      out.write("            input[type=password]:focus{\n");
      out.write("                border: 1px solid rgba(255,255,255,0.1);\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        <div class=\"login\" align=\"center\">\n");
      out.write("            <h2>Clientele</h2>\n");
      out.write("            <div><b>Welcome </b>,please login</div>\n");
      out.write("            <form class=\"form-horizontal login-form\" name=\"form\" action=\"login.jsp\">\n");
      out.write("                    <div class=\"form-group has-feedback input-div\">\n");
      out.write("                        <div>\n");
      out.write("                            <input class=\"form-control has-left-icon\" id=\"email\" type=\"email\" name=\"email\" placeholder=\"Login\" required/>\n");
      out.write("                            <span class=\"glyphicon glyphicon-user form-control-feedback\" style=\"color:#889aa4;\"></span>\n");
      out.write("                         </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"form-group has-feedback input-div\">\n");
      out.write("                        <div>\n");
      out.write("                            <input class=\"form-control has-left-icon\" id=\"email\" type=\"password\" name=\"password\" placeholder=\"Password\" required/>\n");
      out.write("                            <span class=\"glyphicon glyphicon-lock form-control-feedback\" style=\"color:#889aa4;\"></span>\n");
      out.write("                         </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div>\n");
      out.write("                        <input type=\"submit\">\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            <a href=\"#\">Forget Password?</a>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <!-- java code here-->\n");
      out.write("        ");

            if(request.getParameter("email")!=null)
            {
                String email=request.getParameter("email");
                String password=request.getParameter("password");
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                    stmt=con.createStatement();
                    rs=stmt.executeQuery("select * from users where user_email='"+email+"' and user_password='"+password+"'");
                    
      out.write("<p align=\"center\" style=\"color:white;\">hi</p>");

                    if(rs.next())
                    {
                        HttpSession ses=request.getSession(true);
                        ses.setAttribute("user_email", email);
                        response.sendRedirect("index.jsp");
                    }
                    else
                    {
                        
      out.write("<p align=\"center\" style=\"color: white;\">error</p>");

                    }
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
            }
            
      out.write("\n");
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
