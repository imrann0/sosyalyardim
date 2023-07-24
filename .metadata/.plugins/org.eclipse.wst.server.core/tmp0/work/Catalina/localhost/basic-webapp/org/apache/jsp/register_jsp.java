/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.8
 * Generated at: 2023-07-24 13:48:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
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

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
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

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/regg.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://unicons.iconscout.com/release/v4.0.0/css/line.css\">\r\n");
      out.write("\r\n");
      out.write("   <title>Gebze Bel </title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <header>Kayıt Bilgileri</header>\r\n");
      out.write("\r\n");
      out.write("        <form action=\"register\" method=\"post\">\r\n");
      out.write("            <div class=\"form first\">\r\n");
      out.write("                <div class=\"details personal\">\r\n");
      out.write("                    <span class=\"title\">Kişisel Bilgiler</span>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"fields\">\r\n");
      out.write("                        <div class=\"input-field\">\r\n");
      out.write("                            <label>Adınız</label>\r\n");
      out.write("                            <input type=\"text\" name=\"username\" placeholder=\"Adınız\" required oninput=\"validateAlphabeticInput(this)\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <script>\r\n");
      out.write("                        function validateAlphabeticInput(input) {\r\n");
      out.write("                            input.value = input.value.replace(/[^a-zA-ZğüşıöçĞÜŞİÖÇ\\s]/g, '');\r\n");
      out.write("                        }\r\n");
      out.write("                        </script>\r\n");
      out.write("                        \r\n");
      out.write("                       \r\n");
      out.write("                        <div class=\"input-field\">\r\n");
      out.write("                            <label>Soyadınız</label>\r\n");
      out.write("                            <input type=\"text\" name=\"surname\" placeholder=\"Soyadınız\" required oninput=\"validateAlphabeticInput(this)\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                       <script>\r\n");
      out.write("                        function validateAlphabeticInput(input) {\r\n");
      out.write("                            input.value = input.value.replace(/[^a-zA-ZğüşıöçĞÜŞİÖÇ\\s]/g, '');\r\n");
      out.write("                        }\r\n");
      out.write("                        </script>\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"input-field\">\r\n");
      out.write("                            <label>Telefon Numaranız</label>\r\n");
      out.write("                            <input type=\"text\" name=\"number\" oninput=\"validateTCNumber(this)\" placeholder=\"Telefon Numaranızı Giriniz\" required minlength=\"11\" maxlength=\"11\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <script>\r\n");
      out.write("                            function validateTCNumber(input) {\r\n");
      out.write("                                const value = input.value;\r\n");
      out.write("                                const numericValue = value.replace(/[^0-9]/g, '');\r\n");
      out.write("                                \r\n");
      out.write("                                if (numericValue.length !== 11) {\r\n");
      out.write("                                    input.setCustomValidity(\"Telefon Numaranız 11 rakamdan oluşmalıdır.\");\r\n");
      out.write("                                } else {\r\n");
      out.write("                                    input.setCustomValidity(\"\");\r\n");
      out.write("                                }\r\n");
      out.write("                                \r\n");
      out.write("                                input.value = numericValue;\r\n");
      out.write("                            }\r\n");
      out.write("                        </script>\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"input-field\">\r\n");
      out.write("                            <label>Cinsiyet</label>\r\n");
      out.write("                            <select name=\"gender\" required>\r\n");
      out.write("                                <option disabled selected>Cinsiyetinizi Seçin</option>\r\n");
      out.write("                                <option value=\"Erkek\">Erkek</option>\r\n");
      out.write("                                <option value=\"Kadın\">Kadın</option>\r\n");
      out.write("                                <option value=\"Diger\">Diger</option>\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"details ID\">\r\n");
      out.write("                    <span class=\"title\">Diğer Hesap Bilgileri</span>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"fields\">\r\n");
      out.write("                        <div class=\"input-field\">\r\n");
      out.write("                            <label>Email</label>\r\n");
      out.write("                            <input type=\"email\" name=\"email\" placeholder=\"Email adresinizi giriniz\" required>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("\r\n");
      out.write("                        <div class=\"input-field\">\r\n");
      out.write("                            <label>Sifre</label>\r\n");
      out.write("                            <input type=\"password\" id=\"password\" name=\"password\" placeholder=\"Sifrenizi giriniz\" required>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"input-field\">\r\n");
      out.write("                            <label>Şifre Onay</label>\r\n");
      out.write("                            <input type=\"password\" id=\"confirmPassword\" placeholder=\"Sifrenizi tekrar giriniz\" required>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <script>\r\n");
      out.write("                            const passwordInput = document.getElementById(\"password\");\r\n");
      out.write("                            const confirmPasswordInput = document.getElementById(\"confirmPassword\");\r\n");
      out.write("                            const submitButton = document.querySelector(\".sumbit\");\r\n");
      out.write("                        \r\n");
      out.write("                            confirmPasswordInput.addEventListener(\"input\", function() {\r\n");
      out.write("                                const password = passwordInput.value;\r\n");
      out.write("                                const confirmPassword = confirmPasswordInput.value;\r\n");
      out.write("                        \r\n");
      out.write("                                if (password !== confirmPassword) {\r\n");
      out.write("                                    confirmPasswordInput.setCustomValidity(\"Åifreler uyuÅmuyor.\");\r\n");
      out.write("                                    submitButton.disabled = true; // Butonu etkisizleÅtir\r\n");
      out.write("                                } else {\r\n");
      out.write("                                    confirmPasswordInput.setCustomValidity(\"\");\r\n");
      out.write("                                    submitButton.disabled = false; // Butonu etkinleÅtir\r\n");
      out.write("                                }\r\n");
      out.write("                            });\r\n");
      out.write("                        </script>\r\n");
      out.write("                        \r\n");
      out.write("            \r\n");
      out.write("                        <div class=\"input-field\">\r\n");
      out.write("                            <label>Bölüm</label>\r\n");
      out.write("                             <select name=\"section\" required>\r\n");
      out.write("                                <option disabled selected>Lütfen Seçiniz</option>\r\n");
      out.write("                                <option value=\"Yazılım\">Yazılım</option>\r\n");
      out.write("                                <option value=\"Yönetici\">Yönetici</option>\r\n");
      out.write("                                <option value=\"Danışma\">Danışma</option>\r\n");
      out.write("                                <option value=\"Başkanlık\">Başkanlık</option>\r\n");
      out.write("                                <option value=\"Şeflik\">Şeflik</option>\r\n");
      out.write("                                <option value=\"Depo Dağıtım\">Depo Dağıtım</option>\r\n");
      out.write("                                <option value=\"Saha Ekibi\">Saha Ekibi</option>\r\n");
      out.write("                                <option value=\"Market - İnkılap\">Market - İnkılap</option>\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                       <script>\r\n");
      out.write("                        function validateAlphabeticInput(input) {\r\n");
      out.write("                            input.value = input.value.replace(/[^a-zA-ZğüşıöçĞÜŞİÖÇ\\s]/g, '');\r\n");
      out.write("                        }\r\n");
      out.write("                        </script>\r\n");
      out.write("\r\n");
      out.write("                        \r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <button class=\"nextBtn\">\r\n");
      out.write("                        <span class=\"btnText\">Next</span>\r\n");
      out.write("                        <i class=\"uil uil-navigator\"></i>\r\n");
      out.write("                    </button>\r\n");
      out.write("                </div> \r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("\r\n");
      out.write("            <div class=\"form second\">\r\n");
      out.write("                <div class=\"details family\">\r\n");
      out.write("                    <span class=\"title\">Adres ve Diğer Bilgiler</span>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"fields\">\r\n");
      out.write("                        <div class=\"input-field\">\r\n");
      out.write("                            <label>Adresiniz</label>\r\n");
      out.write("                            <input type=\"text\" name=\"address\" placeholder=\"Adresinizi Giriniz\" required>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"input-field\">\r\n");
      out.write("                            <label>Ünvan</label>\r\n");
      out.write("                            <input type=\"text\" name=\"unvan\" placeholder=\"Ünvan Giriniz\" required oninput=\"validateAlphabeticInput(this)\">\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"input-field\">\r\n");
      out.write("                            <label>Sicil No</label>\r\n");
      out.write("                            <input type=\"number\" name=\"registrationNo\" placeholder=\"Sicil Numaranızı Giriniz\" required>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"buttons\">\r\n");
      out.write("                        <div class=\"backBtn\">\r\n");
      out.write("                            <i class=\"uil uil-navigator\"></i>\r\n");
      out.write("                            <span class=\"btnText\">Back</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <button class=\"sumbit\">\r\n");
      out.write("                            <span class=\"btnText\">Submit</span>\r\n");
      out.write("                            <i class=\"uil uil-navigator\"></i>\r\n");
      out.write("                        </button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div> \r\n");
      out.write("            </div>\r\n");
      out.write("        </form>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"js/regg.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
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
