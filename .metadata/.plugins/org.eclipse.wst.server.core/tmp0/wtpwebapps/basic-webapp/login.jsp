<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login Form Design | CodeLab</title>
      <link rel="stylesheet" href="css/login.css">
   </head>
   <body>
      <div class="wrapper">
         <div class="title">
            GİRİŞ YAP
         </div>
         <form action="login" method="post">
            <div class="field">
               <input type="text" id="mail" name="mail"  required>
               <label>Email Adres</label>
            </div>
            <div class="field">
               <input type="password" id="password" name="password"  required>
               <label>Parola</label>
            </div>
            <div class="content">

               <div class="pass-link">
                  <a href="#">Şifremi Unuttum</a>
               </div>
            </div>
            <div class="field">
               <input type="submit" value="Giriş">
            </div>
            <div class="signup-link">
               Kayıtlı Değilmisin? <a href="kayitol.jsp">Kayıt Ol</a>
            </div>
         </form>
      </div>
   </body>
</html>