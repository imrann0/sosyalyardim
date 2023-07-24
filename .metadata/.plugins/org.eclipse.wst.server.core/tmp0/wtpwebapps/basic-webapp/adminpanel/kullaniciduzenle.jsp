
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.example.DataBase.Rol" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.example.DataBase.Personel" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Set" %>
<%@ page import="com.example.example.RoleControl" %>

<%
    String userId = request.getParameter("userId");
    int Id = Integer.parseInt(userId);
    Personel user = Personel.getUserInfoById(userId);
    Set<Rol> hasRoles = RoleControl.getRolesByUserId(Id);
    Set<Rol> notHasRoles = RoleControl.getNotAssignedRolesByUserId(Id);
    List<Rol> roles = Rol.getAllRoles();

%>


<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Gebze Belediyesi | Yönetim Paneli</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <style>
  /* Sidebardaki "Anasayfa", "İşlemlerim", "Yönetici İşlemleri" ve "Raporlar" başlıklarının yazı rengini ve arka plan rengini belirgin hale getir */
  
  #islemlerim.nav-link,
  #yonetici.nav-link,
  #rapor.nav-link {
    color: #fff; /* Yazı rengini istediğiniz renk koduyla değiştirebilirsiniz */
    background-color:	#494949; /* Arka plan rengini istediğiniz renk koduyla değiştirebilirsiniz */
  }
</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="anasayfa.jsp" class="nav-link">Anasayfa</a>
      </li>
      
    </ul>

    <!-- SEARCH FORM -->
    

    <!-- Right navbar links -->
    
  </nav>
  <!-- /.navbar -->
	<%@include file="sidebar.jsp"%>
  <!-- Main Sidebar Container -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">  
    <!-- /.content-header -->
    <!-- Main content -->
    <section class="content-wrapper">      
      <div class="container">
        <!-- Small boxes (Stat box) -->      
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
          <div class="card card-primary col-md-10">
            <div class="card-header d-flex justify-content-center">
              <h3 class="card-title">Kullanıcı Düzenle</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form action="adminupdate" method="post">
              <div class="card-body">
                <div class="row">
                  <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group">
                      <label>E-Posta</label>
                        <input type="hidden" name="userId" class="form-control" value="<%= user.getId() %>" required>
						<input type="email"  name="email" class="form-control" value="<%= user.getMail() %>" required>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>Ünvan</label>
                      <input type="text" class="form-control"  name="unvan" value="<%= user.getUnvan() %>" required>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group">
                      <label>Kullanıcı Adı</label>
                      <input type="text" class="form-control"  name="username" value="<%= user.getUserName() %>" required>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>Şifre</label>
                      <input type="password" class="form-control" name="password" value="<%= user.getPassword() %>" required>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group">
                      <label>Ad</label>
                      <input type="text" class="form-control"  name="name" value="<%= user.getName() %>" required>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>Soyad</label>
                      <input type="text" class="form-control" name="surname" value="<%= user.getSurname() %>" required>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group">
                      <label>Sicil No</label>
                        <input type="text" class="form-control" pattern="[0-9]{13}"  name="sicilNo" value="<%= user.getRegistrationNo() %>" required>

                    </div>
                    
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>Cinsiyet</label>
                      <div class="form-group clearfix">
                        <div class="icheck-primary d-inline">
							<input type="radio" id="radioPrimary1" name="cinsiyet" value="E" <%= user.getGender().equals("E") ? "checked" : "" %> required>
                          <label for="radioPrimary1">
                            Erkek
                          </label>
                        </div>
                        
                        <div class="icheck-primary d-inline">
                			<input type="radio" id="radioPrimary3" name="cinsiyet" value="K" <%= user.getGender().equals("K") ? "checked" : "" %> required>
                          <label for="radioPrimary3">
                            Kadın
                          </label>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>Telefon</label>
                      <input type="tel" class="form-control" name="phone" pattern="[0-9]{11}"  value="<%= user.getPhone() %>" required>
                    </div>
                    
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>Durum</label>
                      <div class="form-group clearfix">
                        <div class="icheck-primary d-inline">
                			<input type="radio" id="radioPrimary2" name="durum" value="1" <%= user.getStatus() == 1 ? "checked" : "" %> required>
                          <label for="radioPrimary2">
                            Aktif
                          </label>
                        </div>
                        
                        <div class="icheck-primary d-inline">
                			<input type="radio" id="radioPrimary4" name="durum" value="0" <%= user.getStatus() == 0 ? "checked" : "" %> required>
                          <label for="radioPrimary4">
                            Pasif
                          </label>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                
                
                <div class="row">
                  <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group">
                      <label>Adres</label>
						<textarea class="form-control" rows="3" name="address" required><%= user.getAddress() %></textarea>
                    </div>
                    
                  </div>
                  <div class="col-sm-6">
                    <!-- select -->
                    <div class="form-group">
                      <label>Bölüm</label>
                      <select class="form-control" name="selectedBolum">
                        <option value="Yazilim"  <%= user.getSection().equals("Yazilim") ? "selected" : "" %> >Yazılım</option>
                        <option value="Yonetici" <%= user.getSection().equals("Yonetici") ? "selected" : "" %>>Yönetiçi</option>
                        <option value="Danisma" <%= user.getSection().equals("Danisma") ? "selected" : "" %>>Danışma</option>
                        <option value="Baskanlik" <%= user.getSection().equals("Yazilim") ? "selected" : "" %>>Başkanlık</option>
                        <option value="Seflik" <%= user.getSection().equals("Baskanlik") ? "selected" : "" %>>Şeflik </option>
                        <option value="Depo-Dagıtım" <%= user.getSection().equals("Depo-Dagıtım") ? "selected" : "" %>>Depo - Dağıtım </option>
                        <option value="Saha_Ekibi" <%= user.getSection().equals("Saha_Ekibi") ? "selected" : "" %>>Saha Ekibi </option>
                        <option value="Market-Inkılap" <%= user.getSection().equals("Market-Inkılap") ? "selected" : "" %>>Market - İnkılap </option>
                        <option value="Market-Necip_Fazıl" <%= user.getSection().equals("Market-Necip_Fazıl") ? "selected" : "" %>>Market - Necip Fazıl </option>
                      </select>
                    </div>
                  </div>
                  
                </div>
                <label>Roller:</label>
				<div class="form-group">
				    <% for (Rol role : roles) { %>
				        <div class="form-check form-check-inline">
				            <input class="form-check-input" type="checkbox" id="rol<%= role.getId() %>" name="roles" value="<%= role.getId() %>" <% if (RoleControl.hasUserRole(Id, role.getId()) == 1) { %>checked<% } %>>
				            <label class="form-check-label" for="rol<%= role.getId() %>"><%= role.getRoleName() %></label>
				        </div>
				    <% } %>
				</div>



                
        
              </div>
              <!-- /.card-body -->

              <div class="card-footer d-flex justify-content-center">
                <button type="submit" class="btn btn-primary">Kullanıcı Düzenle</button>
              </div>
              
            </form>
          </div>
          
          
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong><a href="https://www.gebze.bel.tr/">Gebze Belediyesi</a></strong>
    
    <div class="float-right d-none d-sm-inline-block">
      <b>2023</b>
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script src="../../plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
<script>
  var select1 = document.getElementById("select1");
  var select2 = document.getElementById("select2");

  // İlk kutudan seçenek seçildiğinde senkronize et
  select1.addEventListener("change", function() {
    var selectedOptions = Array.from(select1.selectedOptions);

    selectedOptions.forEach(function(option) {
      select2.appendChild(option);
      option.selected = false;
    });
  });

  // İkinci kutudan seçenek seçildiğinde senkronize et
  select2.addEventListener("change", function() {
    var selectedOptions = Array.from(select2.selectedOptions);

    selectedOptions.forEach(function(option) {
      select1.appendChild(option);
      option.selected = false;
    });
  });
</script>

</body>
</html>
