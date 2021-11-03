package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class user_005fpage1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("\t<title>Dynamic Data Sharing-USER</title>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\"/>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"./css/style.css\"/>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/bootstrap.min.js\"/></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.min.js\"/></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/popper.min.js\"/></script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("  body {\n");
      out.write("      position: relative; \n");
      out.write("background-image:url('img/data-original.jpg');\n");
      out.write("background-repeat: no-repeat;\n");
      out.write("background-attachment: fixed;\n");
      out.write("background-size:cover;\n");
      out.write("  }\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("  <script> \n");
      out.write("$(document).ready(function(){\n");
      out.write("  $(\"#flip\").click(function(){\n");
      out.write("    $(\"#panel\").slideToggle(\"slow\");\n");
      out.write("  });\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("<body data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"100\">\n");
      out.write("\t<header class=\"fixed-top\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div id=\"branding\">\n");
      out.write("                            <h1><span class=\"highlight\">DATA USER </span></center</h1>\n");
      out.write("\t\t\t\t\n");
      out.write("<br>\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t<section id=\"navy\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<nav>\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("                                    <li><a href=\"user_page1.jsp\"><B>USER HOME</B></a></li>\n");
      out.write("                                    <li><a href=\"upload.jsp\"><B>UPLOAD</B></a></li>\n");
      out.write("                                    \n");
      out.write("\t\t\n");
      out.write("          <li><a href=\"#tsearch\"><B>Temp-SEARCH</b></a></li>\n");
      out.write("         <li><a href=home.html><B>LOGOUT</b></a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</nav>\n");
      out.write("\t\t</div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("</header>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <br><br><br><br><br><br>   \n");
      out.write("    </div>\n");
      out.write(" <br><br><br><br>     <br><br><br><br><br><br>      <br><br><br><br><br><br>    <br><br><br><br><br><br>    <br><br><br><br><br><br>   \n");
      out.write("<div id=\"tsearch\" class=\"container\">\n");
      out.write("        <h1>Enter Template ID</h1>\n");
      out.write("        <form method=\"post\" action=\"tsearch.jsp\">\n");
      out.write("            <table border=\"0\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Enter Template ID: </td>\n");
      out.write("                    <td><input type=\"text\" name=\"id\" size=\"50\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                    <td colspan=\"2\">\n");
      out.write("                        <input type=\"submit\" value=\"Search\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("             <br><br><br><br>    <br><br><br><br><br><br>    <br><br><br><br><br><br>   \n");
      out.write("</div>   \n");
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
