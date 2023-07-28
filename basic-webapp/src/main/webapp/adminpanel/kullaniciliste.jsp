<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="com.example.example.DataBase.Personel" %>
<%@ page import="com.example.example.DataBase.Personel.RoleUtils" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Objects" %>
<%

  HttpSession userSession = request.getSession();

  if(!Rol.hasRole(userSession,"Role_Kullanıcı_Listele")){
    response.sendRedirect("../Error/Error.html");
  }
  List<Personel> users = Personel.getAllUserInfo();
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
   <style>
   	 .card-header {
    border-bottom: 2px solid gray; /* Replace with your preferred color */
    margin-bottom: 10px; /* Adjust as needed */
  }

    .pagination .page-item.active .page-link {
	    background-color: #17a2b8; /* Kırmızı renk (#ff0000) olarak ayarlandı */
	    border-color: #17a2b8; /* Kenarlık rengi de kırmızı yapılıyor */
	    color: #fff !important; /* Metin rengi beyaz (#fff) olarak ayarlandı */
	  }
    /* DataTables stil düzenlemesi */
    .dataTables_wrapper {
      position: relative;
      padding: 20px; /* Arkaya gölge için içeriği itin */
      border-radius: 10px; /* Köşeleri keskin olmaktan çıkarın */
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2); /* Gölgeli efekti ekle */
    }
    .custom-datatable {
    position: relative;
    padding: 40px; /* Arkaya gölge için içeriği itin */
    border-radius: 10px; /* Köşeleri keskin olmaktan çıkarın */
    box-shadow: 0 2px 6px rgba(44, 166, 234, 0.6); /* Gölgeli efekti ekle */ /* Gölgeli efekti ekle */
    margin-top: 50px;
    margin-left: 50px;
    margin-right: 50px; /* Sol boşluk bırakmayın */
    
  }
  	.custom-datatable td {
	    font-size: 14px; /* Metin boyutunu ayarlayın */
	    font-family: Arial, sans-serif; /* Yazı tipini belirleyin */
	   	background-color: #f2f2f2; /* Arka plan rengini ayarlayın */
    	color: #333; /* Metin rengini ayarlayın */
  }
  	.custom-datatable th {
  		padding: 10px; /* Arkaya gölge için içeriği itin */
	    /* Köşeleri keskin olmaktan çıkarın */
	   
  	
	    font-size: 14px;
	    font-weight: bold;
	     /* Metin boyutunu ayarlayın */
	    font-family: Arial, sans-serif; /* Yazı tipini belirleyin */
	   
  }
  	.custom-datatable h3.card-title {
	  font-size: 24px; /* Yazı boyutunu istediğiniz gibi ayarlayın */
	  font-weight: bold;
	  font-family: Arial, sans-serif; /* Kalın yazı tipi */
	  text-align: center; /* Yazıyı ortala */
	  margin-bottom: 20px; /* Aşağıya boşluk bırakın */
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
    
      
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        
        <!-- /.row -->
        <!-- Main row -->
	        <div class="row">
	          
		          <div class="col-12">
		            <div class="card custom-datatable">
		                <div class="card-header d-flex justify-content-center">
						    <h3 class="card-title font-weight-bold" style="color: black;">
						        <i class="fas fa-users" style="margin-right: 10px;"></i>
						        Kullanıcı Listesi
						    </h3>
						     
						</div>
						
<!-- /.card-header -->
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
                          <td><% if(Objects.equals(user.getGender(), "E")){%>Erkek<%}else{%>Kadın<% }%></td>

		                      <td><% if(user.getStatus()==1){%>Aktif<%}else{%>Pasif<% }%></td>
		                      <td>
								  <div class="d-flex justify-content-between align-items-center">
								    <a href="kullaniciduzenle.jsp?userId=<%= user.getId() %>">
								      <i class="fa fa-cog" style="font-size: 20px; color:#17a2b8; cursor: pointer;"></i>
								    </a>
								    <i class="fa fa-trash" style="font-size: 20px; color: #17a2b8; cursor: pointer;" onclick="confirmDelete()"></i>
								  </div>
								</td>


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
  $(document).ready(function() {
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
      "language": {
        "url": "tr.json"
      }
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
