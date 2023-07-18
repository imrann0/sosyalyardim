package com.example.example;
import com.example.example.DataBase.Personel;
import com.example.example.DataBase.Rol;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Set;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String enteredMail = request.getParameter("mail");
        String enteredPassword = request.getParameter("password");

        // Use the retrieved data as needed
        System.out.println("Username: " + enteredMail);
        System.out.println("Password: " + enteredPassword);

        // Check if the entered credentials are valid
        boolean isValidLogin = Personel.checkLogin(enteredMail, enteredPassword);

        if (isValidLogin) {
            // Valid credentials, create session and redirect
            HttpSession session = request.getSession();
            session.setAttribute("mail", enteredMail);

            // Fetch the Personel instance using the getPersonelByMail method
            Personel personelInstance = Personel.getPersonelByMail(enteredMail);

            if (personelInstance != null) {
                Set<Rol> roles = personelInstance.getRoles();
                session.setAttribute("roles", roles);

            }

            System.out.println("Mail: " + enteredMail);
            System.out.println("Password: " + enteredPassword);
            response.sendRedirect("index.jsp");
        } else {
            // Invalid credentials, handle the case
            System.out.println("Invalid credentials");

            // Redirect back to the login page with an error message
            response.sendRedirect("login.jsp?error=true");
        }
    }
}
