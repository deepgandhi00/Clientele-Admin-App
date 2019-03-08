package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_catch_var;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_import_url_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_catch_var = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_import_url_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_catch_var.release();
    _jspx_tagPool_c_import_url_nobody.release();
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
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("        ");
      if (_jspx_meth_c_catch_0(_jspx_page_context))
        return;
      out.write('\n');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${e}", java.lang.String.class, (PageContext)_jspx_page_context, null));
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

  private boolean _jspx_meth_c_catch_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:catch
    org.apache.taglibs.standard.tag.common.core.CatchTag _jspx_th_c_catch_0 = (org.apache.taglibs.standard.tag.common.core.CatchTag) _jspx_tagPool_c_catch_var.get(org.apache.taglibs.standard.tag.common.core.CatchTag.class);
    _jspx_th_c_catch_0.setPageContext(_jspx_page_context);
    _jspx_th_c_catch_0.setParent(null);
    _jspx_th_c_catch_0.setVar("e");
    int[] _jspx_push_body_count_c_catch_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_catch_0 = _jspx_th_c_catch_0.doStartTag();
      if (_jspx_eval_c_catch_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("        ");
          if (_jspx_meth_c_import_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_catch_0, _jspx_page_context, _jspx_push_body_count_c_catch_0))
            return true;
          out.write("\n");
          out.write(" <div class=\" col-xs-12 c\" id=\"c\"  style=\"padding:0px; margin:0px; float:right;\">\n");
          out.write(" \n");
          out.write(" <!--first row of main content--> \n");
          out.write(" <div class=\"row \" style=\"padding:0px; margin:0px; float:left;\">\n");
          out.write(" \n");
          out.write("  \n");
          out.write("  <div id=\"summary-table\" class=\"\" style=\"padding:30px; float:left;\">\n");
          out.write("  \t\t\n");
          out.write(" <!--summery-->\n");
          out.write("  \t\t\t<div id=\"maincontent\" class=\"col-lg-3 col-sm-12 col-xs-12\" style=\"float:left; width:100%;\">\n");
          out.write("                <h2 style=\" line-height: 35px; font-size: 19px; margin:0px 0px 10px 0px; float:left\">SUMMARY PROFIT</h2>\n");
          out.write("                <div class=\"btn-group\" role=\"group\" aria-label=\"\"  style=\" margin:0px 0px 10px 0px; float:right;\">\n");
          out.write("                  \n");
          out.write("  \t\t\t\t\t<button type=\"button\" class=\"btn\" style=\"background-color:#fafafa; border: solid 1px #cccccc;\"><i class=\"fa fa-calendar\" aria-hidden=\"true\" style=\"color:black; margin-right:10px;\"></i>01/07/2015</button>\n");
          out.write("  \t\t\t\t\t<button type=\"button\" class=\"btn\" style=\"background-color:#fafafa; border: solid 1px #cccccc;\"><i class=\"fa fa-calendar\" aria-hidden=\"true\" style=\"color:black; margin-right:10px;\"></i>01/08/2015</button>\n");
          out.write("\t\t\t\t</div>\n");
          out.write("  \t\t</div>\n");
          out.write("  \n");
          out.write("  \t\t<!--chart holder-->\n");
          out.write("  \t\t<div id=\"maincontent\"  class=\" col-sm-12 col-xs-12\" style=\" background-color:#DCF9DF; float: left; height: 420px; padding: 20px; margin-bottom: 20px;\">\n");
          out.write("  \t\t\n");
          out.write("  \t\t</div>\n");
          out.write("        \n");
          out.write("        <!--first table-->\n");
          out.write("  \t\t<div id=\"maincontent\" class=\"col-md-12 col-sm-12 col-xs-12\" style=\"overflow:scroll; overflow-x: auto; overflow-y:hidden; float:left;\" >\n");
          out.write("  \t\t\t<table class=\"table table-bordered table-striped table-hover text-center\">\n");
          out.write("            <tbody>\n");
          out.write("            \t<tr class=\"ta\"><th>DETAILS</th><th>PRODUCTS</th><th>QUANTITY</th><th>TOTAL</th><th>DELIVERY</th><th>STATUS</th><th>ACTIONS</th></tr>\n");
          out.write("                \n");
          out.write("                <tr class=\"tb\">\n");
          out.write("                \n");
          out.write("                <td style=\"\"><a href=\"\"><div style=\"\"><div style=\"float:left;\"><img src=\"\" style=\"float:left;\"></div><div style=\"float:left;\">Abhishek Karia</div></div></a></td>\n");
          out.write("                \n");
          out.write("            \t<td><a href=\"\">Awesome T-shirt</a></td><td><a href=\"\">1</a></td><td><a href=\"\">$15.99</a></td><td><a href=\"\"><div class=\"badge\">Courior</div>uk,london</a></td><td><a href=\"\"><div class=\"badge\">New</div></a></td><td><a href=\"\"><button class=\"btn btn-primary btn-rounded btn-clean\">View</button></a></td>\t\t\t</tr>\n");
          out.write("                 \n");
          out.write("                 <tr class=\"ta\"><td><img src=\"\"/>Abhishek Karia</td><td>Awesome T-shirt</td><td>1</td><td>$15.99</td><td><div class=\"badge\">Courior</div>uk,london</td><td><div class=\"badge\">New</div></td><td><button class=\"btn btn-primary btn-rounded btn-clean\">View</button></td></tr>\n");
          out.write("                 \n");
          out.write("                  <tr class=\"tb\"><td><img src=\"\"/>Abhishek Karia</td><td>Awesome T-shirt</td><td>1</td><td>$15.99</td><td><div class=\"badge\">Courior</div>uk,london</td><td><div class=\"badge\">New</div></td><td><button class=\"btn btn-primary btn-rounded btn-clean\">View</button></td></tr>\n");
          out.write("                  \n");
          out.write("                   <tr class=\"ta\"><td><img src=\"\"/>Abhishek Karia</td><td>Awesome T-shirt</td><td>1</td><td>$15.99</td><td><div class=\"badge\">Courior</div>uk,london</td><td><div class=\"badge\">New</div></td><td><button class=\"btn btn-primary btn-rounded btn-clean\">View</button></td></tr>\n");
          out.write("             </tbody>                 \n");
          out.write("            </table>\n");
          out.write("  \t\t</div>\n");
          out.write("        \n");
          out.write("  </div>\n");
          out.write("  <!--right side tabs-->\n");
          out.write("  \t<div id=\"maincontent1\" class=\"\"  style=\" float:left; padding:0px; margin-top:30px;\">\n");
          out.write("\n");
          out.write("  \t\t<ul class=\"nav nav-tabs\">\n");
          out.write("        \n");
          out.write("  \t\t\t<li role=\"presentation\"  class=\"rstabs\" style=\" width:50%;\" id=\"rstab\" ><a href=\"#\"  style=\"border-radius: 0px; text-align:center; margin-right:0px;  background-color:\t\">Home</a>\n");
          out.write("            </li>\n");
          out.write("  \t\t\t<li role=\"presentation\" class=\"rstabs\" style=\" width:50%;\" id=\"rstab\" ><a href=\"#\"   style=\"border-radius: 0px; text-align:center; margin-right:0px; \">Profile</a></li>\n");
          out.write("\t\t</ul>\n");
          out.write("        \n");
          out.write("        <div style=\"height:800px; background-color:#fafafa;\">\n");
          out.write("        </div>\n");
          out.write("        </div>\n");
          out.write("        \n");
          out.write("        \n");
          out.write("        \n");
          out.write("        <div id=\"maincontent\" class=\"row\"  onscroll=\"myFunction()\" style=\"padding:30px 0px 0px 15px; margin:0px; float:left;\">\n");
          out.write("        \t\n");
          out.write("        \t<div class=\"col-sm-12 col-md-4\" style=\"padding:15px; margin-bottom:20px; float:left;\">\n");
          out.write("        \t<h2>Server Usage</h2>\n");
          out.write("        \t<p>Total server usage in percentages</p>\n");
          out.write("        \t<p style=\"font-size:36px;\" id=\"number1\"  ></p>\n");
          out.write("        \t<div class=\"progress pbara\" style=\"height:5px;\">\n");
          out.write("  \t\t\t\t<div class=\"progress-bar \" role=\"progressbar\" aria-valuenow=\"68\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 68%; background:#85d6de;\">\n");
          out.write("    \t\t\t<span class=\"sr-only\" >68% Complete</span>\n");
          out.write("  \t\t\t\t</div>\n");
          out.write("\t\t\t</div>\n");
          out.write("            <p>We totally recommend you change your plan to </br>Pro. Click here to get more details.</p>\n");
          out.write("        \t</div>\n");
          out.write("        \n");
          out.write("        <div class=\"col-sm-12 col-md-4\" style=\" padding:15px; margin-bottom:20px; float:left;\">\n");
          out.write("        <h2>Total Earning</h2>\n");
          out.write("        <p>This is total earnings per last year</p>\n");
          out.write("        <p style=\"font-size:36px;\" class=\"\">$75,332</p>\n");
          out.write("        \t<div class=\"progress pbarb\" style=\"height:5px; \">\n");
          out.write("  \t\t\t\t<div class=\"progress-bar \" role=\"progressbar\" aria-valuenow=\"68\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 68%; background:#82b440;\">\n");
          out.write("    \t\t\t<span class=\"sr-only\" style=\";\" >68% Complete</span>\n");
          out.write("  \t\t\t\t</div>\n");
          out.write("\t\t\t</div>\n");
          out.write("            <p>We happy to notice you that you become an Elite customer, and you can get some custom sugar.</p>\n");
          out.write("        </div>\n");
          out.write("        \n");
          out.write("        <div class=\"col-sm-12 col-md-4\" style=\" margin-bottom:20px; padding:15px; float:left;\">\n");
          out.write("        <h2>Your Balanc</h2>\n");
          out.write("        <p>All your earnings for this time</p>\n");
          out.write("        <p style=\"font-size:36px;\">$5,321</p>\n");
          out.write("        \t<div class=\"progress pbarc\" style=\"height:5px;\">\n");
          out.write("  \t\t\t\t<div class=\"progress-bar \" role=\"progressbar\" aria-valuenow=\"68\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 68%; background:#e74e40\">\n");
          out.write("    \t\t\t<span class=\"sr-only\" >68% Complete</span>\n");
          out.write("  \t\t\t\t</div>\n");
          out.write("\t\t\t</div>\n");
          out.write("            <p>You can withdraw this money in end of each month. Also you can spend it on our marketplace.</p>\n");
          out.write("        </div>\n");
          out.write("        </div>\n");
          out.write("       \n");
          out.write("        \n");
          out.write("        \n");
          out.write("        \n");
          out.write("        \n");
          out.write("       \n");
          out.write("<div id=\"maincontent\"  class=\"\" style=\"padding:30px; border-bottom:solid 1px #000000; float:left; width:100%;\">\n");
          out.write("        \t<div class=\"\" style=\"float:left;\"><h2 >ORDER STATICS</h2></div>\n");
          out.write("            \n");
          out.write("            <div class=\"dropdown\" style=\"float:right;\">\n");
          out.write("  \t\t\t<button id=\"dLabel\" type=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
          out.write("    \t\t\tDropdown trigger\n");
          out.write("    \t\t\t<span class=\"caret\"></span>\n");
          out.write("  \t\t\t</button>\n");
          out.write("  \t\t\t<ul class=\"dropdown-menu dd\" aria-labelledby=\"dLabel\">\n");
          out.write("            \t<li id=\"ddyear\"> <button onclick=collcol('ddyear')> YEAR <i class=\"fa fa-check\"></i> </button></li>\n");
          out.write("                <li id=\"ddja\"><button onclick=collcol('ddja')>JA.<i class=\"fa fa-check\"></i></button></li>\n");
          out.write("                <li id=\"ddfe\"><button onclick=collcol('ddfe')>FE.<i class=\"fa fa-check\"></i></button></li>\n");
          out.write("                <li id=\"ddma\"><button onclick=collcol('ddma')>MA.<i class=\"fa fa-check\"></i></button></li>\n");
          out.write("                <li id=\"ddaw\"><button onclick=collcol('ddaw')>AW.<i class=\"fa fa-check\"></i></button></li>\n");
          out.write("                <li id=\"ddmay\"><button onclick=collcol('ddmay')>MA.<i class=\"fa fa-check\"></i></button></li>\n");
          out.write("                <li id=\"ddjun\"><button onclick=collcol('ddjun')>JU.<i class=\"fa fa-check\"></i></button></li>\n");
          out.write("                <li id=\"ddju\"><button onclick=collcol('ddju')>JU.<i class=\"fa fa-check\"></i></button></li>\n");
          out.write("                <li id=\"ddao\"><button onclick=collcol('ddao')>AO.<i class=\"fa fa-check\"></i></button></li>\n");
          out.write("                <li id=\"ddse\"><button onclick=collcol('ddse')>SE.<i class=\"fa fa-check\"></i></button></li>\n");
          out.write("                <li id=\"ddoc\"><button onclick=collcol('ddoc')>OC.<i class=\"fa fa-check\"></i></button></li>\n");
          out.write("                <li id=\"ddno\"><button onclick=collcol('ddno')>NO.<i class=\"fa fa-check\"></i></button></li>\n");
          out.write("                <li id=\"ddde\"><button onclick=collcol('ddde')>DE.<i class=\"fa fa-check\"></i></button></li>\n");
          out.write("  \t\t\t</ul>\n");
          out.write("\t\t\t</div>\n");
          out.write("        \t<table class=\"table table-bordered table-striped table-hover text-center table-responsive\">\n");
          out.write("            \n");
          out.write("            \t<tbody>\n");
          out.write("                <tr><th id=\"tdyear0\">YEAR</th><th id=\"tdja0\">JA.</th><th id=\"tdfe0\">FE.</th><th id=\"tdma0\">MA.</th><th id=\"tdaw0\">AW.</th><th id=\"tdmay0\">MA.</th><th id=\"tdjun0\">JU.</th><th id=\"tdju0\">JU.</th><th id=\"tdao0\">AO.</th><th id=\"tdse0\">SE.</th><th id=\"tdoc0\">OC.</th><th id=\"tdno0\">NO.</th><th>DE.</th></tr>\n");
          out.write("                \n");
          out.write("                <tr><td id=\"tdyear1\">100</td><td id=\"tdja1\">100</td><td id=\"tdfe1\">100</td><td id=\"tdma1\">100</td><td id=\"tdaw1\">AW.</td><td id=\"tdmay1\">100</td><td id=\"tdjun1\">100</td><td id=\"tdju1\">100</td><td id=\"tdao1\">100</td><td id=\"tdse1\">100</td><td id=\"tdoc1\">100</td><td id=\"tdno1\">100</td><td>100</td></tr>\n");
          out.write("                \n");
          out.write("                <tr><td id=\"tdyear2\">100</td><td id=\"tdja2\">100</td><td id=\"tdfe2\">100</td><td id=\"tdma2\">100</td><td id=\"tdaw2\">AW.</td><td id=\"tdmay2\">100</td><td id=\"tdjun2\">100</td><td id=\"tdju2\">100</td><td id=\"tdao2\">100</td><td id=\"tdse2\">100</td><td id=\"tdoc2\">100</td><td id=\"tdno2\">100</td><td>100</td></tr>\n");
          out.write("                \n");
          out.write("                <tr><td id=\"tdyear3\">100</td><td id=\"tdja3\">100</td><td id=\"tdfe3\">100</td><td id=\"tdma3\">100</td><td id=\"tdaw3\">AW.</td><td id=\"tdmay3\">100</td><td id=\"tdjun3\">100</td><td id=\"tdju3\">100</td><td id=\"tdao3\">100</td><td id=\"tdse3\">100</td><td id=\"tdoc3\">100</td><td id=\"tdno3\">100</td><td>100</td></tr>\n");
          out.write("                \n");
          out.write("                </tbody>\n");
          out.write("            </table>\n");
          out.write("        </div>\n");
          out.write(" <div  style=\"padding:25px 20px 65px 20px; float:left;\">\n");
          out.write("    <div style=\"float:left\">\n");
          out.write("\t\t@2015 Aqvatrius.All right reserved.\n");
          out.write("    </div>\n");
          out.write("    \n");
          out.write("    <div style=\"float:right;\">\n");
          out.write("    \t<a href=\"\">Terms Of Use</a>\n");
          out.write("        <a href=\"\">Privacy Policy</a>\n");
          out.write("    </div>\n");
          out.write(" </div>\n");
          out.write("\n");
          out.write("</div>\n");
          out.write("\n");
          out.write("</div>\n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write(" \n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("</div>\n");
          out.write("\n");
          out.write("\n");
          out.write("</body>\n");
          out.write("</html>\n");
          if (_jspx_meth_c_import_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_catch_0, _jspx_page_context, _jspx_push_body_count_c_catch_0))
            return true;
          out.write('\n');
          int evalDoAfterBody = _jspx_th_c_catch_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_catch_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_catch_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_catch_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_catch_0.doFinally();
      _jspx_tagPool_c_catch_var.reuse(_jspx_th_c_catch_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_import_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_catch_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_catch_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:import
    org.apache.taglibs.standard.tag.rt.core.ImportTag _jspx_th_c_import_0 = (org.apache.taglibs.standard.tag.rt.core.ImportTag) _jspx_tagPool_c_import_url_nobody.get(org.apache.taglibs.standard.tag.rt.core.ImportTag.class);
    _jspx_th_c_import_0.setPageContext(_jspx_page_context);
    _jspx_th_c_import_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_catch_0);
    _jspx_th_c_import_0.setUrl("header.jsp");
    int[] _jspx_push_body_count_c_import_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_import_0 = _jspx_th_c_import_0.doStartTag();
      if (_jspx_th_c_import_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_import_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_import_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_import_0.doFinally();
      _jspx_tagPool_c_import_url_nobody.reuse(_jspx_th_c_import_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_import_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_catch_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_catch_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:import
    org.apache.taglibs.standard.tag.rt.core.ImportTag _jspx_th_c_import_1 = (org.apache.taglibs.standard.tag.rt.core.ImportTag) _jspx_tagPool_c_import_url_nobody.get(org.apache.taglibs.standard.tag.rt.core.ImportTag.class);
    _jspx_th_c_import_1.setPageContext(_jspx_page_context);
    _jspx_th_c_import_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_catch_0);
    _jspx_th_c_import_1.setUrl("footer.jsp");
    int[] _jspx_push_body_count_c_import_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_import_1 = _jspx_th_c_import_1.doStartTag();
      if (_jspx_th_c_import_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_import_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_import_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_import_1.doFinally();
      _jspx_tagPool_c_import_url_nobody.reuse(_jspx_th_c_import_1);
    }
    return false;
  }
}
