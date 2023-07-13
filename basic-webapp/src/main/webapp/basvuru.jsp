<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.example.DataBase.Rol" %>
<%@ page import="com.example.example.DataBase.Personel" %>
<%@ page import="java.util.Set" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    // Kullanıcı girişi kontrolü
    HttpSession sess = request.getSession(false);
    boolean isLoggedIn = (sess != null && sess.getAttribute("username") != null);

    if (isLoggedIn) {
        // Kullanıcının erişime izin verilen rolleri kontrol et
        String username = (String) sess.getAttribute("username");
        Personel personel = Personel.getPersonelByUsername(username);

        if (personel != null) {
            Set<Rol> roller = personel.getRoles();
            boolean hasAccess = false;

            for (Rol rol : roller) {
                if (rol.getId() == 1 || rol.getId() == 2) {
                    hasAccess = true;
                    break;
                }
            }

            if (hasAccess) {
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
            // Kullanıcı bulunamadı, login sayfasına yönlendir
            response.sendRedirect("login.jsp");
        }
    } else {
        // Oturum açılmamışsa giriş sayfasına yönlendir
        response.sendRedirect("login.jsp");
    }
%>
