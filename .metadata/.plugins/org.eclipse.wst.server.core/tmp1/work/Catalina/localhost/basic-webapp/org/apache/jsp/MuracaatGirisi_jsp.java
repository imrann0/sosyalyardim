/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.8
 * Generated at: 2023-07-27 06:52:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import com.example.example.DataBase.District;
import com.example.example.DataBase.Sokak;
import java.util.List;
import java.util.Set;
import com.example.example.DataBase.Zone;

public final class MuracaatGirisi_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.example.example.DataBase.Zone");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("com.example.example.DataBase.District");
    _jspx_imports_classes.add("java.util.Set");
    _jspx_imports_classes.add("com.example.example.DataBase.Sokak");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	List<District> district = District.getAllDistrict();
    List<Zone> zone = Zone.getAllZone();


      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\" >\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <title>CodePen - Basic hotel booking form</title>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css\">\r\n");
      out.write("<link href='https://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'><link rel=\"stylesheet\" href=\"css/muracatgiris.css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<form action=\"adminpanel/muracat\" method=\"post\">\r\n");
      out.write("  <!--  General -->\r\n");
      out.write("  <div class=\"form-group\">\r\n");
      out.write("    <h2 class=\"heading\">Müracaat Girişi</h2>\r\n");
      out.write("  <div class=\"grid\">\r\n");
      out.write("    <div class=\"col-1-2\">\r\n");
      out.write("    <div class=\"controls\">\r\n");
      out.write("      <input type=\"text\" id=\"name\" class=\"floatLabel\" name=\"name\">\r\n");
      out.write("      <label for=\"name\">İsim</label>\r\n");
      out.write("    </div>\r\n");
      out.write("    </div><div class=\"col-1-2\">\r\n");
      out.write("    <div class=\"controls\">\r\n");
      out.write("      <input type=\"text\" id=\"soyisim\" class=\"floatLabel\" name=\"soyisim\">\r\n");
      out.write("      <label for=\"soyisim\">Soyisim</label>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("    <div class=\"grid\">\r\n");
      out.write("    <div class=\"col-1-2\">\r\n");
      out.write("    <div class=\"controls\">\r\n");
      out.write("      <input type=\"number\" id=\"tckimlik\" class=\"floatLabel\" name=\"tckimlik\">\r\n");
      out.write("      <label for=\"tckimlik\">TC Kimlik No</label>\r\n");
      out.write("    </div></div>\r\n");
      out.write("    <div class=\"col-1-2\">\r\n");
      out.write("    <div class=\"controls\">\r\n");
      out.write("      <input type=\"tel\" id=\"phone\" class=\"floatLabel\" name=\"phone\">\r\n");
      out.write("      <label for=\"phone\">Telefon</label>\r\n");
      out.write("    </div></div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"grid\">\r\n");
      out.write("    <div class=\"col-1-3\"><div class=\"controls\">\r\n");
      out.write("      <i class=\"fa fa-sort\"></i>\r\n");
      out.write("      <select class=\"kayitDurum\">\r\n");
      out.write("        <option value=\"-1\" selected> Kayıt durumu</option>\r\n");
      out.write("        <option value=\"Eski Kayıt\" >Yeni Kayıt</option>\r\n");
      out.write("        <option value=\"Yeni Kayıt\" >Eski Kayıt</option>\r\n");
      out.write("        <option value=\"Durum Desisikligi\">Durum Değişikliği</option>\r\n");
      out.write("      </select>\r\n");
      out.write("      </div></div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      <div class=\"col-1-3\"><div class=\"controls\">\r\n");
      out.write("        <i class=\"fa fa-sort\"></i>\r\n");
      out.write("        <select name=\"il\" disabled>\r\n");
      out.write("          <option value=\"-1\"> Kayıtlı Olduğu İl </option>\r\n");
      out.write("          <option value=\"Kocaeli\" selected > Kocaeli </option>\r\n");
      out.write("        </select>\r\n");
      out.write("      </div></div>\r\n");
      out.write("      <div class=\"col-1-3\"><div class=\"controls\">\r\n");
      out.write("        <i class=\"fa fa-sort\"></i>\r\n");
      out.write("        <select name=\"ilce\" disabled>\r\n");
      out.write("          <option value=\"-1\" > Kayıtlı olduğu ilçe </option>\r\n");
      out.write("          <option value=\"Gebze\" selected > Gebze </option>\r\n");
      out.write("        </select>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"grid\">\r\n");
      out.write("      <div class=\"col-1-3\"><div class=\"controls\">\r\n");
      out.write("        <i class=\"fa fa-sort\"></i>\r\n");
      out.write("        <select name=\"cinsiyet\">\r\n");
      out.write("          <option value=\"-1\" selected> Cinsiyeti</option>\r\n");
      out.write("          <option value=\"E\" >Erkek</option>\r\n");
      out.write("          <option value=\"K\" >Kadın</option>\r\n");
      out.write("        </select>\r\n");
      out.write("      </div></div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"col-1-3\">\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("           <input type=\"text\" id=\"annead\" class=\"floatLabel\" name=\"anneAd\">\r\n");
      out.write("           <label for=\"annead\">Anne Adı</label>\r\n");
      out.write("          </div>          \r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"col-1-3\">\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("            <input type=\"tel\" id=\"babad\" class=\"floatLabel\" name=\"babaAd\">\r\n");
      out.write("            <label for=\"babad\">Baba Adı</label>\r\n");
      out.write("          </div>          \r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"grid\">\r\n");
      out.write("        <div class=\"col-1-2\">\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("            <input type=\"number\" id=\"ciltno\" class=\"floatLabel\" name=\"ciltno\">\r\n");
      out.write("            <label for=\"ciltno\">Cilt No</label>\r\n");
      out.write("          </div>         \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-1-2\">\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("            <input type=\"number\" id=\"sirano\" class=\"floatLabel\" name=\"sirano\">\r\n");
      out.write("            <label for=\"sirano\">Aile Sıra No</label>\r\n");
      out.write("          </div>         \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-2-3\">\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("            <input type=\"date\" id=\"dogumtarih\" class=\"floatLabel\" name=\"dogumtarih\" value=\"<?php echo date('Y-m-d'); ?>\">\r\n");
      out.write("            <label for=\"dogumtarih\" class=\"label-date\"><i class=\"fa fa-calendar\"></i> Doğum Tarihi</label>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-1-3\">\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("            <i class=\"fa fa-sort\"></i>\r\n");
      out.write("            <select name=\"medenidurum\">\r\n");
      out.write("              <option value=\"-1\" selected> Medeni Durumu</option>\r\n");
      out.write("              <option value=\"Bekar\" >Bekar</option>\r\n");
      out.write("              <option value=\"Evli\" >Evli</option>\r\n");
      out.write("              <option value=\"Bosanmis\">Boşanmış</option>\r\n");
      out.write("            </select>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    <div class=\"grid\">\r\n");
      out.write("    <div class=\"col-1-2\">\r\n");
      out.write("      <div class=\"controls\">\r\n");
      out.write("        <input type=\"text\" id=\"esAd\" class=\"floatLabel\" name=\"esAd\">\r\n");
      out.write("        <label for=\"esAd\">Eş Ad</label>\r\n");
      out.write("      </div></div>\r\n");
      out.write("      <div class=\"col-1-2\">\r\n");
      out.write("      <div class=\"controls\">\r\n");
      out.write("        <input type=\"text\" id=\"esSoyAd\" class=\"floatLabel\" name=\"esSoyAd\">\r\n");
      out.write("        <label for=\"esSoyAd\">Eş Soyad</label>\r\n");
      out.write("      </div>\r\n");
      out.write("  </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"controls\">\r\n");
      out.write("      <input type=\"text\" id=\"adresno\" class=\"floatLabel\" name=\"adresno\">\r\n");
      out.write("      <label for=\"adresno\">adresno</label>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <!--  Details -->\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("    <h2 class=\"heading\">Address Bilgileri</h2>\r\n");
      out.write("  <div class=\"grid\">\r\n");
      out.write("    <div class=\"col-1-2\">\r\n");
      out.write("    <div class=\"controls\">\r\n");
      out.write("      <input type=\"text\" id=\"acıkAddress\" class=\"floatLabel\" name=\"acıkAddress\">\r\n");
      out.write("      <label for=\"acıkAddress\">Açık Adres</label>\r\n");
      out.write("    </div>\r\n");
      out.write("    </div><div class=\"col-1-2\">\r\n");
      out.write("    <div class=\"controls\">\r\n");
      out.write("      <input type=\"text\" id=\"AddresNum\" class=\"floatLabel\" name=\"AddresNum\">\r\n");
      out.write("      <label for=\"AddresNum\">Adres No</label>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("  <div class=\"form-group\">\r\n");
      out.write("\r\n");
      out.write("    <h2 class=\"heading\">İletişim Bilgileri</h2>\r\n");
      out.write("    <div class=\"grid\">\r\n");
      out.write("      <div class=\"col-1-3\">\r\n");
      out.write("        <div class=\"controls\">\r\n");
      out.write("          <i class=\"fa fa-sort\"></i>\r\n");
      out.write("          <select name=\"iletisimilce\" disabled>\r\n");
      out.write("            <option value=\"Gebze\" selected> Gebze</option>\r\n");
      out.write("          </select>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"col-1-3\">\r\n");
      out.write("        <div class=\"controls\">\r\n");
      out.write("          <i class=\"fa fa-sort\"></i>\r\n");
      out.write("   		 <select name=\"iletisimMahalle\" id=\"mahalleSelect\" onchange=\"toggleSokakSelect()\">\r\n");
      out.write("            ");
 for (District dist : district) { 
      out.write("\r\n");
      out.write("				<option value=\"");
      out.print( dist.getDistrictID() );
      out.write('"');
      out.write(' ');
      out.write('>');
      out.print( dist.getDistrictName() );
      out.write("</option>\r\n");
      out.write("			");
 } 
      out.write("\r\n");
      out.write("          </select>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"col-1-3\">\r\n");
      out.write("        <div class=\"controls\">\r\n");
      out.write("          <i class=\"fa fa-sort\"></i>\r\n");
      out.write("    	 <select name=\"iletisimSokak\" id=\"sokakSelect\" disabled>\r\n");
      out.write("    	 ");
 	List<Sokak> sokak = Sokak.getAllSokak();
    	 	for (Sokak s : sokak) { 
      out.write("\r\n");
      out.write("				<option value=\"");
      out.print( s.getSokakID());
      out.write('"');
      out.write(' ');
      out.write('>');
      out.print( s.getSokakname());
      out.write("</option>\r\n");
      out.write("			");
 } 
      out.write("\r\n");
      out.write("          </select>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("  function toggleSokakSelect() {\r\n");
      out.write("    const mahalleSelect = document.getElementById('mahalleSelect');\r\n");
      out.write("    const sokakSelect = document.getElementById('sokakSelect');\r\n");
      out.write("\r\n");
      out.write("    if (mahalleSelect.value !== '') {\r\n");
      out.write("      sokakSelect.removeAttribute('disabled');\r\n");
      out.write("    } else {\r\n");
      out.write("      sokakSelect.setAttribute('disabled', 'disabled');\r\n");
      out.write("    }\r\n");
      out.write("  }\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("      <div class=\"controls\">\r\n");
      out.write("        <input type=\"text\" id=\"acikAdres\" class=\"floatLabel\" name=\"acikAdres\">\r\n");
      out.write("        <label for=\"acikAdres\">Açık Adres</label>\r\n");
      out.write("      </div>\r\n");
      out.write("    <div class=\"grid\">\r\n");
      out.write("      <div class=\"col-1-3\">\r\n");
      out.write("        <div class=\"controls\">\r\n");
      out.write("          <input type=\"text\" id=\"apartman\" class=\"floatLabel\" name=\"apartman\">\r\n");
      out.write("          <label for=\"apartman\">apartman</label>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"col-1-3\">\r\n");
      out.write("        <div class=\"controls\">\r\n");
      out.write("          <input type=\"text\" id=\"Blok\" class=\"floatLabel\" name=\"Blok\">\r\n");
      out.write("          <label for=\"Blok\">Blok</label>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"col-1-3\">\r\n");
      out.write("        <div class=\"controls\">\r\n");
      out.write("          <input type=\"number\" id=\"daireNo\" class=\"floatLabel\" name=\"daireNo\">\r\n");
      out.write("          <label for=\"daireNo\">daireNo</label>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  <div class=\"grid\">\r\n");
      out.write("    <div class=\"col-1-3\">\r\n");
      out.write("      <div class=\"controls\">\r\n");
      out.write("        <input type=\"number\" id=\"evTel\" class=\"floatLabel\" name=\"evTel\">\r\n");
      out.write("        <label for=\"evTel\">EvTel</label>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"col-1-3\">\r\n");
      out.write("      <div class=\"controls\">\r\n");
      out.write("        <input type=\"number\" id=\"cepTel\" class=\"floatLabel\" name=\"cepTel\">\r\n");
      out.write("        <label for=\"cepTel\">Cep Tel</label>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"col-1-3\">\r\n");
      out.write("      <div class=\"controls\">\r\n");
      out.write("        <input type=\"number\" id=\"digerTel\" class=\"floatLabel\" name=\"digerTel\">\r\n");
      out.write("        <label for=\"digerTel\">Diğer Tel</label>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("    <div class=\"grid\">\r\n");
      out.write("    <div class=\"col-1-2\">\r\n");
      out.write("      <div class=\"controls\">\r\n");
      out.write("        <input type=\"email\" id=\"eposta\" class=\"floatLabel\" name=\"eposta\">\r\n");
      out.write("        <label for=\"eposta\">EPosta</label>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("      <div class=\"col-1-2\">\r\n");
      out.write("        <div class=\"controls\">\r\n");
      out.write("          <input type=\"text\" id=\"adresTarif\" class=\"floatLabel\" name=\"adresTarif\">\r\n");
      out.write("          <label for=\"adresTarif\">Adres Tarifi</label>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div> <h2 class=\"heading\">Müracaat Bilgileri</h2>\r\n");
      out.write("  <div class=\"form-group\">\r\n");
      out.write("    <div class=\"grid\">\r\n");
      out.write("      <div class=\"col-1-2\">\r\n");
      out.write("        <div class=\"controls\">\r\n");
      out.write("          <input type=\"text\" id=\"arsivDosyaNo\" class=\"floatLabel\" name=\"arsivDosyaNo\">\r\n");
      out.write("          <label for=\"arsivDosyaNo\">Arşiv Dosya No</label>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"col-1-2\">\r\n");
      out.write("        <div class=\"controls\">\r\n");
      out.write("          <input type=\"date\" id=\"yonlendirmeTarih\" class=\"floatLabel\" name=\"yonlendirmeTarih\" value=\"<?php echo date('Y-m-d'); ?>\">\r\n");
      out.write("          <label for=\"yonlendirmeTarih\" class=\"label-date\"><i class=\"fa fa-calendar\"></i> yonlendirmeTarih</label>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"col-1-2\">\r\n");
      out.write("        <div class=\"controls\">\r\n");
      out.write("          <i class=\"fa fa-sort\"></i>\r\n");
      out.write("          <select name=\"Bolge\">\r\n");
      out.write("            ");
 for (Zone zones : zone) { 
      out.write("\r\n");
      out.write("            <option value=\"");
      out.print( zones.getZoneId() );
      out.write('"');
      out.write(' ');
      out.write('>');
      out.print( zones.getZoneName() );
      out.write("</option>\r\n");
      out.write("            ");
 } 
      out.write("\r\n");
      out.write("          </select>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"col-1-2\">\r\n");
      out.write("      <div class=\"controls\">\r\n");
      out.write("        <i class=\"fa fa-sort\"></i>\r\n");
      out.write("        <select name=\"muracaattip\">\r\n");
      out.write("          <option value=\"-1\" selected> Müracaat Tipi </option>\r\n");
      out.write("          <option value=\"1\" >ORa</option>\r\n");
      out.write("          <option value=\"2\" >Bura</option>\r\n");
      out.write("          <option value=\"3\">Boşanmış</option>\r\n");
      out.write("        </select>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"grid\">\r\n");
      out.write("      <div class=\"controls\">\r\n");
      out.write("        <textarea name=\"comments\" class=\"floatLabel\" id=\"aciklama\"></textarea>\r\n");
      out.write("        <label for=\"aciklama\">Açıklama</label>\r\n");
      out.write("      </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <h2 class=\"heading\">Dilekçe Bilgileri</h2>\r\n");
      out.write("    <div class=\"form-group\">\r\n");
      out.write("      <div class=\"grid\">\r\n");
      out.write("        <div class=\"col-1-2\">\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("            <input type=\"number\" id=\"dilekceRefNo\" class=\"floatLabel\" name=\"dilekceRefNo\">\r\n");
      out.write("            <label for=\"dilekceRefNo\">Dilekçe Ref No</label></div>\r\n");
      out.write("            <div class=\"controls\">\r\n");
      out.write("              <input type=\"number\" id=\"dilekceKonu\" class=\"floatLabel\" name=\"dilekceKonu\">\r\n");
      out.write("              <label for=\"dilekceKonu\">Dilekçe Konu</label></div>\r\n");
      out.write("              <div class=\"controls\">\r\n");
      out.write("                <input type=\"number\" id=\"dilekceSonuc\" class=\"floatLabel\" name=\"dilekceSonuc\">\r\n");
      out.write("                <label for=\"dilekceSonuc\">Dilekçe Sonuç</label></div>\r\n");
      out.write("                <div class=\"controls\">\r\n");
      out.write("                  <i class=\"fa fa-sort\"></i>\r\n");
      out.write("                  <select name=\"birim\">\r\n");
      out.write("                    <option value=\"-1\" selected> Yönlendiren Birim </option>\r\n");
      out.write("                    <option value=\"1\" >ORa</option>\r\n");
      out.write("                    <option value=\"2\" >Bura</option>\r\n");
      out.write("                    <option value=\"3\">Boşanmış</option>\r\n");
      out.write("                  </select>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"controls\">\r\n");
      out.write("                  <input type=\"date\" id=\"yonlendirTarihi\" class=\"floatLabel\" name=\"yonlendirTarihi\" value=\"<?php echo date('Y-m-d'); ?>\">\r\n");
      out.write("                  <label for=\"yonlendirTarihi\" class=\"label-date\"><i class=\"fa fa-calendar\"></i>Yönlendirme Tarihi</label>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"col-1-2\">\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("            <input type=\"number\" id=\"itdilekceRefNo\" class=\"floatLabel\" name=\"itdilekceRefNo\">\r\n");
      out.write("            <label for=\"itdilekceRefNo\">İtiraz Dilekçe Ref No</label></div>\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("            <input type=\"number\" id=\"itdilekceKonu\" class=\"floatLabel\" name=\"itdilekceKonu\">\r\n");
      out.write("            <label for=\"itdilekceKonu\">İtiraz Dilekçe Konu</label></div>\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("            <input type=\"number\" id=\"itdilekceSonuc\" class=\"floatLabel\" name=\"itdilekceSonuc\">\r\n");
      out.write("            <label for=\"itdilekceSonuc\">İtiraz Dilekçe Sonuç</label></div>\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("            <i class=\"fa fa-sort\"></i>\r\n");
      out.write("            <select name=\"birimitraz\">\r\n");
      out.write("              <option value=\"-1\" selected> Yönlendiren Birim </option>\r\n");
      out.write("              <option value=\"1\" >ORa</option>\r\n");
      out.write("              <option value=\"2\" >Bura</option>\r\n");
      out.write("              <option value=\"3\">Boşanmış</option>\r\n");
      out.write("            </select>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("            <input type=\"date\" id=\"ityonlendirTarihi\" class=\"floatLabel\" name=\"ityonlendirTarihi\" value=\"<?php echo date('Y-m-d'); ?>\">\r\n");
      out.write("            <label for=\"ityonlendirTarihi\" class=\"label-date\"><i class=\"fa fa-calendar\"></i>İtiraz Yönlendirme Tarihi</label>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("    <div>\r\n");
      out.write("      <button type=\"submit\" value=\"Submit\" class=\"col-1-4\">Submit</button>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <!--\r\n");
      out.write("        <div class=\"grid\">\r\n");
      out.write("      <div class=\"col-1-3 col-1-3-sm\">\r\n");
      out.write("        <div class=\"controls\">\r\n");
      out.write("          <i class=\"fa fa-sort\"></i>\r\n");
      out.write("          <select class=\"floatLabel\">\r\n");
      out.write("            <option value=\"1\">1</option>\r\n");
      out.write("            <option value=\"2\" selected>2</option>\r\n");
      out.write("            <option value=\"3\">3</option>\r\n");
      out.write("          </select>\r\n");
      out.write("          <label><i class=\"fa fa-male\"></i>&nbsp;&nbsp;People</label>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"col-1-3 col-1-3-sm\">\r\n");
      out.write("      <div class=\"controls\">\r\n");
      out.write("        <i class=\"fa fa-sort\"></i>\r\n");
      out.write("        <select class=\"floatLabel\">\r\n");
      out.write("          <option value=\"blank\"></option>\r\n");
      out.write("          <option value=\"deluxe\" selected>With Bathroom</option>\r\n");
      out.write("          <option value=\"Zuri-zimmer\">Without Bathroom</option>\r\n");
      out.write("        </select>\r\n");
      out.write("        <label for=\"fruit\">Room</label>\r\n");
      out.write("       </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"col-1-3 col-1-3-sm\">\r\n");
      out.write("      <div class=\"controls\">\r\n");
      out.write("        <i class=\"fa fa-sort\"></i>\r\n");
      out.write("        <select class=\"floatLabel\">\r\n");
      out.write("          <option value=\"blank\"></option>\r\n");
      out.write("          <option value=\"single-bed\">Zweibett</option>\r\n");
      out.write("          <option value=\"double-bed\" selected>Doppelbett</option>\r\n");
      out.write("        </select>\r\n");
      out.write("        <label for=\"fruit\">Bedding</label>\r\n");
      out.write("       </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("       </div>\r\n");
      out.write("        <div class=\"grid\">\r\n");
      out.write("          <p class=\"info-text\">Please describe your needs e.g. Extra beds, children's cots</p>\r\n");
      out.write("          <br>\r\n");
      out.write("          <div class=\"controls\">\r\n");
      out.write("            <textarea name=\"comments\" class=\"floatLabel\" id=\"comments\"></textarea>\r\n");
      out.write("            <label for=\"comments\">Comments</label>\r\n");
      out.write("            </div>\r\n");
      out.write("              <button type=\"submit\" value=\"Submit\" class=\"col-1-4\">Submit</button>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>  /.form-group -->\r\n");
      out.write("</form>\r\n");
      out.write("<!-- partial -->\r\n");
      out.write("  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>\r\n");
      out.write("<script src='//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery-ui-autocomplete.js'></script>\r\n");
      out.write("<script src='//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery.select-to-autocomplete.js'></script>\r\n");
      out.write("<script src='//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery.select-to-autocomplete.min.js'></script><script  src=\"js/muracat.js\"></script>\r\n");
      out.write("\r\n");
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
