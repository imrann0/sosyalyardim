<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Ulakbel Giriş</title>
    <style>
      .half {
        margin-bottom: 0; /* Tablonun altındaki boşluğu sıfırlar */
      }
      .bg {
        background-size: cover;
        background-color: rgb(209, 245, 3);
        background-position: center;
        height: 100vh; /* Arka plan resminin yüksekliği ekran yüksekliği kadar olacak */
        width: 50%; /* Tablonun yarısını kaplayacak */
        float: left; /* Tablonun yanına yerleştirir */
      }
      .contents {
        background-color: rgb(255, 255, 255);
        width: 50%; 
        float: left; 
        display: flex; 
        align-items: center; 
      }
      .login-form {
        margin: 0 auto; /* Formu yatayda ortalar */
        max-width: 400px; /* Formun maksimum genişliğini ayarlar */
      }
      @media (max-width: 768px) {
        .bg {
          display: none; /* Mobil cihazlarda arka plan resmini gizler */
        }
        .contents {
          width: 100%; /* Mobil cihazlarda tablonun tam genişlikte olmasını sağlar */
        }
      }
    </style>
  </head>
  <body>
  

  <div class="d-lg-flex half">
    <div class="bg order-1 order-md-2" style="background-image: url('images/gebz.png');"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7">
            <div class="mb-4">
              <h3 class="text-center">Giriş Yap</h3>
            </div>
            <form action="#" method="post" class="login-form">
              <div class="form-group first">
                <label for="username"><i class="fas fa-envelope"></i> Email</label>
                <input type="email" name="mail" class="form-control" id="username">

              </div>
              <div class="form-group last mb-3">
                <label for="password"><i class="fas fa-lock"></i> Şifre</label>
                <input type="password" name="password" class="form-control" id="password">
                
              </div>
              
              

              <input type="submit" value="Giriş" class="btn btn-block btn-primary">
              
              <div class="form-group mt-3">
                <p class="text-center">Hesabınız yok mu? <a href="register.jsp">Kayıt Ol</a></p>
              </div>
              
            </form>
          </div>
        </div>
      </div>
    </div>

    
  </div>
    
    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
