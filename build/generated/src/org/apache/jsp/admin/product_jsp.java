package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>  \n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.css\"/>\n");
      out.write("            \n");
      out.write("        <script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        \n");
      out.write("<style>\n");
      out.write(".image-upload > input\n");
      out.write("{\n");
      out.write("    display: none;\n");
      out.write("}\n");
      out.write("div.image-upload label img{\n");
      out.write("\tcursor:pointer;\n");
      out.write("}\n");
      out.write("div.image-upload label span{\n");
      out.write("\tcursor:pointer;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"viewdata()\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\" col-xs-12 c\" id=\"c\"  style=\"padding:0px; margin:0px;width:80%; float:right;background-color: white;\">\n");
      out.write("        <button class=\"cstbtnprimary\" data-toggle=\"modal\" data-target=\"#addModal\">ADD DATA</button>\n");
      out.write("      ");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        \n");
      out.write("         <!-- Modal add new data-->\n");
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
      out.write("                  <form id=\"fileup\" method=\"post\" enctype=\"multipart/form-data\" action=\"images_upload.jsp\">\n");
      out.write("                      <div class=\"image-upload\">\n");
      out.write("                        <label for=\"file-input\">\n");
      out.write("                            <img id=\"image_upload_preview\" src=\"images/user.jpg\" width=\"250\" height=\"250\"/>\n");
      out.write("                            </label>\n");
      out.write("                          <input id=\"file-input\" type=\"file\" name=\"file-input\" onchange=\"filepreview(this);\" /><br> \n");
      out.write("                    </div>\n");
      out.write("                  </form>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"name\">NAME</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" id=\"name\" aria-describedby=\"emailHelp\" placeholder=\"name\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                      <label for=\"ing\">INGREDIENTS</label>\n");
      out.write("                      <textarea class=\"form-control\" id=\"ing\" placeholder=\"ing\"></textarea>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                      <label for=\"desc\">DESCRIPTION</label>\n");
      out.write("                      <textarea class=\"form-control\" id=\"desc\" placeholder=\"desc\"></textarea>\n");
      out.write("                    </div>\n");
      out.write("                  <div>\n");
      out.write("                      <p><b>SELECT</b></p>\n");
      out.write("                      <input type=\"radio\" name=\"type_select\" value=\"qty\" style=\"margin: 10px;\">Quantity(in ml)\n");
      out.write("                      <input type=\"radio\" name=\"type_select\" value=\"wt\" style=\"margin: 10px;\">Weight(in gram)\n");
      out.write("                  </div>\n");
      out.write("                  <div>\n");
      out.write("                      <table>\n");
      out.write("                          <thead>\n");
      out.write("                              <tr>\n");
      out.write("                                  <th>QTY/WT</th>\n");
      out.write("                                  <th>COST</th>\n");
      out.write("                                  <th></th>\n");
      out.write("                              </tr>\n");
      out.write("                          </thead>\n");
      out.write("                          <tbody id=\"add_tbody\">\n");
      out.write("                              <tr>\n");
      out.write("                                  <td><input type=\"text\" id=\"qtywt0\" placeholder=\"qty/wt\"/></td>\n");
      out.write("                                  <td><input type=\"text\" id=\"cost0\" accept=\"\"placeholder=\"cost\"/></td>\n");
      out.write("                                  <td><img src=\"images/add_image.png\" width=\"20\" height=\"20\" onclick=\"add_row()\"/></td>\n");
      out.write("                              </tr>\n");
      out.write("                          </tbody>\n");
      out.write("                      </table>\n");
      out.write("                  </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                      <label for=\"htu\">HOW TO USE</label>\n");
      out.write("                      <textarea class=\"form-control\" id=\"htu\" placeholder=\"how to use\"></textarea>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                      <label for=\"subcategory\">SUBCATEGORY</label>\n");
      out.write("                      ");
      if (_jspx_meth_sql_query_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                         <select id=\"subcategory\">\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                          </select>\n");
      out.write("                    </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"modal-footer\">\n");
      out.write("                <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">DISMISS</button>\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary\" onclick=\"fileupload()\">INSERT</button>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("         \n");
      out.write("         \n");
      out.write("         <!--data display table-->\n");
      out.write("        <table class=\"table table-bordered table-hover\" style=\"margin-top: 30px;\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th>SR</th>\n");
      out.write("                    <th>IMAGE</th>\n");
      out.write("                    <th>PRODUCT NAME</th>\n");
      out.write("                    <th>SUBCATEGORY NAME</th>\n");
      out.write("                    <th>INGREDIENTS</th>\n");
      out.write("                    <th>DESCRIPTION</th>\n");
      out.write("                    <th>HOW TO USE</th>\n");
      out.write("                    <th>QUANTITY AND COST</th>\n");
      out.write("                    <th>ACTION</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody id=\"display\">\n");
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("         \n");
      out.write("         <script>\n");
      out.write("             var count=1;\n");
      out.write("             \n");
      out.write("               \n");
      out.write("                \n");
      out.write("            function add_row(){\n");
      out.write("                var fieldhtml=\"<tr><td><input type='text' id='qtywt\"+count+\"' placeholder='qty/wt'/></td><td><input type='text' id='cost\"+count+\"' placeholder='cost'/></td><td></td></tr>\";\n");
      out.write("                $('#add_tbody').append(fieldhtml);\n");
      out.write("                count=count+1;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function add_row2(product_id){\n");
      out.write("                var pid=product_id;\n");
      out.write("                alert();\n");
      out.write("                var fieldhtml1=\"<tr><td><input type='text' name='qtywt' class='qtywt-\"+pid+\"' placeholder='qty/wt'/></td><td><input type='text' class='cost-\"+pid+\"' name='cost' placeholder='cost'/></td></tr>\";\n");
      out.write("                alert();\n");
      out.write("                $('#updateqtywt-'+pid).append(fieldhtml1);\n");
      out.write("                alert();\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            //adding new data to table\n");
      out.write("                function saveData(image_name){\n");
      out.write("//                    alert();\n");
      out.write("                var checked=$(\"input[name='type_select']:checked\").val();\n");
      out.write("//                alert(checked);\n");
      out.write("                var qty=\"\";\n");
      out.write("               var cst=\"\";\n");
      out.write("                for(i=0;i<count;i++){\n");
      out.write("                    qty=qty+\"&qtywt=\"+$('#qtywt'+i).val();\n");
      out.write("                    cst=cst+\"&cost=\"+$('#cost'+i).val();\n");
      out.write("                    alert(qty);\n");
      out.write("                    alert(cst);\n");
      out.write("                }\n");
      out.write("//                alert(\"'\"+cost+\"'\");\n");
      out.write("                var name=$('#name').val();\n");
      out.write("                var ing=$('#ing').val();\n");
      out.write("                var desc=$('#desc').val();\n");
      out.write("                var htu=$('#htu').val();\n");
      out.write("                var image=image_name;\n");
      out.write("                var subcategory=$('#subcategory').val();\n");
      out.write("               \n");
      out.write("                alert(\"name=\"+name+\"&ing=\"+ing+\"&desc=\"+desc+\"&htu=\"+htu+\"&image=\"+image+\"&subcategory=\"+subcategory+\"&selected=\"+checked+\"&count=\"+count+cst+qty);\n");
      out.write("                $.ajax({\n");
      out.write("                   type: \"POST\",\n");
      out.write("                   url: \"product_add_ajax.jsp\",\n");
      out.write("                   data: \"name=\"+name+\"&ing=\"+ing+\"&desc=\"+desc+\"&htu=\"+htu+\"&image=\"+image+\"&subcategory=\"+subcategory+\"&selected=\"+checked+\"&count=\"+count+cst+qty,\n");
      out.write("                   \n");
      out.write("                   success: function (data) {\n");
      out.write("                            alert(\"data='\"+data+\"'\");\n");
      out.write("                            $('#addModal').modal('hide');\n");
      out.write("                            $('.modal-backdrop').hide();\n");
      out.write("                            location.reload();\n");
      out.write("                        }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            //viewing data from table\n");
      out.write("            function viewdata(){\n");
      out.write("            $.ajax({\n");
      out.write("               type: \"GET\",\n");
      out.write("               url: \"product_ajax.jsp\",\n");
      out.write("               data: \"\",\n");
      out.write("               success: function (data) {\n");
      out.write("                        $('#display').html(data);\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        //update data here\n");
      out.write("        function updateData(image_name,updateid,checked){\n");
      out.write("            var chkd=checked;\n");
      out.write("            var id=updateid;\n");
      out.write("            var name=$('#name-'+updateid).val();\n");
      out.write("            var ing=$('#ing-'+updateid).val();\n");
      out.write("            var htu=$('#htu-'+updateid).val();\n");
      out.write("            var subcategory=$('#subcategory-'+updateid).val();\n");
      out.write("            var image=image_name;\n");
      out.write("            var desc=$('#desc-'+updateid).val(); \n");
      out.write("            \n");
      out.write("             var qty=\"\";\n");
      out.write("             var cst=\"\";\n");
      out.write("             var count1=0;\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            $.each($('.qtywt-'+id), function() {\n");
      out.write("                qty=qty+\"&qtywt=\"+$(this).val();\n");
      out.write("            });\n");
      out.write("            \n");
      out.write("            $.each($('.cost-'+id), function() {\n");
      out.write("                cst=cst+\"&cost=\"+$(this).val();\n");
      out.write("            });\n");
      out.write("             alert(\"image=\"+image+\"&name=\"+name+\"&desc=\"+desc+\"&id=\"+id+\"&subcategory=\"+subcategory+\"&chkd=\"+chkd+\"&ing=\"+ing+\"&htu=\"+htu+cst+qty);\n");
      out.write("            $.ajax({\n");
      out.write("               type: \"POST\",\n");
      out.write("               url: \"product_edit_ajax.jsp\",\n");
      out.write("               data: \"image=\"+image+\"&name=\"+name+\"&desc=\"+desc+\"&id=\"+id+\"&subcategory=\"+subcategory+\"&chkd=\"+chkd+\"&ing=\"+ing+\"&htu=\"+htu+cst+qty,\n");
      out.write("               success: function (data) {\n");
      out.write("                        $('#updateModal-'+updateid).modal('hide');\n");
      out.write("                        $('.modal-backdrop').hide();\n");
      out.write("                        viewdata();\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        //delete data here\n");
      out.write("        function deleteData(deleteid){\n");
      out.write("            var id=deleteid;\n");
      out.write("            $.ajax({\n");
      out.write("               type: \"POST\",\n");
      out.write("               url: \"product_delete_ajax.jsp\",\n");
      out.write("               data: \"id=\"+id,\n");
      out.write("               success: function (data) {\n");
      out.write("                        viewdata();\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        function deleterow(pdid,pid){\n");
      out.write("            var id=pdid;\n");
      out.write("            var updateid=pid;\n");
      out.write("            $.ajax({\n");
      out.write("               type: \"POST\",\n");
      out.write("               url: \"product_detail_delete_ajax.jsp\",\n");
      out.write("               data: \"id=\"+id,\n");
      out.write("               success: function (data) {\n");
      out.write("                        $('#updateModal-'+updateid).modal('hide');\n");
      out.write("                        $('.modal-backdrop').hide();\n");
      out.write("                        viewdata();\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        function filepreview(objFileInput){\n");
      out.write("            alert();\n");
      out.write("            if (objFileInput.files[0]) {\n");
      out.write("                var filename=objFileInput.files[0];\n");
      out.write("                var filetype=filename.type;\n");
      out.write("                alert(filetype);\n");
      out.write("                var exeten=filetype.split('/').pop().toLowerCase();\n");
      out.write("                alert(exeten);\n");
      out.write("                var allowedexe=new Array(\"jpeg\",\"jpg\",\"png\",\"gif\");\n");
      out.write("                if($.inArray(exeten,allowedexe)===-1){\n");
      out.write("                    alert(\"upload allowed file types only\");\n");
      out.write("                }\n");
      out.write("                else{\n");
      out.write("                var fileReader = new FileReader();\n");
      out.write("                fileReader.onload = function (e) {\n");
      out.write("                    $('#image_upload_preview').attr('src',e.target.result);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("                fileReader.readAsDataURL(objFileInput.files[0]);\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        function edfilepreview(objFileInput,id){\n");
      out.write("            alert(id);\n");
      out.write("            if (objFileInput.files[0]) {\n");
      out.write("                var filename=objFileInput.files[0];\n");
      out.write("                var filetype=filename.type;\n");
      out.write("                alert(filetype);\n");
      out.write("                var exeten=filetype.split('/').pop().toLowerCase();\n");
      out.write("                alert(exeten);\n");
      out.write("                var allowedexe=new Array(\"jpeg\",\"jpg\",\"png\",\"gif\");\n");
      out.write("                if($.inArray(exeten,allowedexe)===-1){\n");
      out.write("                    alert(\"upload allowed file types only\");\n");
      out.write("                }\n");
      out.write("                else{\n");
      out.write("                var fileReader = new FileReader();\n");
      out.write("                fileReader.onload = function (e) {\n");
      out.write("                    $('#image-'+id).attr('src',e.target.result);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("                fileReader.readAsDataURL(objFileInput.files[0]);\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        function fileupload()\n");
      out.write("            {\n");
      out.write("                var f=document.getElementById('fileup');\n");
      out.write("                \n");
      out.write("//                alert();\n");
      out.write("                var formData=new FormData(f);\n");
      out.write("                alert(formData);\n");
      out.write("                $.ajax({\n");
      out.write("                    type: \"POST\",\n");
      out.write("                    url: 'images_upload.jsp',\n");
      out.write("                    data: formData,\n");
      out.write("                    cache: false,\n");
      out.write("                    contentType: false,\n");
      out.write("                    processData: false,\n");
      out.write("                    success: function(data) {\n");
      out.write("                        data=data.trim();\n");
      out.write("                        alert(data);\n");
      out.write("                        saveData(data);\n");
      out.write("                    },\n");
      out.write("                    error: function(data) {\n");
      out.write("                        alert(\"error\"+data);\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function edfileupload(updateid,checked)\n");
      out.write("            {\n");
      out.write("                var image1=$('#image_display-'+updateid).attr('src');\n");
      out.write("                var image2=$('#image-'+updateid).attr('src');\n");
      out.write("                if(image1===image2){\n");
      out.write("                    image2=image2.split('/').pop();\n");
      out.write("                    updateData(image2,updateid,checked);\n");
      out.write("                }\n");
      out.write("                else{ \n");
      out.write("                var f=document.getElementById('fileup-'+updateid);\n");
      out.write("                \n");
      out.write("//                alert();\n");
      out.write("                var formData=new FormData(f);\n");
      out.write("                alert(formData);\n");
      out.write("                $.ajax({\n");
      out.write("                    type: \"POST\",\n");
      out.write("                    url: 'images_upload.jsp',\n");
      out.write("                    data: formData,\n");
      out.write("                    cache: false,\n");
      out.write("                    contentType: false,\n");
      out.write("                    processData: false,\n");
      out.write("                    success: function(data) {\n");
      out.write("                        data=data.trim();\n");
      out.write("                        alert(data);\n");
      out.write("                        updateData(data,updateid,checked);\n");
      out.write("                    },\n");
      out.write("                    error: function(data) {\n");
      out.write("                        alert(\"error\"+data);\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("            }\n");
      out.write("         </script>\n");
      out.write("         </div>\n");
      out.write("         ");
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

  private boolean _jspx_meth_sql_query_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_0 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_0.setParent(null);
    _jspx_th_sql_query_0.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_query_0.setVar("subcategory");
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
          out.write("                         select subcategory_id,subcategory_name from subcategory\n");
          out.write("                      ");
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
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${subcategory.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${row1.subcategory_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${row1.subcategory_name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                            ");
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
