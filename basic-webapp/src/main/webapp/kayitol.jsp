<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kayıt</title>
</head>
<body>
    <h1>Kayıt Ol</h1>
    <form action="kayitol" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="username">Surname:</label>
        <input type="text" id="surname" name="surname" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Login">
    </form>
    <a href="index.jsp">Zaten Hesabım var?</a>
</body>
</html>
