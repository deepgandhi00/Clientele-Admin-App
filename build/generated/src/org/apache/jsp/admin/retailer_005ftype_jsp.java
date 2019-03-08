package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class retailer_005ftype_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title></title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.css\"/>\n");
      out.write("        <script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body onload=\"viewdata()\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\" col-xs-12 c\" id=\"c\"  style=\"padding:0px; margin:0px;width:80%; float:right;background-color: white;\">\n");
      out.write("        <button class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#addModal\">ADD DATA</button>\n");
      out.write("        \n");
      out.write("        <!-- Modal add new data-->\n");
      out.write("        <div class=\"modal fade\" id=\"addModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"addModalLabel\" aria-hidden=\"true\">\n");
      out.write("          <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("              <div class=\"modal-header\">\n");
      out.write("                <h5 class=\"modal-title\" id=\"addModalLabel\">ADD DATA</h5>\n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                  <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                </button>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"modal-body\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                      <label for=\"type\">TYPE</label>\n");
      out.write("                      <input type=\"text\" class=\"form-control\" id=\"type\" placeholder=\"type\">\n");
      out.write("                    </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"modal-footer\">\n");
      out.write("                <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">DISMISS</button>\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary\" onclick=\"saveData()\">INSERT</button>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!--data display table-->\n");
      out.write("    <table class=\"table table-bordered table-hover\" style=\"margin-top: 30px;\">\n");
      out.write("        <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>TYPE</th>\n");
      out.write("                <th>ACTION</th>\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("            \n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("        function saveData(){\n");
      out.write("            var type=$('#type').val();\n");
      out.write("            \n");
      out.write("            $.ajax({\n");
      out.write("               type: \"GET\",\n");
      out.write("               url: \"ajax_edit_button.jsp\",\n");
      out.write("               data: \"query=insert into retailer_type(type) values('\"+type+\"')\",\n");
      out.write("               success: function (data) {\n");
      out.write("                        viewdata();\n");
      out.write("                        $('#addModal').modal('hide');\n");
      out.write("                        $('.modal-backdrop').hide();\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        function viewdata(){\n");
      out.write("            $.ajax({\n");
      out.write("               type: \"GET\",\n");
      out.write("               url: \"retailer_type_ajax.jsp\",\n");
      out.write("               data: \"\",\n");
      out.write("               success: function (data) {\n");
      out.write("                        $('tbody').html(data);\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        function updateData(updateid){\n");
      out.write("            var id=updateid;\n");
      out.write("            var type=$('#type-'+updateid).val(); \n");
      out.write("            alert(type);\n");
      out.write("            $.ajax({\n");
      out.write("               type: \"GET\",\n");
      out.write("               url: \"ajax_edit_button.jsp\",\n");
      out.write("               data: \"query=update retailer_type set type='\"+type+\"' where retailer_type_id=\"+id+\"\",\n");
      out.write("               success: function (data) {\n");
      out.write("                        $('#updateModal-'+updateid).modal('hide');\n");
      out.write("                        $('.modal-backdrop').hide();\n");
      out.write("                        viewdata();\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        function deleteData(deleteid){\n");
      out.write("            var id=deleteid;\n");
      out.write("            $.ajax({\n");
      out.write("               type: \"GET\",\n");
      out.write("               url: \"ajax_edit_button.jsp\",\n");
      out.write("               data: \"query=delete from retailer_type where retailer_type_id=\"+id+\"\",\n");
      out.write("               success: function (data) {\n");
      out.write("                        viewdata();\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
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
