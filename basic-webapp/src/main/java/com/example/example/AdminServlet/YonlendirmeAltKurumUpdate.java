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


@WebServlet(name = "YonlendirmeAltKurumUpdate", value = "/adminpanel/YonlendirmeAltKurumUpdate")
public class YonlendirmeAltKurumUpdate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	 int YonlendirenAltKurumid = Integer.parseInt(request.getParameter("YonlendirenAltKurumid"));
        String YonlendirenAltKurumAd = request.getParameter("YonlendirenAltKurumAd");
   	 int YonlendirenKurumId = Integer.parseInt(request.getParameter("durum"));

        
        try {
            // Hibernate session'ı yapılandırması
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();

            // Personel örneğini oluşturun
            YonlendirilenAltKurum altkurum = session.get(YonlendirilenAltKurum.class,YonlendirenAltKurumid);
            altkurum.setYonlendirilenAltKurumName(YonlendirenAltKurumAd);
            YonlendirilenKurum kurum = session.get(YonlendirilenKurum.class, YonlendirenKurumId);
            altkurum.setYonlendirilenKurum(kurum);
        

            session.merge(altkurum);
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