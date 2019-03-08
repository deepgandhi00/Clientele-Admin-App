package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link  rel=\"stylesheet\"   href=\"css/bootstrap.css\">\n");
      out.write("<link   rel=\"stylesheet\"  href=\"css/bootstrap-theme.css\">\n");
      out.write("<link   rel=\"stylesheet\"  href=\"css/font-awesome.css\">\n");
      out.write("<link   rel=\"stylesheet\"  href=\"css/first.css\">\n");
      out.write("<link   rel=\"stylesheet\"  href=\"css/second.css\">\n");
      out.write("\n");
      out.write("        <script  type=\"text/javascript\" src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script  type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\n");
      out.write("        <script  type=\"text/javascript\" src=\"js/animationCounter.js\"></script>\n");
      out.write("       \n");
      out.write("         <script  type=\"text/javascript\" src=\"js/editjs.js\"></script>\n");
      out.write("         \n");
      out.write("         \n");
      out.write("          <!--------------------- custom javascripts ----------------> \n");
      out.write("        <script  type=\"text/javascript\" src=\"js/ajaxjs.js\"></script>\n");
      out.write("        <script  type=\"text/javascript\" src=\"js/spancrossjs.js\"></script>\n");
      out.write("        <script  type=\"text/javascript\" src=\"js/del_tab_row.js\"></script>\n");
      out.write("        <script  type=\"text/javascript\" src=\"js/ins_tab_row.js\"></script>\n");
      out.write("        <script  type=\"text/javascript\" src=\"js/fileup.js\"></script>\n");
      out.write("        <script  type=\"text/javascript\" src=\"js/hidespancross.js\"></script>\n");
      out.write("        <script  type=\"text/javascript\" src=\"js/scroll.js\"></script>\n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("<!--first row-->\n");
      out.write("\n");
      out.write("\t<div>\n");
      out.write("    \t<div id=\"a\" class=\"a\" > \n");
      out.write("        \t<button id=\"leftbtn\"  onclick=\"collepse1(this)\" id=\"col1-div\" style=\"float:right; background-color:#364760; border:#FFFFFF; height:100%; width:55px;\"><i class=\"fa fa-bars\" style=\"color:#000000;\" id=\"lefticon\"></i></button>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("       <div class=\"d\" id=\"col-div\" > \n");
      out.write("        <button id=\"rightbtn\" type=\"button\" onclick=\"collepse1(this)\" style=\"background-color:#FFFFFF; border:#FFFFFF; height:100%; width:55px;\" ><i class=\"fa fa-ellipsis-v\" aria-hidden=\"true\" style=\"color:#000000;\" id=\"righticon\"></i></button>\n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("     \t\t\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("<!--first row over-->\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--below first row-->\n");
      out.write("<div>\n");
      out.write("\n");
      out.write("<div class=\"b\" id=\"leftdrawer\" align=\"center\" style=\"padding-left:15px; padding:0px;\">\n");
      out.write("\t<div  class=\"ldrawertop\">\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <i class=\"fa fa-trophy\" aria-hidden=\"true\"></i><img src=\"images/images.jpg\" width=\"130px\" height=\"130px\" style=\" border-style:solid; border-color:white; border-width:5px; border-radius:65px;\"><i class=\"fa fa-users\"></i>\n");
      out.write("    </div>\n");
      out.write("    \t\n");
      out.write("        <div style=\"color:#fff;\">\n");
      out.write("        <h4>Abhishek Karia</h4>\n");
      out.write("        <span style=\"color:#e5e5e5;\">System Admin In Company</span>\n");
      out.write("        </div>\n");
      out.write("        <div align=\"left\" style=\"color:#6382a9;\">NAVIGATION</div>\n");
      out.write("        \n");
      out.write(" \n");
      out.write("\t\t<!--pages-->\n");
      out.write("\t\n");
      out.write("  \t\t\t\n");
      out.write("                  <div class=\"panel-group\" id=\"accordion\" >\n");
      out.write("                            \n");
      out.write("        <div class=\"panel\">\n");
      out.write("        <a href=\"index.jsp\">\n");
      out.write("        <div class=\"aa1\">\n");
      out.write("            <div class=\"fa fa-television tableft\"></div> \n");
      out.write("            <div class=\"tabcenter\">Dashboard</div>\n");
      out.write("        </div>\n");
      out.write("        </a>\n");
      out.write("        </div>\n");
      out.write("          \n");
      out.write("        <div class=\"panel\">\n");
      out.write("            <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse1\"> \n");
      out.write("                <div class=\"aa1\">\n");
      out.write("                    <div class=\"fa fa-university tableft\"></div> \n");
      out.write("                    <div class=\"tabcenter\">Bank & Paymentdetials</div>\n");
      out.write("                    <div class=\"fa fa-angle-down tabright\"></div>\n");
      out.write("                    <div class=\"badge\">+2</div>\n");
      out.write("                </div>\n");
      out.write("            </a>            \n");
      out.write("            \n");
      out.write("            <div id=\"collapse1\" class=\"collapse\">\n");
      out.write("                <ul style=\"background-color: #304056;\">\n");
      out.write("                <a href=\"insert_bank.jsp\"><li>Bank</li></a>\n");
      out.write("                <a href=\"insert_craditcard.jsp\"><li>Creditcard Details</li></a>\n");
      out.write("                <a href=\"insert_debitcard.jsp\"><li>Debitcard Details</li></a>\n");
      out.write("                <a href=\"paymentmode.jsp\"><li>paymentmode</li></a>\n");
      out.write("                <a href=\"wallet.jsp\"><li>Wallet Details</li></a>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("        <div class=\"panel\">\n");
      out.write("            <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse2\">\n");
      out.write("                <div class=\"aa1\">\n");
      out.write("                    <div class=\"fa fa-shopping-cart tableft\"></div> \n");
      out.write("                    <div class=\"tabcenter\">Product & Category</div>\n");
      out.write("                    <div class=\"fa fa-angle-down tabright\"></div>\n");
      out.write("                    <div class=\"badge\">+2</div>\n");
      out.write("                </div>\n");
      out.write("            </a>\n");
      out.write("            \n");
      out.write("            <div id=\"collapse2\" class=\"collapse\" >\n");
      out.write("                <ul style=\"background-color: #304056;\">\n");
      out.write("                <a href=\"product.jsp\"><li>Product</li></a>\n");
      out.write("                <a href=\"category.jsp\"><li>Category</li></a>\n");
      out.write("                <a href=\"subcategory.jsp\"><li>Subcategory Details</li></a>\n");
      out.write("                \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("        <div class=\"panel\">\n");
      out.write("            <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse3\">\n");
      out.write("                <div class=\"aa1\">\n");
      out.write("                    <div class=\"fa fa-university tableft\"></div> \n");
      out.write("                    <div class=\"tabcenter\">Collapsible Group 3</div>\n");
      out.write("                    <div class=\"fa fa-angle-down tabright\"></div>\n");
      out.write("                    <div class=\"badge\">+2</div>\n");
      out.write("                </div>\n");
      out.write("            </a>\n");
      out.write("            <div id=\"collapse3\" class=\"collapse\">\n");
      out.write("                <ul style=\"background-color: #304056;\">\n");
      out.write("                <a href=\"product.jsp\"><li>abc</li></a>\n");
      out.write("                <a href=\"category.jsp\"><li>pqr</li></a>\n");
      out.write("                <a href=\"subcategory.jsp\"><li>xyz</li></a>\n");
      out.write("                \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("   \n");
      out.write("</div> \n");
      out.write("</div>\n");
      out.write("\n");
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
