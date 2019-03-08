package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class uploadd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String fn;
             byte dataBytes[];
             int startPos;
                int endPos;
                int formDataLength;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_redirect_url;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_param_value_name_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_redirect_url = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_param_value_name_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_redirect_url.release();
    _jspx_tagPool_c_param_value_name_nobody.release();
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
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8388608, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("       <body>\n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            String saveFile = "";
            String contentType = request.getContentType();
            if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
                DataInputStream in = new DataInputStream(request.getInputStream());

                formDataLength = request.getContentLength();

                dataBytes = new byte[formDataLength];

                int byteRead = 0;

                int totalBytesRead = 0;

                while (totalBytesRead < formDataLength) {

                    byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                    totalBytesRead += byteRead;
                }

                /*String sb=new String(dataBytes);
                 out.print(sb);*/
                String filee = new String(dataBytes);
               // out.print(filee);
                saveFile = filee.substring(filee.indexOf("filename=\"") + 10);

                saveFile = saveFile.substring(0, saveFile.indexOf("\n"));

                saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
                int lastIndex = contentType.lastIndexOf("=");

                String boundary = contentType.substring(lastIndex + 1, contentType.length());

                out.print("<br><br>" + boundary);

                int pos;

                pos = filee.indexOf("filename=\"");
                pos = filee.indexOf("\n", pos) + 1;
                pos = filee.indexOf("\n", pos) + 1;
                pos = filee.indexOf("\n", pos) + 1;

                int boundaryLocation = filee.indexOf(boundary, pos) - 4;
                startPos = ((filee.substring(0, pos)).getBytes()).length;
                endPos = ((filee.substring(0, boundaryLocation)).getBytes()).length;

                //saveFile = "\\upload\\" + saveFile;
                fn = saveFile;
  }
            try {
                String path = "F:\\clientele_merge\\build\\web\\admin";
                saveFile = path + "\\images\\aa.jpg";

                File ff = new File(saveFile);
                FileOutputStream fileOut = new FileOutputStream(ff);
                fileOut.write(dataBytes, startPos, (endPos - startPos));
                fileOut.flush();
                fileOut.close();
//         
                // if(session.getAttribute("url")!=null)
                //String path=session.getAttribute(url).toString();
                //   response.sendRedirect(session.getAttribute("url").toString());
            } catch (Exception e) {
                out.print(e);

            }
//            response.sendRedirect("localhost:8080/testupload.jsp?file="+saveFile);
//            response.sendRedirect(request.getHeader("referer")+"?file="+saveFile);
//out.print(request.getHeader("referer")+"?file="+fn);
            
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("            ");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            ");
      //  c:redirect
      org.apache.taglibs.standard.tag.rt.core.RedirectTag _jspx_th_c_redirect_0 = (org.apache.taglibs.standard.tag.rt.core.RedirectTag) _jspx_tagPool_c_redirect_url.get(org.apache.taglibs.standard.tag.rt.core.RedirectTag.class);
      _jspx_th_c_redirect_0.setPageContext(_jspx_page_context);
      _jspx_th_c_redirect_0.setParent(null);
      _jspx_th_c_redirect_0.setUrl(request.getHeader("referer"));
      int _jspx_eval_c_redirect_0 = _jspx_th_c_redirect_0.doStartTag();
      if (_jspx_eval_c_redirect_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_c_redirect_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.pushBody();
          _jspx_th_c_redirect_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
          _jspx_th_c_redirect_0.doInitBody();
        }
        do {
          out.write("\n");
          out.write("                ");
          //  c:param
          org.apache.taglibs.standard.tag.rt.core.ParamTag _jspx_th_c_param_0 = (org.apache.taglibs.standard.tag.rt.core.ParamTag) _jspx_tagPool_c_param_value_name_nobody.get(org.apache.taglibs.standard.tag.rt.core.ParamTag.class);
          _jspx_th_c_param_0.setPageContext(_jspx_page_context);
          _jspx_th_c_param_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_redirect_0);
          _jspx_th_c_param_0.setName("filee");
          _jspx_th_c_param_0.setValue(fn);
          int _jspx_eval_c_param_0 = _jspx_th_c_param_0.doStartTag();
          if (_jspx_th_c_param_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            _jspx_tagPool_c_param_value_name_nobody.reuse(_jspx_th_c_param_0);
            return;
          }
          _jspx_tagPool_c_param_value_name_nobody.reuse(_jspx_th_c_param_0);
          out.write("\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_redirect_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_c_redirect_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
          out = _jspx_page_context.popBody();
      }
      if (_jspx_th_c_redirect_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _jspx_tagPool_c_redirect_url.reuse(_jspx_th_c_redirect_0);
        return;
      }
      _jspx_tagPool_c_redirect_url.reuse(_jspx_th_c_redirect_0);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("    \n");
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
