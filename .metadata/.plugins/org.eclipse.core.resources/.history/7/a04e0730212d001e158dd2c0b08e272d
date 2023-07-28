package com.example.example.AdminServlet;

import com.example.example.DataBase.School;
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


@WebServlet(name = "Okul", value = "/adminpanel/okul")
public class Okul extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String Durum = request.getParameter("Durum");
    	String Okul = request.getParameter("Okul");
    	String OkulSect = request.getParameter("OkulSect");
    	String OkulName = request.getParameter("OkulName");
        String[] selectedRoleIds = request.getParameterValues("selected");


    
try {
    // Hibernate session'ı yapılandırması
    SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
    Session session = sessionFactory.openSession();
    Transaction transaction = session.beginTransaction();
           
    School school = new School();
    
    school.setDurum(Durum);
    school.setOkul(Okul);
    school.setOkulSect(OkulSect);
    school.setOkulName(OkulName);
    
    session.persist(school);
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

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    


