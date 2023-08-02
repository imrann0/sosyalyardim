
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.example.DataBase.Rol" %>
<%@ page import="java.util.List" %>
<style>
  /* Sidebardaki "Anasayfa", "İşlemlerim", "Yönetici İşlemleri" ve "Raporlar" başlıklarının yazı rengini ve arka plan rengini belirgin hale getir */
  
  #islemlerim.nav-link,
  #yonetici.nav-link,
  #rapor.nav-link {
    color: #fff; /* Yazı rengini istediğiniz renk koduyla değiştirebilirsiniz */
    background-color: #494949; /* Arka plan rengini istediğiniz renk koduyla değiştirebilirsiniz */
  }
</style>

<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="anasayfa.jsp" class="brand-link">
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
                <a id="anasayfa" href="anasayfa.jsp" class="nav-link">
                  <i class="fas fa-home"></i>
                  <p>
                    Anasayfa
                    
                  </p>
                </a>
              </li>
          <li class="nav-item has-treeview">
            <a id="islemlerim" href="#" class="nav-link">
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
                    <a href="geneltakip.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Genel Takip</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="muracaatgir.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Müracaat Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="muracaatliste.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Müracaat Listesi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="egitimliste.jsp" class="nav-link">
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
                    <a href="tutanakgir.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Tutanak Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="tutanaklist.jsp" class="nav-link">
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
                    <a href="yardimkararlist.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yardım Karar Listesi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="yardimkararlistozel.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yardım Liste Özel</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="topyardim.jsp" class="nav-link">
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
                    <a href="asevigir.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Aşevi Bilgi Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="asevilist.jsp" class="nav-link">
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
                    <a href="engellilist.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Engelli Bilgi Listesi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="engelliarac.jsp" class="nav-link">
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
                    <a href="aileyakinlik.jsp" class="nav-link">
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
                    <a href="stokgir.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Stok Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="stoklist.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Stok Listesi</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
            </ul>
            
            
          </li>
          <li class="nav-item has-treeview">
            <a id="yonetici" href="#" class="nav-link">
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
                    <a href="kullaniciyukle.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Kullanıcı Ekle</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="kullaniciliste.jsp" class="nav-link">
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
                    <a href="./bolgegiris.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Bölge Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="bolgetanimlama.jsp" class="nav-link">
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
                    <a href="mahallegir.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Mahalle Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./mahallelist.jsp" class="nav-link">
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
                    <a href="./caddegir.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Cadde/Sokak Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./caddelist.jsp" class="nav-link">
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
                    <a href="./okulgiris.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Okul Girişi</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./okullist.jsp" class="nav-link">
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
                    <a href="./cekmecetanim.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Çekmece Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./meslektanimlama.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Meslek Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./yakinlik.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yakınlık Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./tutanakdurumtanimlama.jsp" class="nav-link">
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
                    <a href="./yardimtipi.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yardım Tipi Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./yardimalttip.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yardım Alt Tip Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./talepedilen.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Talep Edilen Yardım Tipi<br>Tanımlama</p>
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
                    <a href="./engellitiptanim.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Engelli Tipi Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./engellialttip.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Engelli Alt Tipi Tanımlama</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./yonkurum.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yönlendirilen Kurum</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="./yonaltkurum.jsp" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Yönlendirilen Alt Kurum</p>
                    </a>
                  </li>
                  
                </ul>
              </li>
              
            </ul>
          </li>
          
          <li class="nav-item has-treeview">
            <a id="rapor" href="#" class="nav-link">
              <i class="fa fa-book" aria-hidden="true"></i>

              <p>
                Raporlar
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./muracaatrapor.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Müracaat Raporu</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./tutanakrapor.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tutanak Raporu</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./yardimkarara.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Yardım Karar Raporu</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./yardimkararyillikr.jsp" class="nav-link">
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