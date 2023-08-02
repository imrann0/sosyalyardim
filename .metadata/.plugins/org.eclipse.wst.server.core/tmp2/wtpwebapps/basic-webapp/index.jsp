<%@ page import="com.example.example.DataBase.Rol" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.net.http.HttpClient" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    HttpSession userSession = request.getSession();
    String mail = (String) userSession.getAttribute("mail");
    // Check if the user has the "deneme2" role

%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sosyal Yardım Kullanıcı Sitesi</title>
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

                <li ><a href = "adminpanel/kullaniciyukle.jsp" > Admin Panel </a ></li >

                <li><a href="Logout">Çıkış yap</a></li>
               <% }else{%>

                <li><a href="register.jsp">Kayit Ol</a></li>
                <li><a href="loginnn.jsp">Giriş Yap</a></li>
                <% }%>
            </ul>
        </header>
        <div class="content">
            <div class="textBox">
                <h2><span>Gebze Belediyesi Sosyal Yardımlar</span></h2>
                <p>Alttaki butona tıklayarak başvurunuzu oluşturun.</p>
                <a href="MuracaatGirisi.jsp">Müracaat Girişi</a>
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

