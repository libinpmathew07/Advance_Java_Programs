/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.47
 * Generated at: 2018-07-04 07:27:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contactus_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Contact us</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("\t<img src=\"http://www.niit.com/india/training/contact_us/PublishingImages/Pages/contact-information/469583443.jpg\" >\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<h3>Contact Information</h3>\r\n");
      out.write("\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<h5>For Information Technology</h5>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpfAp1AMu5H74rOgTFQINeS3WDd_YWVVyIlLLgCWyTbRFV-zOJ\" style=\"height:20px;width:20px\"> India\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-envelope\"></span> <a href=\"mailto:carrercourses@niit.com\">carrercourses@niit.com</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-phone\"></span> +1 800 3000 6448\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t<h5>For Schools:</h5>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t  <div class=\"row\">\r\n");
      out.write("\t\t  \t<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpfAp1AMu5H74rOgTFQINeS3WDd_YWVVyIlLLgCWyTbRFV-zOJ\" style=\"height:20px;width:20px\"> India\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t\t  <br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-envelope\"></span> <a href=\"mailto:ngurur@niit.com\">nguru@niit.com</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-phone\"></span> +1 800 102 3233\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-lg-12\"><hr></div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<h5>For Executive Management Programs:</h5>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpfAp1AMu5H74rOgTFQINeS3WDd_YWVVyIlLLgCWyTbRFV-zOJ\" style=\"height:20px;width:20px\"> India\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-envelope\"></span> <a href=\"mailto:imperia@niit.com\">imperia@niit.com</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-phone\"></span> +1 800 266 0304\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t<h5>For Banking, Finance and Insurance:</h5>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t  <div class=\"row\">\r\n");
      out.write("\t\t  \t<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpfAp1AMu5H74rOgTFQINeS3WDd_YWVVyIlLLgCWyTbRFV-zOJ\" style=\"height:20px;width:20px\"> India\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t\t  <br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-envelope\"></span> <a href=\"mailto:ifbi@niit.com\">ifbi@niit.com</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-phone\"></span> +1 800 200 4758\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-lg-12\"><hr></div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<h5>For Enterprise and Corporate Learning Solutions:</h5>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpfAp1AMu5H74rOgTFQINeS3WDd_YWVVyIlLLgCWyTbRFV-zOJ\" style=\"height:20px;width:20px\"> India\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-envelope\"></span> <a href=\"mailto:corptraining@niit.com\">corptraining@niit.com</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t<h5>United States of America:</h5>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t  <div class=\"row\">\r\n");
      out.write("\t\t  \t<img src=\"data:image/png;base64,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\" style=\"height:20px;width:20px\"> United States Of America\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t\t  <br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-envelope\"></span> <a href=\"mailto:businessimpact@niit.com\">businessimpact@niit.com</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-phone\"></span> +1 777 4088738\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-lg-12\"><hr></div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<h5>Corporate Headquarter:</h5>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpfAp1AMu5H74rOgTFQINeS3WDd_YWVVyIlLLgCWyTbRFV-zOJ\" style=\"height:20px;width:20px\"> India\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<p>NIIT Limited</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<p>85, Sector 32, Institutional</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<p>Gurgaon 122001</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<p>India</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<p>+91 (124) 4293000</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<p>+91 (124) 4293333</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t<h5>Vocational Training:</h5>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t  <div class=\"row\">\r\n");
      out.write("\t\t\t<h5>For Enterprise and Corporate Learning Solutions:</h5>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpfAp1AMu5H74rOgTFQINeS3WDd_YWVVyIlLLgCWyTbRFV-zOJ\" style=\"height:20px;width:20px\"> India\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-envelope\"></span> <a href=\"mailto:nyj@niit.com\">nyj@niit.com</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div class=\"row-col-2\">\r\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-phone\"></span> 1800 103 2020\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}