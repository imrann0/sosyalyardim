package com.example.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String enteredUsername = request.getParameter("username");
        String enteredPassword = request.getParameter("password");

        // Use the retrieved data as needed
        System.out.println("Username: " + enteredUsername);
        System.out.println("Password: " + enteredPassword);

        Connection connection = null;
        try {
            connection = DatabaseConnection.baglan();

            String query = "SELECT * FROM \"personel\" WHERE personelAdi = ? AND personelPassword = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, enteredUsername);
            preparedStatement.setString(2, enteredPassword);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // Valid credentials, do something
                // For example, retrieve values from the result set
                String username = resultSet.getString("personelAdi");
                String password = resultSet.getString("personelPassword");
                String role = resultSet.getString("rol"); 
                System.out.println("Logged in successfully! Username: " + username + ", Password: " + password);

                // Redirect to a different page 
                if (role.equals("A")) {
                    // Redirect to admin page
                    response.sendRedirect("admin.jsp");
                } else if (role.equals("P")) {
                    // Redirect to user page
                    response.sendRedirect("Personel.jsp");
                } else {
                    // Redirect to a default page or show an error message
                    response.sendRedirect("home.jsp");
                }
            } else {
                // Invalid credentials, handle the case
                System.out.println("Invalid credentials");

                // Redirect back to the login page with an error message
                response.sendRedirect("login.jsp?error=true");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database connection error
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
