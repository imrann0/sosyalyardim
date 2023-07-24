<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.example.DataBase.Personel" %>
<%@ page import="com.example.example.DataBase.Rol" %>
<%@ page import="java.util.Set" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="com.example.example.HibernateSessionFactory" %>

<%
    HttpSession userSession = request.getSession();
    Set<Rol> roles = (Set<Rol>) userSession.getAttribute("roles");
    String mail = (String) userSession.getAttribute("mail");
    // Check if the user has the "deneme2" role
    Rol.hasRole(userSession,"Kullanici");




    boolean hasDeneme2Role = false;
    if (roles != null) {
        for (Rol rol : roles) {
            if (rol.getRoleName().equals("Role_Basvuru_Olustur")) {
                hasDeneme2Role = true;
                break;
            }
        }
    }

    if (!hasDeneme2Role) {
        response.sendRedirect("login.jsp");
    }


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

    <!-- Display the logged-in user's email -->
    <p>Logged-in User: <%= mail %></p>
    <i><a href="Logout"> <input type="submit">Çıkış Yap</a></i>

    <!-- Display the roles of the logged-in user -->
    <% if (roles != null && !roles.isEmpty()) { %>
        <h2>Personel Roller:</h2>
        <ul>
            <% for (Rol rol : roles) { %>
                <li><%= rol.getRoleName() %></li>
            <% } %>
        </ul>
    <% } else { %>
        <p>Kullanıcının rolleri bulunamadı.</p>
    <% } %>
</body>
</html>
