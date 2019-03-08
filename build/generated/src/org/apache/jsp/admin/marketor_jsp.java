package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class marketor_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.release();
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
      out.write("<head>\n");
      out.write("<title></title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.css\"/>\n");
      out.write("        <script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        \n");
      out.write("</head>\n");
      out.write("<style>\n");
      out.write(".image-upload > input\n");
      out.write("{\n");
      out.write("    display: none;\n");
      out.write("}\n");
      out.write("div.image-upload label img{\n");
      out.write("\tcursor:pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<body onload=\"viewdata()\">\n");
      out.write(" ");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <button class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#addModal\">ADD MARKETOR</button>\n");
      out.write("    \n");
      out.write("    <!-- Modal -->\n");
      out.write("        <div class=\"modal fade\" id=\"addModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"addModalLabel\" aria-hidden=\"true\">\n");
      out.write("          <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("              <div class=\"modal-header\">\n");
      out.write("                <h5 class=\"modal-title\" id=\"addModalLabel\">MARKETOR</h5>\n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                  <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                </button>\n");
      out.write("              </div>\n");
      out.write("              \n");
      out.write("              <div class=\"modal-body\">\n");
      out.write("                  <form action=\"images_upload.jsp\" id=\"fileup\" enctype=\"multipart/form-data\" method=\"post\">\n");
      out.write("                   <div class=\"image-upload\">\n");
      out.write("                       \n");
      out.write("                            <label for=\"photo\">MARKETOR PHOTO<br>\n");
      out.write("                            <img id=\"image_upload_preview\" src=\"images/add_image.png\" width=\"250\" height=\"250\"/>\n");
      out.write("                           \n");
      out.write("                            </label>\n");
      out.write("                          <input id=\"photo\" type=\"file\" name=\"file-input\" onchange=\"filepreview(this);\"/><br>\n");
      out.write("                       \n");
      out.write("                    </div> \n");
      out.write("                </form>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"name\">NAME</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" id=\"name\" placeholder=\"name\">\n");
      out.write("                    </div>     \n");
      out.write("            </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"email\">EMAIL</label>\n");
      out.write("                        <input type=\"email\" class=\"form-control\" id=\"number\" placeholder=\"email\">\n");
      out.write("                    </div>  \n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"number\">CONTACT</label>\n");
      out.write("                        <input type=\"email\" class=\"form-control\" id=\"email\" placeholder=\"number\">\n");
      out.write("                    </div>     \n");
      out.write("                 <div class=\"modal-footer\">\n");
      out.write("                <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">DISMISS</button>\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary\" onclick=\"fileupload()\">INSERT</button>\n");
      out.write("             </form>\n");
      out.write("            </div>\n");
      out.write("                </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("    <table class=\"table table-bordered table-hover\" style=\"margin-top: 30px;\">\n");
      out.write("        <thead>\n");
      out.write("            <tr>    \n");
      out.write("                <th>PHOTO</th>\n");
      out.write("                <th>NAME</th>\n");
      out.write("                <th>EMAIL</th>\n");
      out.write("                <th>NUMBER</th>\n");
      out.write("             \n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("            \n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("    \n");
      out.write("    <script>\n");
      out.write("        function saveData(image_name){\n");
      out.write("           var name=$('#name').val();\n");
      out.write("           var photo=image_name;\n");
      out.write("           var number=$('#number').val();\n");
      out.write("           var email=$('#email').val();\n");
      out.write("           alert();\n");
      out.write("            alert(\"name=\"+name+\"&photo=\"+photo+\"&number=\"+number+\"&email=\"+email); \n");
      out.write("            $.ajax({\n");
      out.write("               type: \"GET\",\n");
      out.write("               url: \"marketor_insert_ajax.jsp\",\n");
      out.write("               data: \"name=\"+name+\"&photo=\"+photo+\"&number=\"+number+\"&email=\"+email,\n");
      out.write("               success: function (data) {\n");
      out.write("                   viewdata();\n");
      out.write("                         $('#addModal').modal('hide');\n");
      out.write("                         $('.modal-backdrop').hide();                    \n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        function viewdata(){\n");
      out.write("            $.ajax({\n");
      out.write("               type: \"GET\",\n");
      out.write("               url: \"marketor_select_ajax.jsp\",\n");
      out.write("               data: \"\",\n");
      out.write("               success: function (data) {\n");
      out.write("                        $('tbody').html(data);\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        function updateData(image_name,updateid){\n");
      out.write("            var id=updateid;\n");
      out.write("            var name=$('#name-'+id).val();\n");
      out.write("            var photo=image_name;\n");
      out.write("            var number=$('#number-'+id).val();\n");
      out.write("            var email=$('#email-'+id).val();\n");
      out.write("            \n");
      out.write("            $.ajax({\n");
      out.write("               type: \"GET\",\n");
      out.write("               url: \"marketor_edit_ajax.jsp\",\n");
      out.write("               data: \"name=\"+name+\"&photo=\"+photo+\"&id=\"+id+\"&number=\"+number+\"&email=\"+email,\n");
      out.write("               success: function (data) {\n");
      out.write("                   $('#updateModal-'+updateid).modal('hide');\n");
      out.write("                   $('.modal-backdrop').hide();\n");
      out.write("                        viewdata();\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        function deleteData(deleteid){\n");
      out.write("            var id=deleteid;\n");
      out.write("            $.ajax({\n");
      out.write("               type: \"GET\",\n");
      out.write("               url: \"marketor_delete_ajax.jsp\",\n");
      out.write("               data: \"&id=\"+id,\n");
      out.write("               success: function (data) {\n");
      out.write("                        viewdata();\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("  \n");
      out.write("            function filepreview(objFileInput){\n");
      out.write("            if (objFileInput.files[0]) {\n");
      out.write("                var filename=objFileInput.files[0];\n");
      out.write("                var filetype=filename.type;            \n");
      out.write("                var exeten=filetype.split('/').pop().toLowerCase();\n");
      out.write("                var allowedexe=new Array(\"jpeg\",\"jpg\",\"png\",\"gif\");\n");
      out.write("                if($.inArray(exeten,allowedexe)===-1){\n");
      out.write("                    alert(\"upload allowed file types only\");\n");
      out.write("                }\n");
      out.write("                else{\n");
      out.write("                var fileReader = new FileReader();\n");
      out.write("                fileReader.onload = function (e) {                                 \n");
      out.write("                    $('#image_upload_preview').attr('src',e.target.result);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("                fileReader.readAsDataURL(objFileInput.files[0]);\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        function editfilepreview(objFileInput,editp){\n");
      out.write("            if (objFileInput.files[0]) {\n");
      out.write("                var filename=objFileInput.files[0];\n");
      out.write("                var filetype=filename.type;             \n");
      out.write("                var exeten=filetype.split('/').pop().toLowerCase();         \n");
      out.write("                var allowedexe=new Array(\"jpeg\",\"jpg\",\"png\",\"gif\");\n");
      out.write("                if($.inArray(exeten,allowedexe)===-1){\n");
      out.write("                    alert(\"upload allowed file types only\");\n");
      out.write("                }\n");
      out.write("                else{\n");
      out.write("                var fileReader = new FileReader();\n");
      out.write("                fileReader.onload = function (e) {                                   \n");
      out.write("                    $('#photo-'+editp).attr('src',e.target.result);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("                fileReader.readAsDataURL(objFileInput.files[0]);\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        function fileupload()\n");
      out.write("            {\n");
      out.write("                var f=document.getElementById('fileup');\n");
      out.write("                var formData=new FormData(f);\n");
      out.write("                $.ajax({\n");
      out.write("                    type: \"POST\",\n");
      out.write("                    url: 'images_upload.jsp',\n");
      out.write("                    data: formData,\n");
      out.write("                    cache: false,\n");
      out.write("                    contentType: false,\n");
      out.write("                    processData: false,\n");
      out.write("                    success: function(data) {\n");
      out.write("                        data=data.trim();\n");
      out.write("                        alert(\"success\"+data);\n");
      out.write("                        saveData(data);\n");
      out.write("                    },\n");
      out.write("                    error: function(data) {\n");
      out.write("                        alert(\"hello\");\n");
      out.write("                        alert( \"error\"+data);\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function updatefileupload(updateid)\n");
      out.write("            {\n");
      out.write("                alert();\n");
      out.write("                var img1=$('#photoupdate').attr('src');\n");
      out.write("                alert(img1);\n");
      out.write("                var img2=$('#photo-'+updateid).attr('src');\n");
      out.write("                alert(img2);\n");
      out.write("                if(img1===img2)\n");
      out.write("                {\n");
      out.write("                    img1=img1.trim('/').pop();\n");
      out.write("                   updateData(img1,updateid); \n");
      out.write("                }\n");
      out.write("                else\n");
      out.write("                {\n");
      out.write("                var f=document.getElementById('fileup-'+updateid);\n");
      out.write("                var formData=new FormData(f);\n");
      out.write("                $.ajax({\n");
      out.write("                    type: \"POST\",\n");
      out.write("                    url: 'images_upload.jsp',\n");
      out.write("                    data: formData,\n");
      out.write("                    cache: false,\n");
      out.write("                    contentType: false,\n");
      out.write("                    processData: false,\n");
      out.write("                    success: function(data) {\n");
      out.write("                        data=data.trim();\n");
      out.write("                        alert( \"success\"+data);\n");
      out.write("                        updateData(data,updateid);\n");
      out.write("                    },\n");
      out.write("                    error: function(data) {\n");
      out.write("                        alert( \"error\"+data);\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("</html>");
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

  private boolean _jspx_meth_sql_setDataSource_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:setDataSource
    org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag _jspx_th_sql_setDataSource_0 = (org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag) _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.get(org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag.class);
    _jspx_th_sql_setDataSource_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_setDataSource_0.setParent(null);
    _jspx_th_sql_setDataSource_0.setVar("ds");
    _jspx_th_sql_setDataSource_0.setDriver("com.mysql.jdbc.Driver");
    _jspx_th_sql_setDataSource_0.setUrl((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.servletContext.getInitParameter('url')}", java.lang.String.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_setDataSource_0.setUser((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.servletContext.getInitParameter('user')}", java.lang.String.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_setDataSource_0.setPassword((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.servletContext.getInitParameter('password')}", java.lang.String.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_sql_setDataSource_0 = _jspx_th_sql_setDataSource_0.doStartTag();
    if (_jspx_th_sql_setDataSource_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
      return true;
    }
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
    return false;
  }
}
