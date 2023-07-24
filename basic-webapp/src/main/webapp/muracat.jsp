<%@ page import="com.example.example.DataBase.Rol" %>
<%@ page import="java.util.Set" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%   HttpSession userSession = request.getSession();
    Set<Rol> roles = (Set<Rol>) userSession.getAttribute("roles");
    String mail = (String) userSession.getAttribute("mail");
    // Check if the user has the "deneme2" role
    if(!Rol.hasRole(userSession,"Kullanici")){
        System.out.println("Kulanici onayli");
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width, initial-scale=1.0">
    <link rel="stylesheet" href="css/muracat.css">

    <title>Gebze Belediyesi Müracat Giriş Sayfası</title>

</head>
<body>
<h1>Yeni Müracaat Girişi</h1>
<p>Lütfen Müracaat Girişini Yapınız</p>
<div class="form-container">
    <div class="form-left">
        <form>
            <p>
                <span>Doğum Tarihi:</span>
                <input type="text" id="datepicker">
            </p>

            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
            <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">

            <p>
                <span> T.C Kimlik No:</span>
                <input type="text" name="no" value="">
            </p>

            <p>
                <span>Ad:</span>
                <input type="text" name="ad" value="">
            </p>

            <p>
                <span>Soyad:</span>
                <input type="text" name="soyad" value="">
            </p>

            <p>
                <span>Baba Adı:</span>
                <input type="text" name="ad" value="">
            </p>

            <p>
                <span>Anne Adı:</span>
                <input type="text" name="ad" value="">
            </p>

            <p>
                <span>Cinsiyet:</span>
                <label>
                    <input type="radio" name="cinsiyet" value="kadın">
                    Kadın
                    <input type="radio" name="cinsiyet" value="erkek">
                    Erkek
                </label>
            </p>
            <label for="kayıtdurumu">Kayıt Durumu:</label>
            <select id="kayıtdurumu" name="kayıtdurumu">
                <option value="kayıtdurumu">Lütfen Seçiniz: </option>
                <option value="kayıtdurumu1">Durum Değişikliği</option>
                <option value="kayıtdurumu2">Eski Kayıt</option>
                <option value="kayıtdurumu3">Yeni Kayıt</option>
            </select>

            <p>
                <span>Medeni Hali:</span>
                <label>
                    <input type="radio" name="medeni" value="Evli">
                    Evli
                    <input type="radio" name="medeni" value="Bekar">
                    Bekar
                    <input type="radio" name="medeni" value="Dul">
                    Duraklı
                    <input type="radio" name="medeni" value="Boşanmış">
                    Boşanmış
                </label>
            </p>
        </form>
    </div>
    <div class="form-right">
        <p>
            <label for="il">N. Kayıtlı Olduğu İl:</label>
            <select id="il" name="il">
                <option value="il">Lütfen Seçiniz: </option>
            </select>
        </p>

        <p>
            <label for="ilce">N. Kayıtlı Olduğu İlçe:</label>
            <select id="ilce" name="ilce">
                <option value="ilce">Lütfen Seçiniz: </option>
            </select>
        </p>

        <p>
            <span>Cilt No:</span>
            <input type="text" name="no" value="">
        </p>

        <p>
            <span>Aile Sıra No:</span>
            <input type="text" name="no" value="">
        </p>

        <p>
            <span>Sıra No:</span>
            <input type="text" name="no" value="">
        </p>

        <p>
            <span>Eş Adı:</span>
            <input type="text" name="ad" value="">
        </p>

        <p>
            <span>Eş Soyadı:</span>
            <input type="text" name="ad" value="">
        </p>

        <div>
            <label>Misafir:</label>
            <input type="checkbox" id="misafir" name="misafir">
        </div>

        <p>
            <span>Adres No:</span>
            <input type="text" name="no" value="">
        </p>
    </div>
</div>

    <div class="adres">
        <h2>Adres Bilgileri</h2>
        <p>
            <span>Açık Adres:</span>
            <input type="text" name="adres" value="">
        </p>

        <p>
            <span>Adres No:</span>
            <input type="text" name="adresNo" value="">
        </p>
    </div>
<div class="form-container">
    <div class="form-left">
        <h3>İletişim Bilgileri</h3>
        <p>
            <label for="ilce">İlçe:</label>
            <select id="ilce" name="ilce">
                <option value="ilce">Lütfen Seçiniz: </option>
            </select>
        </p>

        <p>
            <label for="mahalle">Mahalle:</label>
            <select id="mahalle" name="mahalle">
                <option value="mahalle">Lütfen Seçiniz: </option>
            </select>
        </p>

        <p>
            <label for="cadde">Cadde/Sokak:</label>
            <select id="cadde" name="cadde">
                <option value="cadde">Lütfen Seçiniz: </option>
            </select>
        </p>

        <div class="container">
            <div class="left-side">
                <label for="adresTarifi">Adres Tarifi:</label>
            </div>
            <div class="right-side">
                <input type="text" id="adresTarifi" name="adresTarifi" placeholder="Adresinizi giriniz...">
            </div>
        </div>
    </div>
    <div class="form-right">
        <p>
            <span>Apartman/Site:</span>
            <input type="text" name="apartman" value="">
        </p>

        <p>
            <span>Blok/Kapı No:</span>
            <input type="text" name="kapıNo" value="">
        </p>

        <p>
            <span>Daire No:</span>
            <input type="text" name="daireNo" value="">
        </p>

        <p>
            <span>Ev Tel:</span>
            <input type="text" name="evTel" value="">
        </p>

        <p>
            <span>Cep Tel:</span>
            <input type="text" name="cepTel" value="">
        </p>

        <p>
            <span>Diğer Tel:</span>
            <input type="text" name="digerTel" value="">
        </p>

        <p>
            <span>e-Posta>:</span>
            <input type="text" name="ePosta" value="">
        </p>
    </div>
</div>
<div class="form-container">
    <div class="form-left">
        <form>
            <h4>Müracaat Bilgileri</h4>
            <p>
                <span>Arşiv Dosya No:</span>
                <input type="text" name="dosyaNo" value="">
            </p>

            <form>
                <p>
                    <label for="datepicker">Yönlendirme Tarihi:</label>
                    <input type="date" name="yonlendirme_tarihi" required>
                </p>
                <p>
                    <input type="submit" value="Gönder">
                </p>
            </form>

            <label for="müracaatTip">Müracaat Tipi:</label>
            <select id="müracaatTip" name="müracaatTip">
                <option value="müracaatTip">Kendi: </option>
                <option value="müracaatTip1">Dilekçe</option>
                <option value="müracaatTip2">E-mail</option>
                <option value="müracaatTip3">Yakını</option>
            </select>
        </form>
    </div>

    <div class="form-right">
        <label for="bölge">Bölge:</label>
        <select id="bölge" name="bölge">
            <option value="bölge">Lütfen Seçiniz: </option>
        </select>

        <div class="container">
            <div class="left-side">
                <label for="adresTarifi">Açıklama:</label>
            </div>
            <div class="right-side">
                <input type="text" class="adresTarifi" name="adresTarifi" placeholder="Açıklama...">
            </div>
        </div>
    </div>
</div>

<div class="form-container">
    <div class="form-left">
        <h4>Dilekçe Bilgileri</h4>
        <form>
            <p>
                <span> İtiraz Dilekçe Ref No:</span>
                <input type="text" name="refNo" value="">
            </p>
            <div class="container">
                <div class="left-side">
                    <label for="Konu"> İtiraz Dilekçe Konu:</label>
                </div>
                <div class="right-side">
                    <input type="text" id="Konu" name="Konu" placeholder="İtiraz Konu...">
                </div>
            </div>

            <div class="container">
                <div class="left-side">
                    <label for="Konu">İtiraz Dilekçe Sonuç:</label>
                </div>
                <div class="right-side">
                    <input type="text" id="Konu" name="Konu" placeholder="İtiraz Konu...">
                </div>
            </div>

            <label for="birim">Yönlendirilen Birim:</label>
            <select id="birim" name="birim">
                <option value="birim">Lütfen Seçiniz: </option>
                <option value="birim1">Bimer</option>
                <option value="birim2">Cimer</option>
                <option value="birim3">Diğer</option>
                <option value="birim4">İnternet</option>
                <option value="birim5">Kaymakamlık</option>
                <option value="birim6">Kocaeli Belediyesi</option>
            </select>

            <form>
                <p>
                    <label for="datepicker">Yönlendirme Tarihi:</label>
                    <input type="text" class="datepicker" name="yonlendirme_tarihi" required>
                </p>
                <p>
                    <input type="submit" value="Gönder">
                </p>
            </form>


        </form>
    </div>

    <div class="form-right">
        <p>
            <span>Dilekçe Ref No:</span>
            <input type="text" name="refNo" value="">
        </p>
        <div class="container">
            <div class="left-side">
                <label for="Konu"> Dilekçe Konu:</label>
            </div>
            <div class="right-side">
                <input type="text" id="Konu" name="Konu" placeholder="Dilekçe Konu...">
            </div>
        </div>

        <div class="container">
            <div class="left-side">
                <label for="sonuc">Dilekçe Sonuç:</label>
            </div>
            <div class="right-side">
                <input type="text" id="sonuc" name="sonuc" placeholder="Dilekçe Sonuç...">
            </div>
        </div>

        <label for="birim">Yönlendirilen Birim:</label>
        <select id="birim" name="birim">
            <option value="birim">Lütfen Seçiniz: </option>
            <option value="birim1">Bimer</option>
            <option value="birim2">Cimer</option>
            <option value="birim3">Diğer</option>
            <option value="birim4">İnternet</option>
            <option value="birim5">Kaymakamlık</option>
            <option value="birim6">Kocaeli Belediyesi</option>
        </select>

        <form>
            <p>
                <label for="datepicker">Yönlendirme Tarihi:</label>
                <input type="date" name="yonlendirme_tarihi" required>
            </p>
            <p>
                <input type="submit" value="Gönder">
            </p>
        </form>
    </div>
</div>
<div style="display: flex; justify-content: center; margin-top: 20px;">
    <input type="submit" value="Kaydet">
</div>

</body>
</html>