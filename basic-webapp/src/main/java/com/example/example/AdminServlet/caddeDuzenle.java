package com.example.example.AdminServlet;

import com.example.example.DataBase.District;
import com.example.example.DataBase.Sokak;
import com.example.example.DataBase.Zone;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.io.IOException;

@WebServlet(name = "caddeDuzenle", value = "/adminpanel/caddeDuzenle")
public class caddeDuzenle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int sokakID = Integer.parseInt(request.getParameter("SokakId"));
        int Mahid = Integer.parseInt(request.getParameter("MahId"));
        String SokakAd = request.getParameter("SokakAd");
        try {
            // Hibernate session'ı yapılandırması
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();

            // Personel örneğini oluşturun
            Sokak sokak = session.get(Sokak.class,sokakID);
            sokak.setDistrict(District.getbyID(Mahid));
            sokak.setSokakname(SokakAd);
            District mah = session.get(District.class, sokak.getDistrict().getDistrictID());
            sokak.setDistrict(mah);
            //District zone = session.get(District.class, District);

            session.merge(sokak);
            transaction.commit();

            session.close();
            sessionFactory.close();

            response.sendRedirect("./caddelist.jsp");
        } catch (Exception e) {
            System.err.println("Hata oluştu: " + e);
            e.printStackTrace();
        }
    }
}
 
