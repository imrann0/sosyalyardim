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
    margin-bottom: 0;
  }
  .bg {
    background-size: cover;
    background-repeat: no-repeat;
    background-color: whitesmoke;
    background-position: center;
    height: 100vh;
    width: 50%;
    float: left;
  }
  .contents {
    border: 2px solid #D3D3D3; /* Beyaz ile gri arası renk */
    border-radius: 5px;
    background-color: rgb(255, 255, 255);
    width: 50%;
    float: left;
    display: flex;
    align-items: center;
  }
  .login-form {
    border: 4px solid #D3D3D3; /* Beyaz ile gri arası renk */
    border-radius: 8px;
    margin: 0 auto;
    max-width: 400px;
    box-shadow: 0 4px 8px rgba(25, 25, 200, 0.2);
    padding: 20px;
    border-width: 2px;
    border-style: solid;
    border-color: #D3D3D3;
    box-shadow: 
    0 0 0 2px #D3D3D3, /* İlk border */
    0 0 0 4px #D3D3D3; /* İkinci border */
  }
  .login-title {
    text-align: center;
    margin: 30px auto;
    padding: 10px;
    width: 80%;
  }
  .form-group i {
    font-size: 20px;
  }
  
  .form-group label[for="username"], .form-group label[for="password"] {
    font-size: 18px !important;
  }
  
  .form-group p.text-center {
    font-size: 20px; /* Buradaki değeri istediğiniz büyüklükte ayarlayabilirsiniz */
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif, sans-serif; /* Buradaki değeri istediğiniz bir font ile değiştirebilirsiniz */
    display: inline-block;
    padding: 5px 10px;
    border-radius: 5px;
    text-decoration: none;
  }

 
  .form-group i.fas {
    font-size: 24px !important;
  }
  @media (max-width: 768px) {
    .bg {
      display: none;
    }
    .contents {
      width: 100%;
    }
    .login-form p.text-center a {
      color: black; /* "Kayıt Ol" metni rengini siyah yapıyoruz */
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
            <form action="login" method="post" class="login-form">
              <div class="login-title">
                <h3 class="text-center">Giriş Yap</h3>
              </div>
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
