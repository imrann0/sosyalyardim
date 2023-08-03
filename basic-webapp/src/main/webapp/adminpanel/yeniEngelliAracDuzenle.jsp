



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
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
	<style>
  		 .hidden {
		    display: none;
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
    }
    .custom-datatable {
    position: relative;
    padding: 40px; /* Arkaya gölge için içeriği itin */
    border-radius: 10px; /* Köşeleri keskin olmaktan çıkarın */
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.4); /* Gölgeli efekti ekle */
    margin-top: 30px;
    margin-left: 30px;
    margin-right: 30px; /* Sol boşluk bırakmayın */
    overflow-x: auto;
    
    
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
	
	.koyu-yazi {
  color: #000000; /* Siyah rengin hexadecimal kodu */
  /* Diğer stil özelliklerini burada belirtebilirsiniz */
}
    
  </style>
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
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Engelli Araç Hizmet Düzenleme</h1>
              <ol class="breadcrumb ">
              <li class="breadcrumb-item"><a href="#">Anasayfa</a></li>
              <li class="breadcrumb-item"><a href="#">Müracatlar</a></li>
              <li class="breadcrumb-item"><a href="#">Müracat Listesi</a></li>
              <li class="breadcrumb-item active">Engelli Araç Hizmet Düzenleme</li>
            </ol>
          </div>
        
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Engelli Araç Hizmet Tanımlama</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form>
                <div class="card-body">
                
                
                 
                   <div class="form-group row m-2">
                    <label   class="col-sm-2 col-form-label">TC Kimlik Numarası</label>
                    <div class="col-sm-4">
                      ***
                    </div>
                    
                    <label   class="col-sm-2 col-form-label">Ev Tel:</label>
                    <div class="col-sm-4">
                      ***
                    </div>
                    
                  </div>
                  
                  
                  

                  <div class="form-group row m-2">
                  
                  <label   class="col-sm-2 col-form-label">Müracaat No - Müracaat Eden:</label>
                    <div class="col-sm-4">
                      **
                    </div>
                    
                    
                    <label   class="col-sm-2 col-form-label">Cep Tel:</label>
                    <div class="col-sm-4"> 
                    ***
                    </div>
                  </div>

                  <div class="form-group row m-2">
                  
                  <label   class="col-sm-2 col-form-label">Eş Adı Soyadı</label>
                    <div class="col-sm-4">
                      ****
                    </div>
                    
                    <label   class="col-sm-2 col-form-label">Medeni Hali</label>
                    <div class="col-sm-4">
                      *****
                    </div>
                  </div>
                  
                   
                   
                  
                  
                   <div class="form-group row m-2">
                  
                  <label   class="col-sm-2 col-form-label"> Doğum Tarihi:</label>
                    <div class="col-sm-4">
                      ****
                    </div>
                    
                    <label   class="col-sm-2 col-form-label">Adresi:</label>
                    <div class="col-sm-4">
                      *****
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                   
                </div>
              </form>
            </div>
            <!-- /.card -->




  <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Engelli Bilgileri</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form>
                <div class="card-body">
                
                 <div class="form-group row m-2">
                    <label   class="col-sm-2 col-form-label">Engelli Kodu</label>
                    <div class="col-sm-4">
                      ***
                    </div>
                    
                     
                    <div class="col-sm-6">
                      ***
                    </div>
                    
                  </div>
                 
                   <div class="form-group row m-2">
                    <label   class="col-sm-2 col-form-label">Engelli Tip Adı</label>
                    <div class="col-sm-4">
                      ***
                    </div>
                    
                    <label   class="col-sm-2 col-form-label">Engelli Alt Tip Adı</label>
                    <div class="col-sm-4">
                      ***
                    </div>
                    
                  </div>
                  
                  
                

                
                  
                
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                   
                </div>
              </form>
            </div>
            <!-- /.card --> 

		<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Engelli Araç Hizmet Bilgileri</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form>
                <div class="card-body">
                
                <div class="form-group row">
                
                 <label   class="col-sm-2 col-form-label">Yönlendirilen Kurum:
</label>
                    <div class="col-sm-4">                    
                      <input type="text" class="form-control" id="yKurum"  >
                    </div>
                    
                    
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Hizmet Kayıt Tarihi:</label>
                    <div class="col-sm-4">
                      <input type="date" class="form-control" id="kTarihi" placeholder="Hizmet Kayıt Tarihi">
                    </div>
                  </div>
                 
                  
                  
                   <div class="form-group row">
                
                 <label   class="col-sm-2 col-form-label">Yönlendirilen Alt Kurum:</label>
                    <div class="col-sm-4">                    
                        <select class="form-control">
                          <option>option 1</option> 
                        </select>
                    </div>
                    
                    
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Yardım Statü:</label>
                    <div class="col-sm-4">                    
                        <select class="form-control">
                          <option>option 1</option> 
                        </select>
                    </div>
                  </div>
                  
                   
                   
                   
                      <div class="form-group row">
                
                 <label   class="col-sm-2 col-form-label">Engelli Araç:</label>
                    <div class="col-sm-4 input-group">                    
                         <input type="text" class="form-control">
                  <span class="input-group-append">
                    <button type="button" class="btn btn-info btn-flat">Ara!</button>
                  </span>
                    </div>
                    
                    
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Randevu Tarihi:</label>
                    <div class="col-sm-4">                    
                         <input type="text" class="form-control"> 
                    </div>
                  </div>
                  
                  
                  
                    <div class="form-group row">
                
                 <label   class="col-sm-2 col-form-label">Engelli Açıklama:</label>
                    <div class="col-sm-4">                    
                        <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
                    </div>
                    
                    
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Randevu Saati:</label>
                    <div class="col-sm-4">           
                  <select class="form-control">
                          <option>option 1</option> 
                        </select>
                    </div>
                  </div>
              
                </div>
                <!-- /.card-body -->

                <div class="card-footer"> 
                
                  <button type="submit" class="btn btn-info">Kaydet</button>
                  <button type="submit" class="btn btn-default ">Temizle</button>
                </div>
              </form>
            </div>
            <!-- /.card -->





  
            <!-- /.card -->
           
           
    
        <!-- /.row -->
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





</body>
</html>