package com.example.example;

import com.example.example.DataBase.DatabaseConnection;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String enteredMail = request.getParameter("mail");
        String enteredPassword = request.getParameter("password");

        // Use the retrieved data as needed
        System.out.println("Username: " + enteredMail);
        System.out.println("Password: " + enteredPassword);

        Connection connection = null;
        try {
            connection = DatabaseConnection.baglan();

            String query = "SELECT * FROM \"personel\" WHERE mail = ? AND password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, enteredMail);
            preparedStatement.setString(2, enteredPassword);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // Valid credentials, create session and redirect
            	HttpSession sessionn = request.getSession();
            	sessionn.setAttribute("mail", enteredMail);
                
                System.out.println("Mail: " + enteredMail);
                System.out.println("Password: " + enteredPassword);
                response.sendRedirect("index.jsp");
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
