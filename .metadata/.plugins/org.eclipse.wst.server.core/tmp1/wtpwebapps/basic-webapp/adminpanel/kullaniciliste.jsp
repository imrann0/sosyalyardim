<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="com.example.example.DataBase.Personel" %>
<%@ page import="com.example.example.DataBase.Personel.RoleUtils" %>
<%@ page import="java.util.List" %>
<%
  List<Personel> users = Personel.getAllUserInfo();

HttpSession userSession = request.getSession();
String roleName = "Role_Kullanıcı_Listele";

if (!RoleUtils.hasRole(userSession, roleName)) {
    response.sendRedirect("../Error/Error.html");
}
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
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  
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
  
</head>
<body class="hold-transition sidebar-mini sidebar-collapse layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="anasayfa.html" class="nav-link">Anasayfa</a>
      </li>
    </ul>

    <!-- SEARCH FORM -->
    

    <!-- Right navbar links -->
    
  </nav>
  <!-- /.navbar -->

  <%@include file="sidebar.jsp"%>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content-wrapper">
      
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        
        <!-- /.row -->
        <!-- Main row -->
	        <div class="row">
	          
		          <div class="col-12">
		            <div class="card">
		                <div class="card-header d-flex justify-content-center">
		                    <h3 class="card-title font-weight-bold">KULLANICI LİSTESİ</h3>                	                
						</div><!-- /.card-header -->
		                <div class="card-body">
		                  <table id="example2" class="table table-bordered table-hover">
		                    <thead>
		                    <tr>
		
		
		                        <th>ID</th>
		                        <th>Kullanıcı Adı</th>
		                        <th>Sicil No</th>
		                        <th>Ad</th>
		                        <th>Ünvan</th>
		                        <th>Telefon</th>
		                        <th>Cinsiyet</th>
		                        <th>Durum</th>
		                        <th></th>
		                        <th></th>
                            <th></th>

		                        
		                    </tr>
		
		                    </thead>
		                    <tbody>
		                    <%
		                      for(Personel user : users){ %>
		                    <tr>
		                      <td><%= user.getId()%></td>
		                      <td><%= user.getUserName()%></td>
		                      <td><%= user.getRegistrationNo()%></td>
		                      <td><%= user.getName()%></td>
		                      <td><%= user.getUnvan()%></td>
		                      <td><%= user.getPhone()%></td>
		                      <td><%= user.getGender()%></td>
		                      <td><%= user.getStatus()%></td>
		                      <td><a href="kullaniciduzenle.jsp?userId=<%= user.getId() %>"><button type="submit" class="btn btn-info">Düzenle</button></a>
		                      </td>
		                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
		                    </tr>
		                    <% } %>           
		                    </tbody>

		                  </table>
		                </div>
		                <!-- /.card-body -->
		              </div>
		            <!-- /.card -->
		          </div>
	          <!-- Modal -->
	
	        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
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
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true,
      "autoWidth": false,
    });
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
  <script>
    function confirmDelete() {
        // Bootstrap modal for confirmation dialog
        var confirmationModal = `
            <div class="modal fade" id="deleteConfirmationModal" tabindex="-1" role="dialog" aria-labelledby="deleteConfirmationModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="deleteConfirmationModalLabel">Kullanıcıyı Sil</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            Kullanıcıyı silmek istediğinize emin misiniz?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">İptal</button>
                            <button type="button" class="btn btn-danger" onclick="deleteUser()">Sil</button>
                        </div>
                    </div>
                </div>
            </div>
        `;

        // Append modal to the document body
        document.body.insertAdjacentHTML('beforeend', confirmationModal);

        // Show the confirmation modal
        $('#deleteConfirmationModal').modal('show');
    }

    function deleteUser() {
        // Perform delete operation here
        // This function will be called when the user confirms the deletion
        // You can add your code to delete the user from the system

        // After successful deletion, you may redirect the user or update the table accordingly

        // Close the confirmation modal
        $('#deleteConfirmationModal').modal('hide');
    }
  </script>




</body>
</html>
