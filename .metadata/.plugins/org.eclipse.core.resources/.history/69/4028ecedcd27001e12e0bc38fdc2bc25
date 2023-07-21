package com.example.example.AdminServlet;

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
import jakarta.servlet.annotation.WebServlet;


@WebServlet(name = "AdminUpdate", value = "/adminpanel/adminupdate")
public class AdminUpdate extends HttpServlet {
    private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    // Diğer form verilerini alın
    int userId = Integer.parseInt(request.getParameter("userId")); // Get the user ID for the record to update
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String unvan = request.getParameter("unvan");
    String username = request.getParameter("username");
    String surname = request.getParameter("surname");
    Long sicilNo = Long.parseLong(request.getParameter("sicilNo"));
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String gender = request.getParameter("cinsiyet");
    String SelectedSection = request.getParameter("selectedBolum");
    int status = Integer.parseInt(request.getParameter("durum"));
    String[] selectedRoleIds = request.getParameterValues("selected");

    if (gender != null) {
        if (gender.equals("E")) {
            gender = "E";
        } else {
            gender = "K";
        }
    }

    try {
        // Hibernate session'ı yapılandırması
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();

        // Get the existing Personel object from the database
        Personel personel = session.get(Personel.class, userId);

        // Update the fields with new values
        personel.setName(name);
        personel.setPassword(password);
        personel.setSurname(surname);
        personel.setPhone(phone);
        personel.setMail(email);
        personel.setGender(gender);
        personel.setUnvan(unvan);
        personel.setUserName(username);
        personel.setRegistrationNo(sicilNo);
        personel.setAddress(address);
        personel.setStatus(status);
        personel.setSection(SelectedSection);

        if (selectedRoleIds != null) {
            List<Integer> roleIds = Arrays.stream(selectedRoleIds)
                    .map(Integer::parseInt)
                    .collect(Collectors.toList());

            List<Rol> selectedRoles = session.createQuery("FROM Rol WHERE id IN (:roleIds)", Rol.class)
                    .setParameterList("roleIds", roleIds)
                    .getResultList();

            // Personel rol setini güncelleyin
            personel.setRoles(new HashSet<>(selectedRoles));
        } else {
            System.out.println(selectedRoleIds);
        }

        // Update the existing record with the new data
        session.merge(personel);
        transaction.commit();

        session.close();
        sessionFactory.close();

        response.sendRedirect("./kullaniciliste.jsp");
    } catch (Exception e) {
        System.err.println("Hata oluştu: " + e);
        e.printStackTrace();
    }
}
}
