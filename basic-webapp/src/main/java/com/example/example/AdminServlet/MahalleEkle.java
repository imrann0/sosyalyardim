package com.example.example.AdminServlet;

import com.example.example.DataBase.Zone;
import com.example.example.DataBase.District;

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


//... (import statements)

@WebServlet(name = "MahalleEkle", value = "/adminpanel/mahalleEkle")
public class MahalleEkle extends HttpServlet {
 private static final long serialVersionUID = 1L;

 protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
     String ilce = request.getParameter("ilce");
     String mahalleAd = request.getParameter("mahalleAdi");
     int zoneid = Integer.parseInt(request.getParameter("bolgeid")); 

     try {
         // Hibernate session'ı yapılandırması
         SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
         Session session = sessionFactory.openSession();
         Transaction transaction = session.beginTransaction();

         District district = new District();
         district.setIlce(ilce);
         district.setDistrictName(mahalleAd);
         // Retrieve the Disabled object based on disabledID
         Zone zone = session.get(Zone.class, zoneid);
         district.setBolge(zone);

         // Personel örneğini kaydet
         session.persist(district);
         transaction.commit();

         session.close();
         sessionFactory.close();

         response.sendRedirect("./mahallelist.jsp");
     } catch (Exception e) {
         System.err.println("Hata oluştu: " + e);
         e.printStackTrace();
     }
 }
}

