<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="com.example.example.DataBase.Personel" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.example.DataBase.IDInfo" %>
<%@ page import="com.example.example.DataBase.District" %>
<%@ page import="com.example.example.DataBase.Sokak" %>
<%@ page import="com.example.example.DataBase.Zone" %>
<%@ page import="com.example.example.DataBase.HelpType" %>
<%
  List<Personel> users = Personel.getAllUserInfo();
  List<District> mahalle = District.getAllDistrict();
  List<Zone> bolge = Zone.getAllZone();
  List<Sokak> sokak = Sokak.getAllSokak();
  List<IDInfo> info = IDInfo.getAll();
  List<HelpType> help = HelpType.getAll();
  /*
HttpSession userSession = request.getSession();
String roleName = "Role_Kullanıcı_Listele";

if (!RoleUtils.hasRole(userSession, roleName)) {
    response.sendRedirect("../login.jsp");
}
*/
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
	.card-info{
		position: relative;
	    padding: 40px; /* Arkaya gölge için içeriği itin */
	    border-radius: 10px; /* Köşeleri keskin olmaktan çıkarın */
	    box-shadow: 0 2px 6px rgba(44, 166, 234, 0.6); /* Gölgeli /* Gölgeli efekti ekle */
	    margin-top: 30px;
	    margin-left: 30px;
	    margin-right: 30px;
	}
	.koyu-yazi {
  color: #000000; /* Siyah rengin hexadecimal kodu */
  /* Diğer stil özelliklerini burada belirtebilirsiniz */
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
      	<button type="button" id="toggleInputsBtn" class="btn btn-info">Müracaat Liste Sorgulama</button>
      
        <!-- Small boxes (Stat box) -->
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="card card-info" id="müracaatKriterleriCard">
                    <div class="card-header d-flex justify-content-center">
                        <h3 class="card-title">Müracaat Liste Kriterleri</h3> 
                    </div>
    
                    <!-- form başlangıcı -->
					<form action="SearchServlet" method="post">
                        <div class="card-body">
                          <div class="row">
                          	<div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Müracaat No</label>
                                <input type="text" class="form-control" name="muracatno">
                                                                   
                               
                              </div>
                            </div>
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Tc Kimlik No</label>
                                <input type="text" class="form-control" name="tckimlikk">

                                
                              </div>
                              
                            </div>
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Ad</label>
                                <input type="text" class="form-control" name="add">
                                                                   
                               
                              </div>
                            </div>
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Soyad</label>
                                <input type="text" class="form-control" name="soyadd">
                              </div>
                            </div>
                          </div>
                          <div class="row">
                          	<div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>İlçe</label>
				                      <select class="form-control" name="il">
				                        <option value="Gebze" selected>Gebze</option>
				                      </select>
                              </div>
                            </div>
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Mahalle</label>
                                	<select class="form-control" name="mahalle">
                                	<% for(District mah : mahalle) {%>
				                        <option value="<%= mah.getDistrictID() %>" ><%= mah.getDistrictName() %></option>
				                      <%} %> 
				                      </select>
                              </div>
                              
                            </div>
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Cadde/Sokak</label>
                                	<select class="form-control" name="sokak">
                                	 <% for(Sokak sk : sokak) {%>
				                        <option value="<%= sk.getSokakID() %>" ><%= sk.getSokakname() %></option>
				                        <%} %>
				                      </select>
                                                                   
                               
                              </div>
                            </div>
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>İtiraz Dilekçe Ref No</label>
                                <input type="text" class="form-control" name="itrazdilekce">
                                                                   
                               
                              </div>
                              
                            </div>
                            
                            
                          </div>
                          <div class="row">
                          	<div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Dilekçe Ref No</label>
                                <input type="text" class="form-control" name="dilekcerefno">
                                                                   
                               
                              </div>
                            </div>
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Arşiv Dosya No</label>
                                <input type="text" class="form-control" name="arsivdosyano">

                                
                              </div>
                              
                            </div>
                            
                              <div class="col-sm-6">
								    <div class="form-group text-center">
								        <label>Doğum Tarihi Aralığı</label>
								        <div class="input-group">
								            <input type="date" class="form-control" name="baslangic_tarihi">
								            <div class="input-group-text">-</div>
								            <input type="date" class="form-control" name="bitis_tarihi">
								        </div>
								    </div>
								

							    </div>
                            
                            
                            
                            
                          </div>
                          <div class="row">
                          	<div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Müracaat Durumu</label>

				                      <select class="form-control" name="muracaatdurum">
				                        <option value="Yazilim" >Aktif</option>
				                        <option value="Yazilim" >Pasif Vefat</option>
				                        <option value="Yazilim" >Pasif İlçe Dışına taşınmış</option>
				                        
				                        
				                      </select>
                                                                   
                               
                              </div>
                            </div>
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Bölge</label>
                                <select class="form-control" name="bolge">
                                <% for(Zone bol : bolge) { %>
				                        <option value="<%= bol.getZoneId() %>" ><%= bol.getZoneName() %></option>
				                 <%} %>
				                        
				                 </select> 
                              </div>
                              
                            </div>
                            
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Kayıt Durumu</label>
                                <select class="form-control" name="kayıtDurum">
				                        <option value="Yazilim" >Yeni Kayıt</option>
				                        <option value="Yazilim" >Eski Kayıt</option>
				                        <option value="Yazilim" >Durum Değişikliği</option>       
				                 </select>
                                                                   
                               
                              </div>
                            </div>
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Yardım Alma Durumu</label>
                                <select class="form-control" name="YardimDurum">
				                        <option value="Yazilim" >Hepsi</option>
				                        <option value="Yazilim" >Yardım Alan</option>
				                        <option value="Yazilim" >Yardım Almayan</option>     
				                 </select>
                              </div>
                              
                            </div>
                            
                            
                          </div>
                          <div class="row">
                          	<div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Soybis</label>
                                 <select class="form-control" name="saybisdurum">
				                        <option value="Yazilim" >Alındı</option>
				                        <option value="Yazilim" >Alınmadı</option> 
				                 </select>
                                                                   
                               
                              </div>
                            </div>
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Ev Tel</label>
                                <input type="tel" class="form-control" name="evtel">

                                
                              </div>
                              
                            </div>
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Cep Tel</label>
                                <input type="tel" class="form-control" name="ceptel">
                                                                   
                               
                              </div>
                            </div>
                            <div class="col-sm-3">
                              <div class="form-group text-center">
                                <label>Adres No</label>
                                <input type="tel" class="form-control" name="addressNo">
                                                                   
                               
                              </div>
                              
                            </div>
                            
                            
                          </div>
                          <div class="row">
                          	
                            <div class="col-sm-6">
								    <div class="form-group text-center">
								        <label>Müracaat Tarihi</label>
								        <div class="input-group">
								            <input type="date" class="form-control" name="baslangic_tarihi">
								            <div class="input-group-text">-</div>
								            <input type="date" class="form-control" name="bitis_tarihi">
								        </div>
								    </div>
								

							 </div>
							 
                            <div class="col-sm-3">
							    <!-- Select multiple-->
							    <div class="form-group">
							        <label>Talep Edilen Yardımlar</label>
							        <select multiple class="form-control" name="yardim">
							        <% for(HelpType h : help){ %>
							            <option value="<%= h.getHelpId()%>"><%= h.getHelpName() %></option>
							            <%} %>
							        </select>
							    </div>
							</div>    
                          </div>
                        </div>
                        
			            <div class="d-flex justify-content-center"> <!-- Butonu ortalamak için d-flex ve justify-content-center sınıflarını kullanıyoruz -->
    					<button type="submit" class="btn btn-info">Sorgula</button>
					    </div>
                        <!-- form sonu -->
                    </form>
                </div>
                <!-- Modal -->
            </div>
        </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
          
          <div class="col-12">
		            <div class="card custom-datatable">
		              
		                <div class="card-header d-flex justify-content-center">
		                    <h3 class="card-title font-weight-bold">MÜRACAAT LİSTESİ</h3>                	                
						</div><!-- /.card-header -->
		                <div class="card-body">
		               	  
		               	     
			                	<div class="table-responsive" style="overflow-x: auto;">
			                		<% List<IDInfo> filteredUsers = (List<IDInfo>) request.getAttribute("filteredUsers");
								   if (filteredUsers != null && !filteredUsers.isEmpty()) { %>
					                  <table id="example2" class="table table-bordered table-hover" style="width: 100%; table-layout: fixed;">
					                  	<colgroup>
					                  		<col style="width: 200px;">
			                                <col style="width: 140px;">
			                                <col style="width: 140px;">
			                                <col style="width: 180px;">
			                                <col style="width: 140px;">
			                                <col style="width: 170px;">
			                                <col style="width: 160px;">
			                                <col style="width: 140px;">
			                                <col style="width: 140px;">
			                                <col style="width: 140px;">
			                                <col style="width: 140px;">
			                                <col style="width: 140px;">
			                                <col style="width: 140px;">
			                                <col style="width: 140px;">
			                                <col style="width: 140px;">
			                                <col style="width: 180px;">
			                                <col style="width: 190px;">
			                                <col style="width: 180px;">
			                                <col style="width: 150px;">
			                                <col style="width: 150px;">
			                                <col style="width: 100px;">
			                                
			                                
			                                <!-- Add additional columns here -->
			                                <!-- For example:
			                                <col style="width: 250px;">
			                                <col style="width: 150px;">
			                                -->
		                           	 	</colgroup>
					                    <thead>
					                    <tr>
					
											<th></th>
					                        <th>Müracaat No</th>
					                        <th>TC Kimlik No</th>
					                        <th>Müracaat Eden Kişi</th>
					                        <th>Eş Adı Soy Adı</th>
					                        <th>Arşiv Dosya No</th>
					                        <th>Müracaat Tarihi</th>
					                        <th>Doğum Tarihi</th>
					                        <th>Medeni Hali</th>
					                        <th>İlçe</th>
					                        <th>Mahalle</th>
					                        <th>Cadde/Sokak</th>
					                        <th>Ev Tel</th>
					                        <th>Cep Tel</th>
					                        <th>İş Tel</th>
					                        <th>Müracaat Durumu</th>
					                        <th>Talep Edilen Yardımlar</th>
					                        <th>İtiraz Dilekçe Ref No</th>
					                        <th>Açıklama</th>
					                        <th>Kayıt Durumu</th>
					                        <th>Soybis</th> 
					                    </tr>
					                    </thead>
					                    <tbody >     
					                         <% for (IDInfo in : filteredUsers) { %>
					                    <tr>
					                      <td>
											  <a href="profile.jsp">
											    	<i class="fa fa-cog" style="font-size: 20px; color:#17a2b8; cursor: pointer;"></i>
											  </a>
											  <a href="#">
											    	<i class="fa fa-cog" style="font-size: 20px; color:#17a2b8; cursor: pointer;"></i>
											  </a>
											  <a href="profile.jsp">
											    	<i class="fa fa-cog" style="font-size: 20px; color:#17a2b8; cursor: pointer;"></i>
											  </a>
											  <a href="MuracatListesic.jsp">
											    	<i class="fa fa-eye" style="font-size: 20px; color:black; cursor: pointer;"></i>
											  </a>
											  <a href="AileYakinliklari.jsp">
											    	<i class="fa fa-users" style="font-size: 20px; color: 	#cd853f; cursor: pointer;"></i>
											  </a>
<<<<<<< HEAD
											  <a href="#">
											    	<i class="fa fa-cog" style="font-size: 20px; color:#17a2b8; cursor: pointer;"></i>
											    	</a>
											  <a href="yeniEngelliAracHizmet.jsp?Id=<%= in.getIdInfoId()%>">
											    	<i class="fa fa-wheelchair"style="font-size: 20px; color:blue; cursor: pointer;"></i>
=======
											  <a href="yeniEngelliAracHizmet.jsp?Id=<%= in.getIdInfoId()%>">
											    	<i class="fa fa-wheelchair" style="font-size: 20px; color:blue; cursor: pointer;"></i>
>>>>>>> 1893bfe11872e9919826d49d572dbb1a1f0ba86c
											  </a>
											  <a href="muracaatguncelle.jsp?ID=<%=in.getIdInfoId()%>">
											    	<i class="fa fa-spinner" style="font-size: 20px; color:black; cursor: pointer;"></i>
											  </a>
										  </td>
										  <td><%= in.getIdInfoId() %></td>
					                      <td><%=in.getIdNo() %></td>
					                      <td><%=in.getAppliName() +' ' + in.getSurname() %></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                      <td></td>
					                    </tr>
					                    <%} %>
					                    </tbody>
					                    
					                  </table>
					               <% }  %>
					               
				                </div>
				              
				              
				            
		                </div>
		                <!-- /.card-body -->
		              
		            </div>		            <!-- /.card -->
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
<script src="//cdn.datatables.net/plug-ins/1.13.5/i18n/tr.json"></script>

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
      "searching": false,
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
  document.addEventListener('DOMContentLoaded', function () {
    const toggleInputsBtn = document.getElementById('toggleInputsBtn');
    const müracaatKriterleriCard = document.getElementById('müracaatKriterleriCard');

    toggleInputsBtn.addEventListener('click', function () {
      // Toggle the 'hidden' class for the card element
      müracaatKriterleriCard.classList.toggle('hidden');
    });
  });
</script>






</body>
</html>
