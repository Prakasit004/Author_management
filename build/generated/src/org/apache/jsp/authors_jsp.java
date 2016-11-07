package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import Authors.Authors;

public final class authors_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Search Authors By Name</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <a href=\"ListController\">List</a> |\n");
      out.write("        <a href=\"SearchControllerById\">Search Authors By Id</a> |\n");
      out.write("        <a href=\"SearchController\">Search Authors By Name</a> |\n");
      out.write("        <a href=\"addauthors.jsp\">Add Authors</a>\n");
      out.write("        <div style=\"background-color: #FFBBCC; width:100%;\"> \n");
      out.write("            <br />\n");
      out.write("            <h2 align=\"center\">Authors Search Form</h2>\n");
      out.write("            <form name=\"searchForm\" action=\"SearchController\" align=\"center\">\n");
      out.write("                Enter Name:<input type=\"text\" name=\"searchValue\" value=\"\" >\n");
      out.write("                <input type=\"submit\" value=\"Find Authors Details\" name=\"searchButton\" />\n");
      out.write("            </form><br>\n");
      out.write("\n");
      out.write("            ");

                try {
                    // Create a session object if it is already not  created.
                    List<Authors> authorsList = (List<Authors>) session.getAttribute("searchResult");
                    if (authorsList != null) {
            
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <table border=\"1\" align=\"center\">\n");
      out.write("                ");

                    if (authorsList.size() != 0) {

                
      out.write("\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td align=\"center\">Author ID</td>\n");
      out.write("                        <td align=\"center\">Name</td>\n");
      out.write("                <br>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                ");
                        for (Authors acc : authorsList) {
                
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
 out.println(acc.getAuthorId()); 
      out.write("</td>\n");
      out.write("                    <td>");
 out.println(acc.getName()); 
      out.write("</td>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                ");
 }
                        }
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("            ");

                    }

                } catch (Exception e) {
                    out.println(e.getMessage());
                }

            
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
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
