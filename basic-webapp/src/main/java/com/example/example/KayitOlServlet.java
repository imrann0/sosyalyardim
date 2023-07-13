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
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

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
        String identity = request.getParameter("identity");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String[] selectedRoleIds = request.getParameterValues("Cars2");
        
        String dateString = request.getParameter("date");
        LocalDate date = LocalDate.parse(dateString, DateTimeFormatter.ofPattern("yyyy-MM-dd"));

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
            personel.setIdentity(identity);
            personel.setMail(email);
            personel.setGender(gender);
            personel.setDate(date);

            // Personel rol örneklerini veritabanından alın
            List<Integer> roleIds = Arrays.stream(selectedRoleIds)
            	    .map(Integer::parseInt)
            	    .collect(Collectors.toList());

            	List<Rol> selectedRoles = session.createQuery("FROM Rol WHERE id IN (:roleIds)", Rol.class)
            	    .setParameterList("roleIds", roleIds)
            	    .getResultList();


            // Personel rol setini güncelleyin
            personel.setRoles(new HashSet<>(selectedRoles));

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
