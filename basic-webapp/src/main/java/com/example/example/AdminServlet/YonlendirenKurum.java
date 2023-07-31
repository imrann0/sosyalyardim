package com.example.example.AdminServlet;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.example.example.DataBase.YonlendirilenKurum;

@WebServlet(name = "YonlendirenKurum", value = "/adminpanel/YonlendirenKurum")
public class YonlendirenKurum extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getMethod().equalsIgnoreCase("POST")) {
            // Formdan gelen verileri al
            String YonlendirilenKurumAd = request.getParameter("YonlendirilenKurumAd");
            
            // Hibernate ile veritabanına kaydet
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();

            // Veritabanına kaydedilecek çekmece nesnesini oluştur
            YonlendirilenKurum kurum = new YonlendirilenKurum();
            kurum.setYonlendirilenKurumName(YonlendirilenKurumAd);

            // Yeni çekmece nesnesini veritabanına kaydet
            session.persist(kurum);

            // İşlemi onayla ve oturumu kapat
            transaction.commit();
            session.close();

            // Başarılı bir şekilde eklendiğini varsayalım ve yönlendirme yapalım
            response.sendRedirect("./yonkurum.jsp");
        }
    }
}