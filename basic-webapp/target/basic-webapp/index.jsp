<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
                <li><a href="register.jsp">Kayit Ol</a></li>
                <li><a href="login.jsp">Giriş Yap</a></li>
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

