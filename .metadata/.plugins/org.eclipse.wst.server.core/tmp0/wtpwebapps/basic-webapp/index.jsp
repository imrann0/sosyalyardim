<%@ page import="com.example.example.DataBase.Rol" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.net.http.HttpClient" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%    HttpSession userSession = request.getSession();
    String mail = (String) userSession.getAttribute("mail");
    // Check if the user has the "deneme2" role

%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logo Tahmin</title>
    <link rel="stylesheet" href="css/index.css">
</head>
<body>

    <section>
        <div class="circle">

        </div>
        <header>
            <a href="index.html"><img src="img/zzz.png" class="logo"></a>
            <ul>
                <%if(!(mail==null)){%>
                <li>Merahaba <%=mail%></li>
<<<<<<< HEAD
                <li><a href="adminpanel/kullaniciyukle.jsp">Admin Panel</a></li>
=======
                <%if(Rol.hasRole(userSession,"Admin")){ %>
                <li ><a href = "adminpanel/kullaniciyukle.jsp" > Admin Panel </a ></li >
              <%  }%>
>>>>>>> 28319009b0f4960b8b78d4dbaf6dcd16375fd55d
                <li><a href="Logout">Çıkış yap</a></li>
               <% }else{%>

                <li><a href="register.jsp">Kayit Ol</a></li>
                <li><a href="login.jsp">Giriş Yap</a></li>
                <% }%>
            </ul>
        </header>
        <div class="content">
            <div class="textBox">
                <h2><span>Gebze Belediyesi Sosyal Yardımlar</span></h2>
                <p>Alttaki butona tıklayarak başvurunuzu oluşturun.</p>
                <a href="muracat.jsp">Başvuru Oluştur</a>
            </div>
            <div class="imgBox">
                <img src="img/zzz.png" class="gebze">
            </div>
        </div>
        
    </section>
    <script type="text/javascript">
        function imgSlider(anything){
            document.querySelector('.bilecik').src=anything;

        }
    </script>
</body>
</html>

