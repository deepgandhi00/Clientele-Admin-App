package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class wallet_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_query_var_dataSource;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_query_var_dataSource = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_sql_query_var_dataSource.release();
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

      out.write("    ");
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
      out.write("           <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\n");
      out.write("           \n");
      out.write("        <script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.dataTables.js\"></script>\n");
      out.write("        <script src=\"js/dataTables.bootstrap.min.js\"></script>\n");
      out.write("        \n");
      out.write("      \n");
      out.write("</head>\n");
      out.write("<style>\n");
      out.write(".image-upload > input\n");
      out.write("{\n");
      out.write("    display: none;\n");
      out.write("}\n");
      out.write("div.image-upload label img{\n");
      out.write("\tcursor:pointer;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<body onload=\"viewdata()\">\n");
      out.write("    <button class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#addModal\">ADD DATA</button>\n");
      out.write(" \n");
      out.write("\n");
      out.write("    \n");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("<!--     Modal -->\n");
      out.write("        <div class=\"modal fade\" id=\"addModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"addModalLabel\" aria-hidden=\"true\">\n");
      out.write("          <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("              <div class=\"modal-header\">\n");
      out.write("                <h5 class=\"modal-title\" id=\"addModalLabel\">WALLET DETAILS</h5>\n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                  <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                </button>\n");
      out.write("              </div>\n");
      out.write("              <form action=\"images_upload.jsp\" id=\"fileup\" enctype=\"multipart/form-data\" method=\"post\">\n");
      out.write("                   <div class=\"image-upload\">\n");
      out.write("                       \n");
      out.write("                            <label for=\"logo\">LOGO<br>\n");
      out.write("                            <img id=\"image_upload_preview\" src=\"images/add_image.png\" width=\"250\" height=\"250\" />\n");
      out.write("                           \n");
      out.write("                            </label>\n");
      out.write("                       <input id=\"logo\" type=\"file\" name=\"file-input\"  onchange=\"filepreview(this);\"/><br>\n");
      out.write("                       \n");
      out.write("                    </div> \n");
      out.write("                </form>\n");
      out.write("              <div class=\"modal-body\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"name\">NAME</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" id=\"name\" placeholder=\"name\">\n");
      out.write("                    </div>\n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("            </div>\n");
      out.write("                    \n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                      <label for=\"mode\">MODE</label>\n");
      out.write("                                    ");
      if (_jspx_meth_sql_query_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    <select id=\"mode\">\n");
      out.write("                                           ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                        </select>\n");
      out.write("                    </div>\n");
      out.write("            \n");
      out.write("              <div class=\"modal-footer\">\n");
      out.write("                <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">DISMISS</button>\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary\" onclick=\"fileupload()\">INSERT</button>\n");
      out.write("             </form>\n");
      out.write("            </div>\n");
      out.write("                </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("    <table class=\"table table-bordered table-hover\"  id=\"mytable\">\n");
      out.write("        <thead>\n");
      out.write("            <tr>    \n");
      out.write("                <th>NAME</th>\n");
      out.write("                <th>LOGO</th>\n");
      out.write("                <th>MODE</th>\n");
      out.write("                <th>action</th>\n");
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
      out.write("            var logo=image_name;\n");
      out.write("            var mode=$('#mode').val();\n");
      out.write("            \n");
      out.write("            $.ajax({\n");
      out.write("               type: \"GET\",\n");
      out.write("               url: \"ajax_edit_button.jsp\",\n");
      out.write("               data: \"query=insert into wallet_details(wallet_name,wallet_logo,payment_mode_id) values('\"+name+\"','\"+logo+\"','\"+mode+\"')\",\n");
      out.write("               success: function (data) {\n");
      out.write("                   viewdata();\n");
      out.write("                   $(\"#addModal .close\").click()\n");
      out.write("                   $('.modal-backdrop').hide();\n");
      out.write("                   $('#image_upload_preview').attr('src','images/add_image.png');\n");
      out.write("                   $('#name').val(\"\");\n");
      out.write("                   \n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        function viewdata(){\n");
      out.write("            $.ajax({\n");
      out.write("               type: \"GET\",\n");
      out.write("               url: \"wallet_select_ajax.jsp\",\n");
      out.write("               data: \"\",\n");
      out.write("               success: function (data) {\n");
      out.write("                        $('tbody').html(data);\n");
      out.write("                        $('#mytable').dataTable();\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        function updateData(image_name,updateid){\n");
      out.write("            var id=updateid;\n");
      out.write("            var name=$('#name-'+id).val();\n");
      out.write("            var logo=image_name;\n");
      out.write("            var mode=$('#mode-'+id).val();\n");
      out.write("            \n");
      out.write("            $.ajax({\n");
      out.write("               type: \"GET\",\n");
      out.write("               url: \"ajax_edit_button.jsp\",\n");
      out.write("               data: \"query=update wallet_details set wallet_name='\"+name+\"',wallet_logo='\"+logo+\"',payment_mode_id='\"+mode+\"' where wallet_id=\"+id+\"\",\n");
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
      out.write("               url: \"ajax_edit_button.jsp\",\n");
      out.write("               data: \"query=delete from wallet_details where wallet_id=\"+id+\"\",\n");
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
      out.write("                    $('#logo-'+editp).attr('src',e.target.result);\n");
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
      out.write("                        alert( \"success\"+saveData);\n");
      out.write("                        saveData(data);\n");
      out.write("                    },\n");
      out.write("                    error: function(data) {\n");
      out.write("                        alert( \"error\"+data);\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function updatefileupload(updateid)\n");
      out.write("            {\n");
      out.write("                alert();\n");
      out.write("                var img1=$('#logoupdate').attr('src');\n");
      out.write("                alert(img1);\n");
      out.write("                var img2=$('#logo-'+updateid).attr('src');\n");
      out.write("                alert(img2);\n");
      out.write("                if(img1===img2)\n");
      out.write("                {\n");
      out.write("                    img1=img1.split('/').pop();\n");
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
      out.write("                        alert(\"errorva\");\n");
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
    _jspx_th_sql_setDataSource_0.setUrl("jdbc:mysql://localhost:3306/clientele");
    _jspx_th_sql_setDataSource_0.setUser("root");
    _jspx_th_sql_setDataSource_0.setPassword("");
    int _jspx_eval_sql_setDataSource_0 = _jspx_th_sql_setDataSource_0.doStartTag();
    if (_jspx_th_sql_setDataSource_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
      return true;
    }
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
    return false;
  }

  private boolean _jspx_meth_sql_query_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_0 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_0.setParent(null);
    _jspx_th_sql_query_0.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_query_0.setVar("mode");
    int[] _jspx_push_body_count_sql_query_0 = new int[] { 0 };
    try {
      int _jspx_eval_sql_query_0 = _jspx_th_sql_query_0.doStartTag();
      if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.pushBody();
          _jspx_push_body_count_sql_query_0[0]++;
          _jspx_th_sql_query_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
          _jspx_th_sql_query_0.doInitBody();
        }
        do {
          out.write("\n");
          out.write("                                       select payment_mode_id,mode from payment_mode\n");
          out.write("                                    ");
          int evalDoAfterBody = _jspx_th_sql_query_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
          out = _jspx_page_context.popBody();
          _jspx_push_body_count_sql_query_0[0]--;
      }
      if (_jspx_th_sql_query_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_query_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_query_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_query_0.doFinally();
      _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("row1");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mode.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                              <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${row1.payment_mode_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${row1.mode}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                                          ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
