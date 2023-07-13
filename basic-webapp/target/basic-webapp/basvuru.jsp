<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    // Kullanıcı girişi kontrolü
    HttpSession sessionn = request.getSession(false);
    boolean isLoggedIn = (session != null && session.getAttribute("username") != null);

    if (isLoggedIn) {
        // Kullanıcının erişime izin verilen rolleri kontrol et
        String role = (String) sessionn.getAttribute("role");

        if (role != null && (role.equals("A") || role.equals("P"))) {
            // Erişime izin verilen roller için sayfa içeriğini görüntüle
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
    <!-- Sayfa içeriği -->
    <h1>Hoş Geldiniz!</h1>
    <p>Erişime izin verilen kullanıcılar için sayfa içeriği buraya gelecektir.</p>
</body>
</html>
<%
        } else {
            // Erişim izni olmayan roller için login sayfasına yönlendir
            response.sendRedirect("login.jsp");
        }
    } else {
        // Oturum açılmamışsa giriş sayfasına yönlendir
        response.sendRedirect("login.jsp");
    }
%>
