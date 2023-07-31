<%@ page import="com.example.example.DataBase.Zone" %>
<%@ page import="com.example.example.DataBase.District" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  HttpSession userSession = request.getSession();
  if(!Rol.hasRole(userSession,"Role_Bolge_Ekle")){
    response.sendRedirect("../Error/Error.html");
  }
  List<Zone> zone = Zone.getAllAktifZone();
  List<District> mahalle = District.getAllDistrict();
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
	  .form-heading {
	    font-size: 17px;
	    font-weight: bold;
	    color: black; /* Change the color to your desired heading color */
	    margin-bottom: 10px; /* Add some spacing between headings and form fields */
	    
	  }
	  .card-info{
			position: relative;
		    padding: 40px; /* Arkaya gölge için içeriği itin */
		    border-radius: 10px; /* Köşeleri keskin olmaktan çıkarın */
		    box-shadow: 0 2px 6px rgba(44, 166, 234, 0.6); /* Gölgeli efekti ekle */
		    margin-top: 50px;
		    margin-left: 30px;
		    margin-right: 30px;
		}
	</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <%@include file="navbar.jsp"%>
  <!-- /.navbar -->

  <%@include file="sidebar.jsp"%>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    
    <!-- /.content-header -->

    <!-- Main content -->
    
      
      <div class="container">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="card card-info">
                    <div class="card-header d-flex justify-content-center"">
                        <h3 class="card-title">
					    <i class="fa fa-address-book" aria-hidden="true" style="margin-right: 10px;"></i>
						  Bölge Tanımlama
					  </h3>
                    </div>
    
                    <!-- form başlangıcı -->
                    <form action="BolgeTanim" role="form" method="post" >
                        <div class="card-body">
                          <div class="row">
                            <div class="col-sm-6">
                              <!-- select -->
                              <div class="form-group">
                                <label>Bölge Adı</label>
                                <select name="BolgeId" class="form-control">
                                  <%for(Zone bolge : zone){%>
                                  <option  value="<%=bolge.getZoneId()%>"><%=bolge.getZoneName()%></option>
                                  <% }%>
                                </select>
                              </div>
                            </div>
                            <div class="col-sm-6">
                              <!-- select -->
                              <div class="form-group">
                                <label>Mahalle Adı</label>
                                <select name="MahId" class="form-control">
                                  <%for(District mah : mahalle){%>
                                  <option  value="<%=mah.getDistrictID()%>"><%=mah.getDistrictName()%></option>
                                  <%}%>
                                </select>
                              </div>
                            </div>
                            
                          </div>
                          
                          

                        </div>
                        <!-- form sonu -->
    
                        <div class="d-flex justify-content-center"> <!-- Butonu ortalamak için d-flex ve justify-content-center sınıflarını kullanıyoruz -->
					      	<button type="submit" class="btn btn-info">Kaydet</button>
					    </div>
                    </form>
                </div>
                <!-- Modal -->
            </div>
        </div>
      </div>
    
    <!-- /.content -->
  </div>
  
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong><a href="https://www.gebze.bel.tr/">Gebze Belediyesi  </a></strong>
    
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
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
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


<!-- Bootstrap 4 -->

<!-- DataTables -->

<!-- AdminLTE App -->

<!-- AdminLTE for demo purposes -->

<!-- page script -->





</body>
</html>
