package com.example.example.AdminServlet;

import com.example.example.DataBase.YonlendirilenKurum;
import com.example.example.DataBase.YonlendirilenAltKurum;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import jakarta.servlet.annotation.WebServlet;



@WebServlet(name = "YonlendirenAltKurum", value = "/adminpanel/YonlendirenAltKurum")
public class YonlendirenAltKurumAdd extends HttpServlet {
 private static final long serialVersionUID = 1L;

 protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
     String YonlendirenAltKurumName = request.getParameter("YonlendirenAltKurumName");
     int YonlendirenKurumId = Integer.parseInt(request.getParameter("YonlendirenKurumId")); 

     try {
         // Hibernate session'ı yapılandırması
         SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
         Session session = sessionFactory.openSession();
         Transaction transaction = session.beginTransaction();

         YonlendirilenAltKurum altkurum = new YonlendirilenAltKurum();
         altkurum.setYonlendirilenAltKurumName(YonlendirenAltKurumName);

         // Retrieve the Disabled object based on disabledID
         YonlendirilenKurum YonlendirenKurumID = session.get(YonlendirilenKurum.class, YonlendirenKurumId);
         altkurum.setYonlendirilenKurum(YonlendirenKurumID);

         // Personel örneğini kaydet
         session.persist(altkurum);
         transaction.commit();

         session.close();
         sessionFactory.close();

         response.sendRedirect("./yonaltkurum.jsp");
     } catch (Exception e) {
         System.err.println("Hata oluştu: " + e);
         e.printStackTrace();
     }
 }
}

