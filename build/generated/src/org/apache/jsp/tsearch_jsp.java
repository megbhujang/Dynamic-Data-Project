package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;;
import javax.servlet.*;;
import javax.servlet.http.*;;
import java.sql.*;;

public final class tsearch_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Template Search Page</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("     \n");
      out.write("     \n");
      out.write("    \n");
      out.write("     \n");
      out.write("        \n");
      out.write("    \n");
      out.write("<body bgcolor='gray'>\n");
      out.write("<br><br><br><br><br><br><br><br>\n");
      out.write("  ");

      Connection con=null;
             try 
             {  
                 String ids=request.getParameter("id");
                 int id=Integer.parseInt(ids.trim());
                 Class.forName("com.mysql.jdbc.Driver");  
con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/project", "root", "");  
                 // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.  
                 Statement stmt = con.createStatement();  
                 ResultSet rs = stmt.executeQuery("select fileid, fn, owner_name, upload_time from users where fileid ="+id+"");  
                 
      out.write("\"<center>\n");
      out.write("                 <table border='10 px solid black' bgcolor='gray' style=\"color:black;\" width=50% height=20%>  \n");
      out.write("                 <tr><th>CLUSTER_ID</th><th>File Name</th><th>OWNER NAME</th><th>UPLOAD TIME</th><tr>\n");
      out.write("                ");
 while (rs.next()) 
                 {  
                     
      out.write("\n");
      out.write("                     <tr>\n");
      out.write("                         <td>");
      out.print(rs.getString("fileid") );
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("fn") );
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("owner_name") );
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("upload_time") );
      out.write("</td>\n");
      out.write("                         \n");
      out.write("                ");
 
                 }  
      out.write("\n");
      out.write("                 </table>\n");
      out.write("                 <br><br>\n");
      out.write("                 ");
}  
                 catch (Exception e) 
                {  
                    out.println(e);
      out.write("<br>");
  
             }
             finally{
                 con.close();
         }
      out.write("  \n");
      out.write("         <form action=\"downloadFileServlet\" method=\"post\">\n");
      out.write("             Confirm File ID from above table: <input type=\"text\" name=\"id\" />\n");
      out.write("         <input type=\"submit\" value=\"Download\">\n");
      out.write("         </form>\n");
      out.write("      \n");
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
