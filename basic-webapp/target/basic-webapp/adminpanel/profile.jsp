<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | User Profile</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <style>
	  label {
	  display: block;
	  font-size: 18px;
	  color: #17a2b8;
	  padding: 10px;
	  margin-bottom: 5px;
	  transition: color 0.3s;
	}
		.col-sm-3 {
			  display: flex;
			  flex-direction: column;
			  justify-content: center;
			  align-items: center;
			  height: 100px; /* İçeriği ortalamak için div'e bir yükseklik verin */
			  overflow: auto;
			}
			.col-sm-3:hover {
			  background-color: #dcdcdc;
			}
	/* Mouse üzerine geldiğinde label renkini değiştir */
	label:hover {
	  color: #f39c12;
	}
	  
  .card-info{
			position: relative;
		    padding: 40px; /* Arkaya gölge için içeriği itin */
		    border-radius: 10px; /* Köşeleri keskin olmaktan çıkarın */
		    box-shadow: 0 2px 6px rgba(44, 166, 234, 0.6); /* Gölgeli efekti ekle */
		    margin-top: 10px;
		    margin-left: 10px;
		    margin-right: 10px;
		}
		
		.content-header {
		  height:70px; /* İstenilen yüksekliği burada belirtebilirsiniz */
		  overflow: hidden; /* İçerik taşarsa gizlemek için taşmayı engelle */
		}
		
		/* H1 başlık etiketi için stiller (isteğe bağlı) */
		.content-header h1 {
		  margin-top: 5px; /* H1 başlık etiketinin üst kenardan boşluk bırakılmasını sağlar */
		}
	</style>
	
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <%@include file="navbar.jsp"%>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <%@include file="sidebar.jsp"%>
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Profil Bilgileri</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">İşlemlerim</a></li>
              <li class="breadcrumb-item active">User Profile</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">

            <!-- Profile Image -->
            <div class="card card-info card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle"
                       src="dist/img/user4-128x128.jpg"
                       alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">ALI IMRAN</h3>

                <p class="text-muted text-center">Software Engineer</p>

                

                
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- About Me Box -->
            <div class="card card-info card-outline">
              <div class="card-header">
                <h3 class="card-title">HAKKINDA</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <strong><i class="fas fa-book mr-1"></i> Education</strong>

                <p class="text-muted">
                  Knoxwille
                </p>

                <hr>

                <strong><i class="fas fa-map-marker-alt mr-1"></i> Location</strong>

                <p class="text-muted">Malibu, California</p>

                <hr>

                <strong><i class="fas fa-pencil-alt mr-1"></i> Skills</strong>

                <p class="text-muted">
                  <span class="tag tag-danger">UI Design</span>
                  <span class="tag tag-success">Coding</span>
                  <span class="tag tag-info">Javascript</span>
                  <span class="tag tag-warning">PHP</span>
                  <span class="tag tag-primary">Node.js</span>
                </p>

                <hr>

                <strong><i class="far fa-file-alt mr-1"></i> Notes</strong>

                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card card-info card-outline">
              <div class="card-header p-2">
                <ul class="nav nav-pills">
                  <li class="nav-item"><a class="nav-link active" href="#activity" data-toggle="tab">Kullanıcı Bilgileri</a></li>
                  <li class="nav-item"><a class="nav-link" href="#timeline" data-toggle="tab">İletişim Bilgileri</a></li>
                  <li class="nav-item"><a class="nav-link" href="#müracaat" data-toggle="tab">Müracaat Bilgileri</a></li>
                  <li class="nav-item"><a class="nav-link" href="#settings" data-toggle="tab">Dilekçe Bilgileri</a></li>
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                  <div class="active tab-pane" id="activity">
                  
                  	
	                    <div class="row">
	                    	 
	                     		<div class="col-sm-3">
	                              
	                                <label for="isim">İsim</label>
						    			<p>Ahmet Tuğrul</p>
						    		
	                            </div>
	                            <div class="col-sm-3">
	                              
	                                <label for="soyisim">Soyisim</label>
						    			<p>Kurt</p>
						    		
	                            </div>
	                            <div class="col-sm-3">
	                              
	                                <label for="tc">TC</label>
						    			<p>26666666666</p>
						    		
	                            </div>
	                            <div class="col-sm-3">
	                              
	                                <label for="tel">Tel</label>
						    			<p>55555555</p>
						    		
	                            </div>
	                          
	                      </div>
	                  
	                  
		                    <div class="row">
		                    	 
		                     		<div class="col-sm-3">
		                              
		                                <label for="kayit">Kayıt Durumu</label>
							    			<p>1</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="cinsiyet">Cinsiyeti</label>
							    			<p>erkek</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="anne">Anne Adı</label>
							    			<p>fatma</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="baba">Baba Adı</label>
							    			<p>mert</p>
							    		
		                            </div>
		                          
		                      </div>
		                      <div class="row">
		                    	 
		                     		<div class="col-sm-3">
		                              
		                                <label for="cilt">Cilt No</label>
							    			<p>12</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="asira">Aile Sıra No</label>
							    			<p>23</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="dogum">Doğum Tarihi</label>
							    			<p>08.02.2000</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="medeni">Medeni Durum</label>
							    			<p>Bekar</p>
							    		
		                            </div>
		                          
		                      </div>
		                      <div class="row">
		                    	 
		                     		<div class="col-sm-3">
		                              
		                                <label for="cilt">Eş Ad</label>
							    			<p></p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="asira">Eş Soyad</label>
							    			<p></p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="il">İl</label>
							    			<p>Kocaeli</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="ilce">İlçe</label>
							    			<p>Gebze</p>
							    		
		                            </div>
		                          
		                      </div>
	                  
                  </div>
                  <!-- /.tab-pane -->
                  <div class="tab-pane" id="timeline">
                    <!-- The timeline -->
                    	<div class="row">
		                    	 
		                     		<div class="col-sm-3">
		                              
		                                <label for="kayit">İlçe</label>
							    			<p>1</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="cinsiyet">Mahalle</label>
							    			<p>erkek</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="anne">Sokak</label>
							    			<p>fatma</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="baba">Apartman</label>
							    			<p>mert</p>
							    		
		                            </div>
		                          
		                      </div>
		                      <div class="row">
		                    	 
		                     		<div class="col-sm-3">
		                              
		                                <label for="kayit">Blok</label>
							    			<p>1</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="cinsiyet">Daire No</label>
							    			<p>erkek</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="anne">Ev Tel</label>
							    			<p>fatma</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="baba">Cep Tel</label>
							    			<p>mert</p>
							    		
		                            </div>
		                          
		                      </div>
		                      <div class="row">
		                    	 
		                     		<div class="col-sm-3">
		                              
		                                <label for="kayit">Diğer Tel</label>
							    			<p>1</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="cinsiyet">E Posta</label>
							    			<p>erkek</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="anne">Adres Tarifi</label>
							    			<p>fatma</p>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <label for="baba">Açık Adres</label>
							    			<p>mert</p>
							    		
		                            </div>
		                             <div class="col-sm-3">
		                              
		                                <label for="baba">Adres No</label>
							    			<p>mert</p>
							    		
		                            </div>
		                          
		                      </div>
                    
                  </div>
                  
                  

                  <!-- /.tab-pane -->

                  <div class="tab-pane" id="settings">
          <!-- Müracaat Bilgileri içeriği -->
			          <div class="row">
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi1">Dilekçe Referans No</label>
			              <p>Veri 1</p>
			            </div>
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi2"> İtiraz Dilekçe Referans No</label>
			              <p>Veri 2</p>
			            </div>
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi2">Dilekçe Konu</label>
			              <p>Veri 2</p>
			            </div>
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi2">İtiraz Dilekçe Konu</label>
			              <p>Veri 2</p>
			            </div>
			            
			            <!-- Diğer Müracaat Bilgileri -->
			          </div>
			          <div class="row">
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi1">Dilekçe Sonuç</label>
			              <p>Veri 1</p>
			            </div>
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi2"> İtiraz Dilekçe Sonuç</label>
			              <p>Veri 2</p>
			            </div>
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi2">Dilekçe Yönlendiren Birim</label>
			              <p>Veri 2</p>
			            </div>
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi2">Dilekçe Yönlendirme Tarihi</label>
			              <p>Veri 2</p>
			            </div>
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi2">İtiraz Yönlendiren Birim</label>
			              <p>Veri 2</p>
			            </div>
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi2">İtiraz Yönlendirme Tarihi</label>
			              <p>Veri 2</p>
			            </div>
			            
			            <!-- Diğer Müracaat Bilgileri -->
			          </div>
			          
			        </div>
                   <div class="tab-pane" id="müracaat">
          <!-- Müracaat Bilgileri içeriği -->
			          <div class="row">
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi1">Arşiv Dosya No</label>
			              <p>Veri 1</p>
			            </div>
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi2">Yönlendirilen Tarih</label>
			              <p>Veri 2</p>
			            </div>
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi2">Bölge</label>
			              <p>Veri 2</p>
			            </div>
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi2">Müracaat Tipi</label>
			              <p>Veri 2</p>
			            </div>
			            <div class="col-sm-3">
			              <label for="müracaat_bilgi2">Açıklama</label>
			              <p>2222222</p>
			            </div>
			            <!-- Diğer Müracaat Bilgileri -->
			          </div>
			          
			        </div>
                  <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            </div>
            <!-- /.nav-tabs-custom -->
          </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    
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
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>