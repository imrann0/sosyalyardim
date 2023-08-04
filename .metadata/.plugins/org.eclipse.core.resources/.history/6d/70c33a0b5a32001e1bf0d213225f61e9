<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Gebze Belediyesi | Kullanıcı Profili</title>
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
			  height: 160px; /* İçeriği ortalamak için div'e bir yükseklik verin */
			  overflow-x: auto;
			  
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
		.nav-item nav-link active{color: #17a2b8;
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
            <h1>Müracaat Güncelleme</h1>
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
          
          <!-- /.col -->
          <div class="col-md-12">
            <div class="card card-info card-outline">
              <div class="card-header p-2">
                <ul class="nav nav-pills">
                  <li class="nav-item"><a class="nav-link active" href="#activity" data-toggle="tab">Kimlik Bilgileri</a></li>
                  
                  <li class="nav-item"><a class="nav-link" href="#timeline" data-toggle="tab">İletişim Bilgileri</a></li>
                  <li class="nav-item"><a class="nav-link" href="#settings" data-toggle="tab">Müracaat Bilgileri</a></li>
                  <li class="nav-item"><a class="nav-link" href="#müracaat" data-toggle="tab">Dilekçe Bilgileri</a></li>
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                  <div class="active tab-pane" id="activity">
                  
                  	
	                    <div class="row">
	                    	 
	                     		<div class="col-sm-3">
	                              
	                                <div class="form-group text-center">
								        <label>Doğum Tarihi</label>
								        <div class="input-group">
								            <input type="date" class="form-control" name="baslangic_tarihi">
								            
								        </div>
								    </div>						    		
	                            </div>
	                            <div class="col-sm-3">
	                              
	                                <div class="form-group text-center">
		                                <label>Tc Kimlik No</label>
		                                <input type="text" class="form-control" name="tckimlik">
		
		                                
	                                </div>
	                            </div>
	                            <div class="col-sm-3">
	                              
	                                <div class="form-group text-center">
		                                <label>Ad</label>
		                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
	                            </div>
	                            <div class="col-sm-3">
	                              
	                                <div class="form-group text-center">
		                                <label>Soyad</label>
		                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
	                            </div>
	                          
	                      </div>
	                  
	                  
		                    <div class="row">
		                    	 
		                     		<div class="col-sm-3">
		                              
		                               <div class="form-group text-center">
			                                <label>Baba Adı</label>
			                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Anne Adı</label>
			                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Soybis</label>
			                                 <select class="form-control" name="selectedBolum">
							                        <option value="Yazilim" >Alındı</option>
							                        <option value="Yazilim" >Alınmadı</option>
							                        
							                        
							                        
							                 </select>
			                                                                   
			                               
			                              </div>
		                            </div>
		                            
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Cinsiyet</label>
			                                 <select class="form-control" name="selectedBolum">
							                        <option value="Erkek" >Erkek</option>
							                        <option value="Kadin" >Kadın</option>
							                        
							                        
							                        
							                 </select>
			                                                                   
			                               
			                            </div>
					                   
							    		
		                            </div>
		                          
		                      </div>
		                      <div class="row">
		                    	 
		                     		<div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Kayıt Durumu</label>
			                                <select class="form-control" name="selectedBolum">
							                        <option value="Yazilim" >Yeni Kayıt</option>
							                        <option value="Yazilim" >Eski Kayıt</option>
							                        <option value="Yazilim" >Durum Değişikliği</option>
							                        
							                        
							                 </select>
			                                                                   
			                               
			                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              	 <div class="form-group text-center">
				                                <label> Medeni Hali</label>
					                                <select class="form-control" name="selectedBolum">
									                        <option value="Yazilim" >Evli</option>
									                        <option value="Yazilim" >Bekar</option>
									                        <option value="Yazilim" >Dul</option>
									                        <option value="Yazilim" >Boşanmış</option>
									                        
									                        
									                 </select>
			                                                                   
			                               
			                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                               <div class="form-group text-center">
				                                <label> N.Kayıtlı İl</label>
					                                <select class="form-control" name="selectedBolum">
									                        <option value="Yazilim" >İl</option>
									                        
									                        
									                        
									                 </select>
			                                                                   
			                               
			                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
				                                <label> N.Kayıtlı İlçe</label>
					                                <select class="form-control" name="selectedBolum">
									                        <option value="Yazilim" >İlçe</option>
									                        
									                        
									                        
									                 </select>
			                                                                   
			                               
			                              </div>
							    		
		                            </div>
		                          
		                      </div>
		                      <div class="row">
		                    	 
		                     		<div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Cilt No</label>
			                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Aile Sıra No</label>
			                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Sıra No</label>
			                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Eş Adı</label>
			                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                          
		                      </div>
		                      <div class="row">
		                    	 
		                     		<div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Eş Soyadı</label>
			                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Adres No</label>
			                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>İlk Kayıt Yapan</label>
			                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                            
		                          
		                      </div>
	                  
                  </div>
                  <!-- /.tab-pane -->
                  <div class="tab-pane" id="timeline">
                    <!-- The timeline -->
                    	<div class="row">
		                    	 
		                     		<div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
				                                <label>İlçe</label>
					                                <select class="form-control" name="selectedBolum">
									                        <option value="Yazilim" >İlçe</option>
									                        
									                        
									                        
									                 </select>
			                                                                   
			                               
			                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
				                                <label>Mahalle</label>
					                                <select class="form-control" name="selectedBolum">
									                        <option value="Yazilim" >Mahalle</option>
									                        
									                        
									                        
									                 </select>
			                                                                   
			                               
			                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
				                                <label>Cadde/Sokak</label>
					                                <select class="form-control" name="selectedBolum">
									                        <option value="Yazilim" >Cadde/Sokak</option>
									                        
									                        
									                        
									                 </select>
			                                                                   
			                               
			                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Apartman</label>
			                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              	</div>
							    		
		                            </div>
		                          
		                      </div>
		                      <div class="row">
		                    		<div class="col-sm-3">
			                     		<div class="form-group text-center">
				                                <label>Blok/Kapı No</label>
				                                <input type="text" class="form-control" name="ad">
			                                                                   
			                               
			                            </div>
			                        </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Daire No</label>
			                                <input type="text" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Ev Tel</label>
			                                <input type="tel" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Cep Tel</label>
			                                <input type="tel" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                          
		                      </div>
		                      <div class="row">
		                    	 
		                     		<div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>Diğer Tel</label>
			                                <input type="tel" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group text-center">
			                                <label>E Posta</label>
			                                <input type="email" class="form-control" name="ad">
		                                                                   
		                               
		                              </div>
							    		
		                            </div>
		                            <div class="col-sm-3">
		                              
		                                <div class="form-group">
			                                <label>Adres Tarifi</label>
			                                <textarea class="form-control" rows="3" ></textarea>
			                             </div>
							    		
		                            </div>
		                            
		                          
		                      </div>
                    
                  </div>
                  
                  

                  <!-- /.tab-pane -->

                  <div class="tab-pane" id="settings">
          <!-- Müracaat Bilgileri içeriği -->
			          <div class="row">
			            <div class="col-sm-3">
			              <div class="form-group text-center">
				                                <label>Müracaat Durumu</label>
					                                <select class="form-control" name="selectedBolum">
									                        <option value="Yazilim" >Aktif</option>
									                        <option value="Yazilim" >Pasif</option>
									                        
									                        
									                 </select>
			                                                                   
			                               
			                </div>
			            </div>
			            <div class="col-sm-3">
			              <div class="form-group text-center">
			                                <label>Arşiv Dosya No</label>
			                                <input type="text" class="form-control" name="ad">
			              </div>
			            </div>
			            <div class="col-sm-3">
			              <div class="form-group text-center">
			                                <label>Arşiv Dosya No</label>
			                                <input type="text" class="form-control" name="ad">
			              </div>
			            </div>
			            <div class="col-sm-3">
			              <div class="form-group text-center">
			                                <label>Müracaat Tarihi</label>
			                                <input type="text" class="form-control" name="ad">
			              </div>
			            </div>
			            
			            <!-- Diğer Müracaat Bilgileri -->
			          </div>
			          <div class="row">
			            <div class="col-sm-3">
			              <div class="form-group text-center">
				                                <label>Müracaat Tipi</label>
					                                <select class="form-control" name="selectedBolum">
									                        <option value="Yazilim" >Kendi</option>
									                        <option value="Yazilim" >Dilekçe</option>
									                        <option value="Yazilim" >E Mail</option>
									                        <option value="Yazilim" >Yakını</option>
									                        
									                 </select>
			                                                                   
			                               
			                </div>
			            </div>
			            <div class="col-sm-3">
			              <div class="form-group text-center">
                                <label>Bölge</label>
                                <select class="form-control" name="selectedBolum">
				                        <option value="Yazilim" >1.Bölge</option>
				                        <option value="Yazilim" >2.Bölge</option>
				                        <option value="Yazilim" >3.Bölge</option>
				                        
				                        
				                 </select>
                                                                   
                               
                              </div>
			            </div>
			            <div class="col-sm-3">
			              <div class="form-group">
			                                <label>Açıklama</label>
			                                <textarea class="form-control" rows="3" ></textarea>
			              </div>
			            </div>
			            
			            
			            <!-- Diğer Müracaat Bilgileri -->
			          </div>
			          
			        </div>
                   <div class="tab-pane" id="müracaat">
          <!-- Müracaat Bilgileri içeriği -->
			          <div class="row">
			            <div class="col-sm-3">
			              <div class="form-group text-center">
			                                <label>İtiraz Dilekçe Ref No</label>
			                                <input type="text" class="form-control" name="ad">
			              </div>
			            </div>
			            <div class="col-sm-3">
			              <div class="form-group text-center">
			                                <label>Dilekçe Ref No</label>
			                                <input type="text" class="form-control" name="ad">
			              </div>
			            </div>
			            <div class="col-sm-3">
			              <div class="form-group text-center">
                                <label>Yönlendiren Birim</label>
                                <select class="form-control" name="selectedBolum">
				                        <option value="Yazilim" >1.Bölge</option>
				                        <option value="Yazilim" >2.Bölge</option>
				                        <option value="Yazilim" >3.Bölge</option>
				                        
				                        
				                 </select>
                                                                   
                               
                              </div>
			            </div>
			            <div class="col-sm-3">
			              <div class="form-group text-center">
			                                <label>Yönlendirme Tarihi</label>
			                                <input type="date" class="form-control" name="ad">
			              </div>
			            </div>
			            
			            <!-- Diğer Müracaat Bilgileri -->
			          </div>
			          <div class="row">
			            <div class="col-sm-3">
			              <div class="form-group">
			                                <label>İtiraz Dilekçe Konu</label>
			                                <textarea class="form-control" rows="3" ></textarea>
			              </div>
			            </div>
			            <div class="col-sm-3">
			              <div class="form-group">
			                                <label>İtiraz Dilekçe Sonuç</label>
			                                <textarea class="form-control" rows="3" ></textarea>
			              </div>
			            </div>
			            <div class="col-sm-3">
			              <div class="form-group">
			                                <label>Dilekçe Konu</label>
			                                <textarea class="form-control" rows="3" ></textarea>
			              </div>
			            </div>
			            <div class="col-sm-3">
			              <div class="form-group">
			                                <label>Dilekçe Sonuç</label>
			                                <textarea class="form-control" rows="3" ></textarea>
			              </div>
			            </div>
			            
			            <!-- Diğer Müracaat Bilgileri -->
			          </div>
			          
			          
			          
			        </div>
                  <!-- /.tab-pane -->
                </div>
                
                <!-- /.tab-content -->
              </div>
              <!-- /.card-body -->
            </div>
            <div class="d-flex justify-content-center"> <!-- Butonu ortalamak için d-flex ve justify-content-center sınıflarını kullanıyoruz -->
					      <button type="submit" class="btn btn-info">Kaydet</button>
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
