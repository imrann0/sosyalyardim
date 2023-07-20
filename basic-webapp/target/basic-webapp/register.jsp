<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/regg.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

   <title>Gebze Bel </title>
</head>
<body>
    <div class="container">
        <header>Kayıt Bilgileri</header>

        <form action="register" method="post">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Kişisel Bilgiler</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Adınız</label>
                            <input type="text" name="username" placeholder="Adınız" required oninput="validateAlphabeticInput(this)">
                        </div>
                        
                        <script>
                        function validateAlphabeticInput(input) {
                            input.value = input.value.replace(/[^a-zA-ZğüşıöçĞÜŞİÖÇ\s]/g, '');
                        }
                        </script>
                        
                       
                        <div class="input-field">
                            <label>Soyadınız</label>
                            <input type="text" name="surname" placeholder="Soyadınız" required oninput="validateAlphabeticInput(this)">
                        </div>
                        
                       <script>
                        function validateAlphabeticInput(input) {
                            input.value = input.value.replace(/[^a-zA-ZğüşıöçĞÜŞİÖÇ\s]/g, '');
                        }
                        </script>
                        
                        
                        
                        <div class="input-field">
                            <label>Telefon Numaranız</label>
                            <input type="text" name="number" oninput="validateTCNumber(this)" placeholder="Telefon Numaranızı Giriniz" required minlength="11" maxlength="11">
                        </div>
                        
                        <script>
                            function validateTCNumber(input) {
                                const value = input.value;
                                const numericValue = value.replace(/[^0-9]/g, '');
                                
                                if (numericValue.length !== 11) {
                                    input.setCustomValidity("Telefon Numaranız 11 rakamdan oluşmalıdır.");
                                } else {
                                    input.setCustomValidity("");
                                }
                                
                                input.value = numericValue;
                            }
                        </script>
                        
                        
                        <div class="input-field">
                            <label>Cinsiyet</label>
                            <select name="gender" required>
                                <option disabled selected>Cinsiyetinizi Seçin</option>
                                <option value="Erkek">Erkek</option>
                                <option value="Kadın">Kadın</option>
                                <option value="Diger">Diger</option>
                            </select>
                        </div>
                        
                        
                        
                    </div>
                </div>

                <div class="details ID">
                    <span class="title">Diğer Hesap Bilgileri</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Email</label>
                            <input type="email" name="email" placeholder="Email adresinizi giriniz" required>
                        </div>
                        

                        <div class="input-field">
                            <label>Sifre</label>
                            <input type="password" id="password" name="password" placeholder="Sifrenizi giriniz" required>
                        </div>
                        
                        <div class="input-field">
                            <label>Şifre Onay</label>
                            <input type="password" id="confirmPassword" placeholder="Sifrenizi tekrar giriniz" required>
                        </div>
                        
                        <script>
                            const passwordInput = document.getElementById("password");
                            const confirmPasswordInput = document.getElementById("confirmPassword");
                            const submitButton = document.querySelector(".sumbit");
                        
                            confirmPasswordInput.addEventListener("input", function() {
                                const password = passwordInput.value;
                                const confirmPassword = confirmPasswordInput.value;
                        
                                if (password !== confirmPassword) {
                                    confirmPasswordInput.setCustomValidity("Åifreler uyuÅmuyor.");
                                    submitButton.disabled = true; // Butonu etkisizleÅtir
                                } else {
                                    confirmPasswordInput.setCustomValidity("");
                                    submitButton.disabled = false; // Butonu etkinleÅtir
                                }
                            });
                        </script>
                        
            
                        <div class="input-field">
                            <label>Bölüm</label>
                             <select name="section" required>
                                <option disabled selected>Lütfen Seçiniz</option>
                                <option value="Yazılım">Yazılım</option>
                                <option value="Yönetici">Yönetici</option>
                                <option value="Danışma">Danışma</option>
                                <option value="Başkanlık">Başkanlık</option>
                                <option value="Şeflik">Şeflik</option>
                                <option value="Depo Dağıtım">Depo Dağıtım</option>
                                <option value="Saha Ekibi">Saha Ekibi</option>
                                <option value="Market - İnkılap">Market - İnkılap</option>
                            </select>
                        </div>

                        
                        
                       <script>
                        function validateAlphabeticInput(input) {
                            input.value = input.value.replace(/[^a-zA-ZğüşıöçĞÜŞİÖÇ\s]/g, '');
                        }
                        </script>

                        
                    </div>

                    <button class="nextBtn">
                        <span class="btnText">Next</span>
                        <i class="uil uil-navigator"></i>
                    </button>
                </div> 
            </div>
            

            <div class="form second">
                <div class="details family">
                    <span class="title">Adres ve Diğer Bilgiler</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Adresiniz</label>
                            <input type="text" name="address" placeholder="Adresinizi Giriniz" required>
                        </div>

                        <div class="input-field">
                            <label>Ünvan</label>
                            <input type="text" name="unvan" placeholder="Ünvan Giriniz" required oninput="validateAlphabeticInput(this)">
                        </div>

                        <div class="input-field">
                            <label>Sicil No</label>
                            <input type="number" name="registrationNo" placeholder="Sicil Numaranızı Giriniz" required>
                        </div>
                        
                    </div>

                    <div class="buttons">
                        <div class="backBtn">
                            <i class="uil uil-navigator"></i>
                            <span class="btnText">Back</span>
                        </div>
                        
                        <button class="sumbit">
                            <span class="btnText">Submit</span>
                            <i class="uil uil-navigator"></i>
                        </button>
                    </div>
                </div> 
            </div>
        </form>
    </div>

    <script src="js/regg.js"></script>
</body>
</html>
