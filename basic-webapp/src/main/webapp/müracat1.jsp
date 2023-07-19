<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width, initial-scale=1.0">
    <title>Gebze Belediyesi Müracat Giriş Sayfası</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .form-container {
            display: flex;
            justify-content: space-between;
            max-width: 800px;
            margin: 15px auto;
            background-color: #fff;
            border: 1px solid #ccc;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            padding: 15px;
        }

        .form-left {
            flex: 1;
            padding-right: 15px;
        }

        .form-right {
            flex: 1;
            padding-left: 15px;
        }
        h1{
            font-size: 25px;
        
        }
        .adres {
            margin-top: 15px;
            border: 1px solid #ccc;
            padding: 15px;
            background-color: #f9f9f9;
        }

        .adres p {
            margin: 15px 0;
        }

        .adres span {
            display: inline-block;
            width: 150px;
            font-weight: bold;
        }
        h2{
            font-size: 16px;
        }
        .container {
            display: flex;
            justify-content: space-between;
            max-width: 800px;
            margin: 15px auto;
            background-color: #fff;
            border: 1px solid #ccc;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            padding: 15px;
        }

        .left-side {
            flex: 1;
            padding-right: 30px;
            display: flex;
            align-items: center;
        }

        .right-side {
            flex: 1;
            padding-left: 30px;
        }

        label {
            font-weight: bold;
            font-size: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 8px;
        }
        h3{
            font-size: 16px;
        }
        .frame {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            border: 1px solid #ccc;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        .frame p,
        .frame .container,
        .frame label,
        .frame input[type="text"],
        .frame select,
        .frame form {
            width: 100%;
        }

        .frame .container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .frame .left-side {
            flex: 1;
            padding-right: 20px;
        }

        .frame .right-side {
            flex: 1;
            padding-left: 20px;
        }

        .frame label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .frame input[type="text"],
        .frame select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
            margin-bottom: 10px;
        }
        
        .frame form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
    </style>
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
              
              <script>
                $(function() {
                  $("#datepicker").datepicker({
                    dateFormat: "dd-mm-yy",
                    changeMonth: true,
                    changeYear: true
                  });
                });
                </script>

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
                <label for="misafir:">Misafir:</label>
                <input type="checkbox" id="misafir" name="misafir">
            </div>

            <p>
                <span>Adres No:</span>
                <input type="text" name="no" value="">
            </p>
    </div>
    </div>
    <div class="form-right">
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
          <input type="text" id="datepicker" name="yonlendirme_tarihi" required>
        </p>
        <p>
          <input type="submit" value="Gönder">
        </p>
      </form>
    
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
      <script>
        $(function() {
          $("#datepicker").datepicker({
            dateFormat: "dd-mm-yy",
            changeMonth: true,
            changeYear: true
          });
        });
      </script>

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
                    <input type="text" id="adresTarifi" name="adresTarifi" placeholder="Açıklama...">
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
              <input type="text" id="datepicker" name="yonlendirme_tarihi" required>
            </p>
            <p>
              <input type="submit" value="Gönder">
            </p>
          </form>
        
          <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
          <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
          <script>
            $(function() {
              $("#datepicker").datepicker({
                dateFormat: "dd-mm-yy",
                changeMonth: true,
                changeYear: true
              });
            });
          </script>
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
                  <input type="text" id="datepicker" name="yonlendirme_tarihi" required>
                </p>
                <p>
                  <input type="submit" value="Gönder">
                </p>
              </form>
            
              <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
              <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
              <script>
                $(function() {
                  $("#datepicker").datepicker({
                    dateFormat: "dd-mm-yy",
                    changeMonth: true,
                    changeYear: true
                  });
                });
              </script>
    </div>
</div>
    <div style="display: flex; justify-content: center; margin-top: 20px;">
        <input type="submit" value="Kaydet">
    </div>

</body>
</html>