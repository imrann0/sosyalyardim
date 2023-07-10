package com.example.example;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

//@WebServlet("/index")
public class Main extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();

            Query<Personel> query = session.createQuery("FROM Personel WHERE personelAdi = :username AND personelPassword = :password", Personel.class);
            query.setParameter("username", username);
            query.setParameter("password", password);
            List<Personel> personelList = query.list();

            for (Personel personel : personelList) {
                System.out.println("Personel ID: " + personel.getPersonelId());
                System.out.println("Personel Adı: " + personel.getPersonelAdi());
                System.out.println("Personel Soyadı: " + personel.getPersonelSoyad());
                System.out.println("Personel Sifre: " + personel.getPersonelPassword());
                System.out.println("---------------------------");
            }

            session.close();
            sessionFactory.close();
            response.sendRedirect("home.jsp");
        } catch (Exception e) {
            System.err.println("Hata oluştu: " + e);
            e.printStackTrace();
        }
    }
}
