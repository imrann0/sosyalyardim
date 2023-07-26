package com.example.example.AdminServlet;

import com.example.example.DataBase.Profession;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.io.IOException;

@WebServlet(name = "meslekServlet", value = "/adminpanel/meslektanimlama")
public class MeslekEkleListele extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String MeslekAdi = request.getParameter("meslekAd");
        String aktiflik = request.getParameter("Durum");
        try{
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            Profession meslek = new Profession();
            meslek.setProfessionName(MeslekAdi);
            meslek.setIsActive(aktiflik);

            session.persist(meslek);
            transaction.commit();

            session.close();
            sessionFactory.close();
            response.sendRedirect("./meslektanimlama.jsp");


        }catch (Exception e){
            System.out.println(e);
        }
    }
}
 
