<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.example.example.DataBase.Rol" %>
<%@ page import="java.util.List" %>
<%
	List<Rol> roles = Rol.getAllRoles();
%>

<!DOCTYPE html>
<!-- Designined by CodingLab - youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Responsive Registration Form | CodingLab </title>
    <link rel="stylesheet" href="css/register.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container">
    <div class="title">KAYIT OL</div>
    <div class="content">
      <form action="kayitol" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">İsim</span>
            <input type="text" placeholder="Enter your name" name="username" required>
          </div>
          <div class="input-box">
            <span class="details">Soyad</span>
            <input type="text" placeholder="Enter your username" name="surname" required>
          </div>
          <div class="input-box">
            <span class="details">Tc Kimlik Numarası</span>
            <input type="text" placeholder="Confirm your password" name="identity"  maxlength="11" minlength="11" oninput="this.value = this.value.replace(/[^0-9]/g, '')" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" placeholder="Enter your email" name="email" required>
          </div>
          <div class="input-box">
            <span class="details">Telefon Numarası</span>
			<input type="tel" placeholder="Enter your number" name="number" oninput="this.value = this.value.replace(/[^0-9]/g, '')" maxlength="11" minlength="11" required>
          </div>
          <div class="input-box">
            <span class="details">Parola</span>
            <input type="password" placeholder="Enter your password" name="password" required>
          </div>
          <div class="input-box">
            <span class="details">Parola Onay</span>
            <input type="password" placeholder="Confirm your password" name="password2" required>
          </div>
          <div class="input-box">
            <span class="details">Doğum Tarihi</span>
            <input type="date" placeholder="Confirm your password" name="date" required>
          </div>
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" value="Erkek" id="dot-1">
          <input type="radio" name="gender" value="Kadın" id="dot-2">
          <input type="radio" name="gender" value="Diger" id="dot-3">
          <span class="gender-title">Cinsiyet</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot  "></span>
            <span class="gender">Erkek</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Kadın</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender">Diger</span>
            </label>
      </div>
    </div>
                  <div>
				  <select name="Cars1" size="5" id="cars1" class="form-control">
				    <% for (Rol role : roles) { %>
				      <option value="<%= role.getId() %>" ><%= role.getRoleName() %></option>
				    <% } %>
				  </select>
				</div>

    
      <div class="col-md-6">
        <select name="Cars2" size="5" id="cars2" class="form-control" multiple>
        </select>
        </div>
      <script>
      document.getElementById("cars1").addEventListener("change", function() {
        var selected = this.options[this.selectedIndex];
        document.getElementById("cars2").appendChild(selected);
      }); 
      document.getElementById("cars2").addEventListener("change", function() {
        var selected = this.options[this.selectedIndex];
        document.getElementById("cars1").appendChild(selected);
      }); 
      </script>
        <div class="button">
          <input type="submit" value="Kayıt Ol">
        </div>
      </form>
      
    </div>
  </div>

</body>
</html>

