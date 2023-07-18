package com.example.example;

import com.example.example.DataBase.Personel;
import com.example.example.DataBase.Rol;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import java.util.stream.Collectors;


import java.util.Arrays;
import java.util.HashSet;
import java.util.List;



public class KayitOlServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Diğer form verilerini alın
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String surname = request.getParameter("surname");
        String number = request.getParameter("number");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        //String[] selectedRoleIds = request.getParameterValues("Cars2");
        String section = request.getParameter("section");
        String address = request.getParameter("address");
        String unvan = request.getParameter("unvan");
        int registrationNo = Integer.parseInt(request.getParameter("registrationNo"));
        

        // Diğer form verilerini işleyin

        try {
            // Hibernate session'ı yapılandırması
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();

            // Personel örneğini oluşturun
            Personel personel = new Personel();
            personel.setName(username);
            personel.setPassword(password);
            personel.setSurname(surname);
            personel.setPhone(number);
            personel.setMail(email);
            personel.setGender(gender);
            personel.setAddress(address);
            personel.setSection(section);
            personel.setUnvan(unvan);
            personel.setRegistrationNo(registrationNo);

            // Personel örneğini kaydedin
            session.persist(personel);
            transaction.commit();

            session.close();
            sessionFactory.close();

            response.sendRedirect("index.jsp");
        } catch (Exception e) {
            System.err.println("Hata oluştu: " + e);
            e.printStackTrace();
        }
    }
}
