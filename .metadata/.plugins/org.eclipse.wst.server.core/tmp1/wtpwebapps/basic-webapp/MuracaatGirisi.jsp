<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<<<<<<< HEAD
=======
<%@ page import="com.example.example.DataBase.District" %>
<%@ page import="com.example.example.DataBase.Sokak" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Set" %>
<%@ page import="com.example.example.DataBase.Zone" %>
<%
	List<District> district = District.getAllDistrict();
    List<Zone> zone = Zone.getAllZone();

%>
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
<<<<<<< HEAD
  <title>CodePen - Basic hotel booking form</title>
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link href='https://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'><link rel="stylesheet" href="css/muracatgiris.css">
=======
  <title>Müracat Giriş Formu</title>
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
  <link href='https://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="css/muracatgiris.css">

<style>
	.nbn{
		font-weight: bold;
	}
</style>
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb

</head>
<body>

<<<<<<< HEAD
<form action="">
=======
<form action="adminpanel/muracat" method="post">
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
  <!--  General -->
  <div class="form-group">
    <h2 class="heading">Müracaat Girişi</h2>
  <div class="grid">
    <div class="col-1-2">
    <div class="controls">
<<<<<<< HEAD
      <input type="text" id="name" class="floatLabel" name="name">
=======
      <input  type="text" id="name" class="floatLabel" name="name">
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
      <label for="name">İsim</label>
    </div>
    </div><div class="col-1-2">
    <div class="controls">
<<<<<<< HEAD
      <input type="text" id="soyisim" class="floatLabel" name="soyisim">
=======
      <input type="text" id="soyisim" class="floatLabel nbn" name="soyisim">
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
      <label for="soyisim">Soyisim</label>
      </div>
    </div>
  </div>
    <div class="grid">
    <div class="col-1-2">
    <div class="controls">
      <input type="number" id="tckimlik" class="floatLabel" name="tckimlik">
      <label for="tckimlik">TC Kimlik No</label>
    </div></div>
    <div class="col-1-2">
    <div class="controls">
      <input type="tel" id="phone" class="floatLabel" name="phone">
      <label for="phone">Telefon</label>
    </div></div>
    </div>

<<<<<<< HEAD

    <div class="grid">
    <div class="col-1-3"><div class="controls">
      <i class="fa fa-sort"></i>
      <select>
        <option value="-1" selected> Kayıt durumu</option>
        <option value="1" >Yeni Kayıt</option>
        <option value="2" >Eski Kayıt</option>
        <option value="3">Durum Değişikliği</option>
=======
    <div class="grid">
    <div class="col-1-3"><div class="controls">
      <i class="fa fa-sort"></i>
      <select class="kayitDurum">
        <option value="-1" selected> Kayıt durumu</option>
        <option value="Eski Kayıt" >Yeni Kayıt</option>
        <option value="Yeni Kayıt" >Eski Kayıt</option>
        <option value="Durum Desisikligi">Durum Değişikliği</option>
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
      </select>
      </div></div>


      <div class="col-1-3"><div class="controls">
        <i class="fa fa-sort"></i>
<<<<<<< HEAD
        <select>
          <option value="-1" selected> Kayıtlı Olduğu İl</option>
          <option value="1" >Yeni Kayıt</option>
          <option value="2" >Eski Kayıt</option>
          <option value="3">Durum Değişikliği</option>
=======
        <select name="il" disabled>
          <option value="-1"> Kayıtlı Olduğu İl </option>
          <option value="Kocaeli" selected > Kocaeli </option>
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
        </select>
      </div></div>
      <div class="col-1-3"><div class="controls">
        <i class="fa fa-sort"></i>
<<<<<<< HEAD
        <select>
          <option value="-1" selected> Kayıtlı olduğu ilçe</option>
          <option value="1" >Yeni Kayıt</option>
          <option value="2" >Eski Kayıt</option>
          <option value="3">Durum Değişikliği</option>
=======
        <select name="ilce" disabled>
          <option value="-1" > Kayıtlı olduğu ilçe </option>
          <option value="Gebze" selected > Gebze </option>
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
        </select>
      </div>


    </div>
    <div class="grid">
      <div class="col-1-3"><div class="controls">
        <i class="fa fa-sort"></i>
<<<<<<< HEAD
        <select>
          <option value="-1" selected> Cinsiyeti</option>
          <option value="1" >Erkek</option>
          <option value="2" >Kadın</option>
          <option value="3">Diğer</option>
=======
        <select name="cinsiyet">
          <option value="-1" selected> Cinsiyeti</option>
          <option value="E" >Erkek</option>
          <option value="K" >Kadın</option>
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
        </select>
      </div></div>


        <div class="col-1-3">
          <div class="controls">
           <input type="text" id="annead" class="floatLabel" name="anneAd">
           <label for="annead">Anne Adı</label>
          </div>          
        </div>



        <div class="col-1-3">
          <div class="controls">
            <input type="tel" id="babad" class="floatLabel" name="babaAd">
            <label for="babad">Baba Adı</label>
          </div>          
        </div>
      </div>
      </div>
      <div class="grid">
        <div class="col-1-2">
          <div class="controls">
            <input type="number" id="ciltno" class="floatLabel" name="ciltno">
            <label for="ciltno">Cilt No</label>
          </div>         
        </div>
        <div class="col-1-2">
          <div class="controls">
            <input type="number" id="sirano" class="floatLabel" name="sirano">
            <label for="sirano">Aile Sıra No</label>
          </div>         
        </div>
        <div class="col-2-3">
          <div class="controls">
            <input type="date" id="dogumtarih" class="floatLabel" name="dogumtarih" value="<?php echo date('Y-m-d'); ?>">
            <label for="dogumtarih" class="label-date"><i class="fa fa-calendar"></i> Doğum Tarihi</label>
          </div>
        </div>
        <div class="col-1-3">
          <div class="controls">
            <i class="fa fa-sort"></i>
<<<<<<< HEAD
            <select>
              <option value="-1" selected> Medeni Durumu</option>
              <option value="1" >Bekar</option>
              <option value="2" >Evli</option>
              <option value="3">Boşanmış</option>
=======
            <select name="medenidurum">
              <option value="-1" selected> Medeni Durumu</option>
              <option value="Bekar" >Bekar</option>
              <option value="Evli" >Evli</option>
              <option value="Bosanmis">Boşanmış</option>
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
            </select>
          </div>
        </div>
      </div>
    <div class="grid">
    <div class="col-1-2">
      <div class="controls">
        <input type="text" id="esAd" class="floatLabel" name="esAd">
        <label for="esAd">Eş Ad</label>
      </div></div>
      <div class="col-1-2">
      <div class="controls">
        <input type="text" id="esSoyAd" class="floatLabel" name="esSoyAd">
        <label for="esSoyAd">Eş Soyad</label>
      </div>
  </div>
    </div>
    <div class="controls">
      <input type="text" id="adresno" class="floatLabel" name="adresno">
      <label for="adresno">adresno</label>
    </div>
  </div>
  <!--  Details -->
<<<<<<< HEAD

=======
<div class="form-group">
    <h2 class="heading">Address Bilgileri</h2>
  <div class="grid">
    <div class="col-1-2">
    <div class="controls">
      <input type="text" id="acıkAddress" class="floatLabel" name="acıkAddress">
      <label for="acıkAddress">Açık Adres</label>
    </div>
    </div><div class="col-1-2">
    <div class="controls">
      <input type="text" id="AddresNum" class="floatLabel" name="AddresNum">
      <label for="AddresNum">Adres No</label>
      </div>
    </div>
    
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
  <div class="form-group">

    <h2 class="heading">İletişim Bilgileri</h2>
    <div class="grid">
      <div class="col-1-3">
        <div class="controls">
          <i class="fa fa-sort"></i>
<<<<<<< HEAD
          <select>
            <option value="-1" selected> İlçe</option>
            <option value="1" >ORa</option>
            <option value="2" >Bura</option>
            <option value="3">Boşanmış</option>
=======
          <select name="iletisimilce" disabled>
            <option value="Gebze" selected> Gebze</option>
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
          </select>
        </div>
      </div>
      <div class="col-1-3">
        <div class="controls">
          <i class="fa fa-sort"></i>
<<<<<<< HEAD
          <select>
            <option value="-1" selected> Mahalle </option>
            <option value="1" >ORa</option>
            <option value="2" >Bura</option>
            <option value="3">Boşanmış</option>
=======
   		 <select name="iletisimMahalle" id="mahalleSelect" onchange="toggleSokakSelect()">
            <% for (District dist : district) { %>
				<option value="<%= dist.getDistrictID() %>" ><%= dist.getDistrictName() %></option>
			<% } %>
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
          </select>
        </div>
      </div>
      <div class="col-1-3">
        <div class="controls">
          <i class="fa fa-sort"></i>
<<<<<<< HEAD
          <select>
            <option value="-1" selected> Sokak</option>
            <option value="1" >ORa</option>
            <option value="2" >Bura</option>
            <option value="3">Boşanmış</option>
=======
    	 <select name="iletisimSokak" id="sokakSelect" disabled>
    	 <% 	List<Sokak> sokak = Sokak.getAllSokak();
    	 	for (Sokak s : sokak) { %>
				<option value="<%= s.getSokakID()%>" ><%= s.getSokakname()%></option>
			<% } %>
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
          </select>
        </div>
      </div>

<<<<<<< HEAD
=======
<script>
  function toggleSokakSelect() {
    const mahalleSelect = document.getElementById('mahalleSelect');
    const sokakSelect = document.getElementById('sokakSelect');

    if (mahalleSelect.value !== '') {
      sokakSelect.removeAttribute('disabled');
    } else {
      sokakSelect.setAttribute('disabled', 'disabled');
    }
  }
</script>

>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
    </div>
      <div class="controls">
        <input type="text" id="acikAdres" class="floatLabel" name="acikAdres">
        <label for="acikAdres">Açık Adres</label>
      </div>
    <div class="grid">
      <div class="col-1-3">
        <div class="controls">
          <input type="text" id="apartman" class="floatLabel" name="apartman">
          <label for="apartman">apartman</label>
        </div>
      </div>
      <div class="col-1-3">
        <div class="controls">
          <input type="text" id="Blok" class="floatLabel" name="Blok">
          <label for="Blok">Blok</label>
        </div>
      </div>
      <div class="col-1-3">
        <div class="controls">
          <input type="number" id="daireNo" class="floatLabel" name="daireNo">
          <label for="daireNo">daireNo</label>
        </div>
      </div>
    </div>
  <div class="grid">
    <div class="col-1-3">
      <div class="controls">
        <input type="number" id="evTel" class="floatLabel" name="evTel">
        <label for="evTel">EvTel</label>
      </div>
    </div>
    <div class="col-1-3">
      <div class="controls">
        <input type="number" id="cepTel" class="floatLabel" name="cepTel">
        <label for="cepTel">Cep Tel</label>
      </div>
    </div>
    <div class="col-1-3">
      <div class="controls">
        <input type="number" id="digerTel" class="floatLabel" name="digerTel">
        <label for="digerTel">Diğer Tel</label>
      </div>
    </div>

  </div>
    <div class="grid">
    <div class="col-1-2">
      <div class="controls">
        <input type="email" id="eposta" class="floatLabel" name="eposta">
        <label for="eposta">EPosta</label>
      </div>
    </div>
      <div class="col-1-2">
        <div class="controls">
          <input type="text" id="adresTarif" class="floatLabel" name="adresTarif">
          <label for="adresTarif">Adres Tarifi</label>
        </div>
      </div>
    </div>
</div> <h2 class="heading">Müracaat Bilgileri</h2>
  <div class="form-group">
    <div class="grid">
      <div class="col-1-2">
        <div class="controls">
          <input type="text" id="arsivDosyaNo" class="floatLabel" name="arsivDosyaNo">
          <label for="arsivDosyaNo">Arşiv Dosya No</label>
        </div>
      </div>
      <div class="col-1-2">
        <div class="controls">
          <input type="date" id="yonlendirmeTarih" class="floatLabel" name="yonlendirmeTarih" value="<?php echo date('Y-m-d'); ?>">
          <label for="yonlendirmeTarih" class="label-date"><i class="fa fa-calendar"></i> yonlendirmeTarih</label>
        </div>
      </div>
      <div class="col-1-2">
        <div class="controls">
          <i class="fa fa-sort"></i>
<<<<<<< HEAD
          <select>
            <option value="-1" selected> Bölge </option>
            <option value="1" >ORa</option>
            <option value="2" >Bura</option>
            <option value="3">Boşanmış</option>
=======
          <select name="Bolge">
            <% for (Zone zones : zone) { %>
            <option value="<%= zones.getZoneId() %>" ><%= zones.getZoneName() %></option>
            <% } %>
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
          </select>
        </div>
      </div>
      <div class="col-1-2">
      <div class="controls">
        <i class="fa fa-sort"></i>
<<<<<<< HEAD
        <select>
=======
        <select name="muracaattip">
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
          <option value="-1" selected> Müracaat Tipi </option>
          <option value="1" >ORa</option>
          <option value="2" >Bura</option>
          <option value="3">Boşanmış</option>
        </select>
        </div>
      </div>
    </div>
    <div class="grid">
      <div class="controls">
        <textarea name="comments" class="floatLabel" id="aciklama"></textarea>
        <label for="aciklama">Açıklama</label>
      </div>
      </div>
    </div>
    <h2 class="heading">Dilekçe Bilgileri</h2>
    <div class="form-group">
      <div class="grid">
        <div class="col-1-2">
          <div class="controls">
            <input type="number" id="dilekceRefNo" class="floatLabel" name="dilekceRefNo">
            <label for="dilekceRefNo">Dilekçe Ref No</label></div>
            <div class="controls">
              <input type="number" id="dilekceKonu" class="floatLabel" name="dilekceKonu">
              <label for="dilekceKonu">Dilekçe Konu</label></div>
              <div class="controls">
                <input type="number" id="dilekceSonuc" class="floatLabel" name="dilekceSonuc">
                <label for="dilekceSonuc">Dilekçe Sonuç</label></div>
                <div class="controls">
                  <i class="fa fa-sort"></i>
<<<<<<< HEAD
                  <select>
=======
                  <select name="birim">
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
                    <option value="-1" selected> Yönlendiren Birim </option>
                    <option value="1" >ORa</option>
                    <option value="2" >Bura</option>
                    <option value="3">Boşanmış</option>
                  </select>
                </div>
                <div class="controls">
                  <input type="date" id="yonlendirTarihi" class="floatLabel" name="yonlendirTarihi" value="<?php echo date('Y-m-d'); ?>">
                  <label for="yonlendirTarihi" class="label-date"><i class="fa fa-calendar"></i>Yönlendirme Tarihi</label>
                </div>
              </div>

        <div class="col-1-2">
          <div class="controls">
            <input type="number" id="itdilekceRefNo" class="floatLabel" name="itdilekceRefNo">
            <label for="itdilekceRefNo">İtiraz Dilekçe Ref No</label></div>
          <div class="controls">
            <input type="number" id="itdilekceKonu" class="floatLabel" name="itdilekceKonu">
            <label for="itdilekceKonu">İtiraz Dilekçe Konu</label></div>
          <div class="controls">
            <input type="number" id="itdilekceSonuc" class="floatLabel" name="itdilekceSonuc">
            <label for="itdilekceSonuc">İtiraz Dilekçe Sonuç</label></div>
          <div class="controls">
            <i class="fa fa-sort"></i>
<<<<<<< HEAD
            <select>
=======
            <select name="birimitraz">
>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
              <option value="-1" selected> Yönlendiren Birim </option>
              <option value="1" >ORa</option>
              <option value="2" >Bura</option>
              <option value="3">Boşanmış</option>
            </select>
          </div>
          <div class="controls">
            <input type="date" id="ityonlendirTarihi" class="floatLabel" name="ityonlendirTarihi" value="<?php echo date('Y-m-d'); ?>">
            <label for="ityonlendirTarihi" class="label-date"><i class="fa fa-calendar"></i>İtiraz Yönlendirme Tarihi</label>
          </div>
        </div>
        </div>
      </div>

    </div>
    <div>
      <button type="submit" value="Submit" class="col-1-4">Submit</button>

    </div>
  </div>
</form>














  <!--
        <div class="grid">
      <div class="col-1-3 col-1-3-sm">
        <div class="controls">
          <i class="fa fa-sort"></i>
          <select class="floatLabel">
            <option value="1">1</option>
            <option value="2" selected>2</option>
            <option value="3">3</option>
          </select>
          <label><i class="fa fa-male"></i>&nbsp;&nbsp;People</label>
        </div>
      </div>
      <div class="col-1-3 col-1-3-sm">
      <div class="controls">
        <i class="fa fa-sort"></i>
        <select class="floatLabel">
          <option value="blank"></option>
          <option value="deluxe" selected>With Bathroom</option>
          <option value="Zuri-zimmer">Without Bathroom</option>
        </select>
        <label for="fruit">Room</label>
       </div>
      </div>

      <div class="col-1-3 col-1-3-sm">
      <div class="controls">
        <i class="fa fa-sort"></i>
        <select class="floatLabel">
          <option value="blank"></option>
          <option value="single-bed">Zweibett</option>
          <option value="double-bed" selected>Doppelbett</option>
        </select>
        <label for="fruit">Bedding</label>
       </div>
      </div>

       </div>
        <div class="grid">
          <p class="info-text">Please describe your needs e.g. Extra beds, children's cots</p>
          <br>
          <div class="controls">
            <textarea name="comments" class="floatLabel" id="comments"></textarea>
            <label for="comments">Comments</label>
            </div>
              <button type="submit" value="Submit" class="col-1-4">Submit</button>
        </div>
    </div>  /.form-group -->
<<<<<<< HEAD
</form>
=======

>>>>>>> 4a2fe51223c32e1c3057c4eaefb8a3e9baf8d9cb
<!-- partial -->
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery-ui-autocomplete.js'></script>
<script src='//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery.select-to-autocomplete.js'></script>
<script src='//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery.select-to-autocomplete.min.js'></script><script  src="js/muracat.js"></script>

</body>
</html>
