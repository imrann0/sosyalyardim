<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gebze Belediyesi Online Başvuru Sayfası</title>
    <script>
        function onayla() {
          alert("KVKK Metnini Okudum, Kabul Ediyorum");
        }
      </script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            background-image: url("resimler/20191119061614.png");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .container1 {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 50vh;
        border: 1px solid #ccc;
        padding: 10px;
        }
        
        h1 {
            text-align: center;
            color: #0056b3;
            font-size: 25px;
        }
        h2{
            color: blue;
            font-size: 20px;
        }
        
        .vr {
            margin-bottom: 20px;
        }
        
        .vr p {
            margin-bottom: 10px;
            color: blue;
        }
        
        .vr ul {
            margin-left: 20px;
            padding-left: 10px;
        }
        
        .vr ul li {
            list-style-type: disc;
            margin-bottom: 5px;
        }
        
        .tableSatir {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        .tableSatir p {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        
        .tableSatir span {
            display: inline-block;
            width: 200px;
            text-align: right;
            margin-right: 10px;
        }
        
        .tableSatir input[type="text"],
        .tableSatir select {
            flex: 1;
            padding: 5px;
        }
        
        .mahalle-container,
        .hanede-yasayanlar-container,
        .mali-durum-container {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        
        .mahalle-container label,
        .hanede-yasayanlar-container label,
        .mali-durum-container label {
            margin-right: 10px;
        }
        
        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        
        .form-row label {
            margin-right: 10px;
        }
        
        .hanenin-gelir {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        
        .hanenin-gelir span {
            display: inline-block;
            width: 200px;
            text-align: right;
            margin-right: 10px;
        }
        
        .hanenin-gelir input[type="text"] {
            flex: 1;
            padding: 5px;
        }
        
        .tableSatir input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        .tableSatir input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      cursor: pointer;
      max-width: 600px;
      margin: 0 auto;
    }

    .checkbox {
      display: none;
    }

    .custom-checkbox {
      width: 20px;
      height: 20px;
      border: 1px solid #000;
      margin-bottom: 10px;
    }

    .custom-checkbox:checked {
      background-color: #000;
    }

    .label {
      font-size: 16px;
      text-align: center;
    }

    button {
      margin-top: 10px;
      background-color: blue;
      color: white;
    }
    .frame {
      border: 1px solid #ccc;
      padding: 20px;
    }
    
    </style>
    <script>
        function onayla() {
          const checkbox = document.getElementById('checkbox');
          if (checkbox.checked) {
            alert("KVKK Metnini Okudum, Kabul Ediyorum");
          } else {
            alert("Lütfen KVKK Metnini Kabul Edin");
          }
        }
        function basvuruOlustur() {
    alert("Başvuru Oluşturuldu");
  }
      </script>
</head>
<body>
<div class="container1">
    <h1>Sosyal Yardımlar Online Başvuru Formu</h1>
    <div class="vr">
        <p>Sosyal Yardım Başvurusu yapabilmek için ;</p>
        <ul>
            <li>Hastalık veya engelli raporu</li>
            <li>Kredi dökümü</li>
            <li>Cezaevi Müddetnamesi (Hükümlü varsa)</li>
            <li>Askerlik Belgesi</li>
            <li>İş Arayan Kayıt Belgesi (İşkurdan)</li>
            <li>Kira Sözleşmesi</li>
            <li>Nüfus Cüzdan Fotokopisi</li>
            <li>Sgk Hizmet Dökümü (E devletten)</li>
            <li>İcra takibi (Edevletten)</li>
            <li>Üniversite öğrencisi varsa Öğrenci belgesi</li>
        </ul>
        <p>bu şartları sağlayan vatandaşların istenilen belgeleri başvuru formunda belgeler kısmına eklemesi ZORUNLUDUR.</p>
    </div>
</div>
    <div class="tableSatir">
        <form>
            <p>
                <span>Kimlik No:</span>
                <input type="text" name="no" value="">
            </p>
            <p>
                <span>Doğum Tarihi</span>
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
                <span>Ad:</span>
                <input type="text" name="ad" value="">
            </p>
            <p>
                <span>Soyad:</span>
                <input type="text" name="soyad" value="">
            </p>
            <p>
                <span>Cep Telefonu:</span>
                <input type="text" name="telno" value="">
            </p>
            <p>
                <span>Email:</span>
                <input type="text" name="email" value="">
            </p>
            <p>
                <span>Yakınının Telefon Numarası:</span>
                <input type="text" name="telno" value="">
            </p>
            <div class="engelDurumu">
                <span>Engel Durumunuz Var Mı?</span>
                <select name="engelDurumu">
                    <option value="evet">Evet</option>
                    <option value="hayır">Hayır</option>
                </select>
            </div>
        </form>
    </div>
    <center><h2>Adres Bilgileri</h2></center>
<div class="tableSatir">
    <div class="mahalle-container">
        <label for="mahalle">Mahalle:</label>
        <select id="mahalle" name="mahalle">
            <option value="mahalle1">Adem Yavuz</option>
            <option value="mahalle2">Ahatlı</option>
            <option value="mahalle3">Balçık</option>
            <option value="mahalle4">Barış</option>
            <option value="mahalle5">Barış SB</option>
            <option value="mahalle6">Beylikbağı</option>
        <option value="mahalle7">Cumaköy</option>
        <option value="mahalle8">Cumhuriyet</option>
        <option value="mahalle9">Denizli</option>
        <option value="mahalle10">Duraklı</option>
        <option value="mahalle11">Elbizli</option>
        <option value="mahalle12">Eskihisar</option>
        <option value="mahalle13">Gaziler</option>
        <option value="mahalle14">Gebze Dilovası</option>
        <option value="mahalle15">Gebze Dilovası OBS</option>
        <option value="mahalle16">Gebze OBS</option>
        <option value="mahalle17">Güzeller</option>
        <option value="mahalle18">Hacıhalil</option>
        <option value="mahalle19">Hatipler</option>
        <option value="mahalle20">Hürriyet</option>
        <option value="mahalle21">İnönü</option>
        <option value="mahalle22">İnönü Mah Gebze Plastikçiler OBS</option>
        <option value="mahalle23">İstasyon</option>
        <option value="mahalle24">Kadıllı</option>
        <option value="mahalle25">Kargalı</option>
        <option value="mahalle26">Kirazpınar</option>
        <option value="mahalle27">Köşklü Çeşme</option>
        <option value="mahalle28">Mevlana</option>
        <option value="mahalle29">Mimar Sinan</option>
        <option value="mahalle30">Mollafenari</option>
        <option value="mahalle31">Muallımköy</option>
        <option value="mahalle32">Mudarlı</option>
        <option value="mahalle33">Mustafapaşa</option>
        <option value="mahalle34">Osman Yılmaz</option>
        <option value="mahalle35">Ovacık</option>
        <option value="mahalle36">Pelitli</option>
        <option value="mahalle37">Sultan Orhan</option>
        <option value="mahalle38">Tatlıkuyu</option>
        <option value="mahalle39">Tavşanlı</option>
        <option value="mahalle40">Tepemanayır</option>
        <option value="mahalle41">Ulus</option>
        <option value="mahalle42">Yağcılar</option>
        <option value="mahalle43">Yavuz Selim</option>
        <option value="mahalle44">Yenikent</option>
        </select>
    </div>
    <div class="form-row">
        <label for="hanesayisi">Talep Edilen Yardım:</label>
        <select id="hanesayisi" name="hanesayisi">
            <option value="yardim1">Sosyal Destek Kartı</option>
            <option value="yardim2">Doğal Afet Yardımı</option>
            <option value="yardim3">Diğer</option>        
        </select>
    </div>
    <div class="form-row">
        <label for="kimlikGorseli">Kimlik Görseli:</label>
        <input type="file" id="kimlikGorseli" name="kimlikGorseli">
    </div>
    <div class="form-row">
        <label for="gelir">Hanenin Toplam Geliri:</label>
        <input type="text" name="gelir" value="">
    </div>
    <div class="form-row">
        <label for="hanesayisi">Hanede Çalışan Kişi Sayısı<br> (Kendisi Hariç):</label>
        <select id="hanesayisi" name="hanesayisi">
            <option value="sayi1">1 (Bir)</option>
            <option value="sayi2">2 (İki)</option>
            <option value="sayi3">3 (Üç)</option>
            <option value="sayi4">4 (Dört)</option>
            <option value="sayi5">5 (Beş)</option>
            <option value="sayi6">6 (Altı)</option>
            <option value="sayi7">7 (Yedi)</option>
        </select>
    </div>
    <div class="form-row">
        <label for="sgk">SGK Hizmet Dökümü:</label>
        <input type="file" id="sgk" name="sgk">
    </div>
    <div class="form-row">
        <label for="mali" style="display: inline-block; width: 200px;">Mali Durum Genel Bilgisi:</label>
        <input type="text" name="mali" value="">
    </div>
    <div class="form-row">
        <label for="basvuruMetni" style="display: inline-block; width: 200px;">Başvuru Metni:</label>
        <input type="text" name="basvuruMetni" value="">
    </div>
    <div class="form-row">
        <label for="belgeler">Belgeler:</label>
        <input type="file" id="belgeler" name="belgeler">
    </div>
</div>
<div class="frame">
    <div class="container">
    <label for="checkbox" class="label">
      <input type="checkbox" id="checkbox" class="checkbox">
      <span class="custom-checkbox"></span>
      Gebze Belediyesinin yapmış olduğu sosyal yardım kalemlerinden istifade etmek istiyorum. Sosyal yardım başvurumun değerlendirilmesi aşamalarında muhtaçlığımın/mali durumumun tespiti için hanede yaşayan 18 yaşından büyük tüm bireylerin 6698 sayılı Kişisel Verilerin Korunması Kanunu kapsamında, Belediyeniz, diğer tüm kurum ve kuruluşlar nezdinde; üzerimize kayıtlı bulunan taşınır, taşınmaz mallarımın, tüm aboneliklerimin ve mali durumumun sorgulanmasına, iletişim bilgilerimin Belediyemiz ve sosyal yardım faaliyetinde bulunan kurum ve kuruluşlar ile paylaşılmasına, yapılan bütün sorgulamaların belgelendirilmesine, işlenmesine, mevzuatta belirtilen zamanlarda hakkımdaki sorgulama ve incelemelerin yenilenmesine izin veriyorum.KVKK Metnini Okudum, Kabul Ediyorum
    </label>
    <button onclick="onayla()">Onayla</button>
  </div>
</div>
<div style="display: flex; justify-content: center; margin-top: 20px;">
    <button onclick="basvuruOlustur()">Başvuru Oluştur</button>
  </div>
    </body>
    </html>