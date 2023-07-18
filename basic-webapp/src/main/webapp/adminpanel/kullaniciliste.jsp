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
        <a href="anasayfa.html" class="nav-link">Anasayfa</a>
      </li>
      
    </ul>

    <!-- SEARCH FORM -->
    

    <!-- Right navbar links -->
    
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="anasayfa.html" class="brand-link">
      <img src="1111.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: 10">
      <span class="brand-text font-weight-light">Gebze Belediyesi</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
               <li class="nav-item">
                <a href="anasayfa.html" class="nav-link">
                  <i class="fas fa-home"></i>
                  <p>
                    Anasayfa
                    
                  </p>
                </a>
              </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fa fa-check-square" aria-hidden="true"></i>

              <p>
                İşlemlerim
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fas fa-user"></i>
                  <p>
                    Müracaat
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="geneltakip.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Genel Takip</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="muracaatgir.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Müracaat Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="muracaatliste.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Müracaat Listesi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="egitimliste.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Eğitim Listesi</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>

            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-address-book" aria-hidden="true"></i>
                  <p>
                    Tutanak
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="tutanakgir.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Tutanak Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="tutanaklist.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Tutanak Listesi</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>

            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-address-book" aria-hidden="true"></i>
                  <p>
                    Yardım Kararı
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="yardimkararlist.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yardım Karar Listesi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="yardimkararlistozel.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yardım Liste Özel</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="topyardim.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Toplu Yardım Yükleme</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>
            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-address-book" aria-hidden="true"></i>
                  <p>
                    Aşevi
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="asevigir.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Aşevi Bilgi Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="asevilist.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Aşevi Bilgi Listesi</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>
            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-wheelchair" aria-hidden="true"></i>
                  <p>
                    Engelli Bilgisi
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="engellilist.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Engelli Bilgi Listesi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="engelliarac.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Engelli Araç Bilgi Listesi</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>
            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-bars" aria-hidden="true"></i>
                  <p>
                    Aile Yakınlık Bilgisi
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="aileyakinlik.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Aile Yakınlık Bilgi Listesi</p>
                    </a>
                  </li>
                  
                  
                </ul>
              </li>
              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-graduation-cap" aria-hidden="true"></i>
                  <p>
                    Stok
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="stokgir.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Stok Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="stoklist.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Stok Listesi</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
            </ul>
            
            
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fa fa-user-plus" aria-hidden="true"></i>
              <p>
                Yönetici İşlemleri
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fas fa-user"></i>
                  <p>
                    Kullanıcı
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="kullaniciyukle.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Kullanıcı Yükle</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="kullaniciliste.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Kullanıcı Listele</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>

            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-address-book" aria-hidden="true"></i>
                  <p>
                    Bölge
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="./bolgegiris.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Bölge Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="bolgetanimlama.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Bölge Tanımlama</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>

            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-address-book" aria-hidden="true"></i>
                  <p>
                    Mahalle
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="./mahallegir.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Mahalle Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./mahallelist.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Mahalle Listele</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>
            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-address-book" aria-hidden="true"></i>
                  <p>
                    Cadde/Sokak
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="./caddegir.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Cadde/Sokak Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./caddelist.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Cadde/Sokak Listesi</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>
            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-graduation-cap" aria-hidden="true"></i>
                  <p>
                    Eğitim
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="./okulgiris.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Okul Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./okullist.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Okul Listesi</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>
            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-bars" aria-hidden="true"></i>
                  <p>
                    Diğer Tanımlar
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="./cekmecetanim.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Çekmece Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./meslektanimlama.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Meslek Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./yakinlik.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yakınlık Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./tutanakdurumtanimlama.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Tutanak Durum Tanımlama</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>
            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-info-circle" aria-hidden="true"></i>
                  <p>
                    Yardım Parametreleri
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="./yardimtipi.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yardım Tipi Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./yardimalttip.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yardım Alt Tip Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./talepedilen.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Talep Edilen Yardım Tipi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./tanimlama.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Tanımlama</p>
                    </a>
                  </li>
                  
                  
                </ul>
              </li>
              
            </ul>
            <ul class="nav nav-treeview">

              <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                  <i class="fa fa-wheelchair" aria-hidden="true"></i>
                  <p>
                    Engelli Tipleri Girişi
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="./engellitiptanim.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Engelli Tipi Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./engellialttip.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Engelli Alt Tipi Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./yonkurum.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yönlendirilen Kurum</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./yonaltkurum.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yönlendirilen Alt Kurum</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>
          </li>
          
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fa fa-book" aria-hidden="true"></i>

              <p>
                Raporlar
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./muracaatrapor.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Müracaat Raporu</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./tutanakrapor.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tutanak Raporu</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./yardimkarara.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Yardım Karar Raporu</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./yardimkararyillikr.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Yardım Karar Yıllık Raporu</p>
                </a>
              </li>
            </ul>
          </li>
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
        </ul>
        
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

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
          
          <div class="col-12">
            <div class="card">
                <div class="card-header d-flex justify-content-center">
                    <h3 class="card-title font-weight-bold">KULLANICI LİSTESİ</h3>
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
                        <th>Düzenle</th>
                        <th>Sil</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>1</td>
                      <td>Ahmet</td>
                      <td>1326542</td>
                      <td>Ahmet</td>
                      <td>A</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Ali</td>
                      <td>1326542</td>
                      <td>Ali</td>
                      <td>A</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Musa</td>
                      <td>1326542</td>
                      <td>Musa</td>
                      <td>M</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Orçun</td>
                      <td>1326542</td>
                      <td>Orçun</td>
                      <td>O</td>
                      <td>5555555555</td>
                      <td>Erkek</td>
                      <td>Aktif</td>
                      <td>
                        <a href="kullaniciduzenle.html">
                          <button type="submit" class="btn btn-info">Düzenle</button>
                        </a>
                      </td>
                      <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Orçun</td>
                        <td>1326542</td>
                        <td>Orçun</td>
                        <td>O</td>
                        <td>5555555555</td>
                        <td>Erkek</td>
                        <td>Aktif</td>
                        <td>
                          <a href="kullaniciduzenle.html">
                            <button type="submit" class="btn btn-info">Düzenle</button>
                          </a>
                        </td>
                        <td><button type="submit" class="btn btn-danger" onclick="confirmDelete()">Sil</button></td>
                      </tr>
                
                    
                    
                    
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
