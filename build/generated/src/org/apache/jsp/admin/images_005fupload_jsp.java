package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Calendar;
import java.io.*;

public final class images_005fupload_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String fn;
            String filename;
        
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 4194304, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
 
            
            String saveFile = "";
            String contentType = request.getContentType();
            if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
                DataInputStream in = new DataInputStream(request.getInputStream());

                int formDataLength = request.getContentLength();

                byte dataBytes[] = new byte[formDataLength];

                int byteRead = 0;

                int totalBytesRead = 0;

                while (totalBytesRead < formDataLength) {

                    byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                    totalBytesRead += byteRead;
                }

                /*String sb=new String(dataBytes);
                 out.print(sb);*/
                String file = new String(dataBytes);
//                out.print(file);
                saveFile = file.substring(file.indexOf("filename=\"") + 10);

                saveFile = saveFile.substring(0, saveFile.indexOf("\n"));

                saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
                int lastIndex = contentType.lastIndexOf("=");

                String boundary = contentType.substring(lastIndex + 1, contentType.length());

//                out.print("<br><br>" + boundary);

                int pos;

                pos = file.indexOf("filename=\"");
                pos = file.indexOf("\n", pos) + 1;
                pos = file.indexOf("\n", pos) + 1;
                pos = file.indexOf("\n", pos) + 1;

                int boundaryLocation = file.indexOf(boundary, pos) - 4;
                int startPos = ((file.substring(0, pos)).getBytes()).length;
                int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

                //saveFile = "\\upload\\" + saveFile;
                String year = (Calendar.getInstance().get(Calendar.YEAR))+"";
                String mnth = (Calendar.getInstance().get(Calendar.MONTH))+"";
                String day = (Calendar.getInstance().get(Calendar.DAY_OF_YEAR))+"";
                String hr = (Calendar.getInstance().get(Calendar.HOUR))+"";
                String min = (Calendar.getInstance().get(Calendar.MINUTE))+"";
                String sec = (Calendar.getInstance().get(Calendar.SECOND))+"";
                String currentdate=year+mnth+day+hr+min+sec;
                fn = currentdate+saveFile;
                filename=fn;
//                String rpath=request.getRequestURI();
//                rpath=rpath.substring(0, rpath.lastIndexOf("/"));
//                out.print(rpath);
//                String path = "F:\\deep\\Clientele\\Clientele\\web\\admin";
                String path=application.getRealPath("/");
                
                saveFile = path + "\\admin\\images\\" + fn;
//out.print(saveFile);
                File ff = new File(saveFile);
               
                FileOutputStream fileOut = new FileOutputStream(ff);
                fileOut.write(dataBytes, startPos, (endPos - startPos));
                fileOut.flush();
                fileOut.close();
            }
            try {
                // if(session.getAttribute("url")!=null)
                //String path=session.getAttribute(url).toString();
                //   response.sendRedirect(session.getAttribute("url").toString());
            } catch (Exception e) {

            }

           // response.sendRedirect(request.getHeader("referer"));
        
      out.write("\n");
      out.write("       ");
      out.print(fn);
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
