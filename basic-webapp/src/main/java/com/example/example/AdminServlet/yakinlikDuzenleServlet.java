package com.example.example.AdminServlet;

import com.example.example.DataBase.degreeofAffinity;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.io.IOException;

@WebServlet(name = "yakinlikDuzenleServlet", value = "/adminpanel/yakinlikDuzenleServlet")
public class yakinlikDuzenleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int akraba = Integer.parseInt(request.getParameter("akrabaId"));
        String akrabaad = request.getParameter("akrabaAd");
        String Durum = request.getParameter("Durum");
        try {
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            degreeofAffinity Akraba = session.get(degreeofAffinity.class,akraba);
            Akraba.setAffinityName(akrabaad);
            Akraba.setIsActiveAffinity(Durum);
            session.merge(Akraba);
            transaction.commit();
            session.close();
            sessionFactory.close();
            response.sendRedirect("./yakinlik.jsp");

        }catch (Exception e){
            System.out.println(e);
        }
    }

}
 
