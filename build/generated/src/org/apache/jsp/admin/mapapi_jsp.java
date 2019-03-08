package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mapapi_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<body>\n");
      out.write("<div class=\"field_wrapper\">\n");
      out.write("    <div>\n");
      out.write("        <input type=\"text\" name=\"field_name[]\" value=\"\"/>\n");
      out.write("        <a href=\"javascript:void(0);\" class=\"add_button\" title=\"Add field\"><img src=\"add-icon.png\"/></a>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("    <script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("    var maxField = 10; //Input fields increment limitation\n");
      out.write("    var addButton = $('.add_button'); //Add button selector\n");
      out.write("    var wrapper = $('.field_wrapper'); //Input field wrapper\n");
      out.write("    var fieldHTML = '<div><input type=\"text\" name=\"field_name[]\" value=\"\"/><a href=\"javascript:void(0);\" class=\"remove_button\" title=\"Remove field\"><img src=\"remove-icon.png\"/></a></div>'; //New input field html \n");
      out.write("    var x = 1; //Initial field counter is 1\n");
      out.write("    $(addButton).click(function(){ //Once add button is clicked\n");
      out.write("        if(x < maxField){ //Check maximum number of input fields\n");
      out.write("            x++; //Increment field counter\n");
      out.write("            $(wrapper).append(fieldHTML); // Add field html\n");
      out.write("        }\n");
      out.write("    });\n");
      out.write("    $(wrapper).on('click', '.remove_button', function(e){ //Once remove button is clicked\n");
      out.write("        e.preventDefault();\n");
      out.write("        $(this).parent('div').remove(); //Remove field html\n");
      out.write("        x--; //Decrement field counter\n");
      out.write("    });\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("</body>\n");
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
