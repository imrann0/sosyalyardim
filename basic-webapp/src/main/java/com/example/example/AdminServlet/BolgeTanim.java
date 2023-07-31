package com.example.example.AdminServlet;

import com.example.example.DataBase.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.io.IOException;

@WebServlet(name = "BolgeTanim", value = "/adminpanel/BolgeTanim")
public class BolgeTanim extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int mahid = Integer.parseInt(request.getParameter("MahId"));
        int bolgeid = Integer.parseInt(request.getParameter("BolgeId"));

        try {
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();


            District mahalle = session.get(District.class,mahid);
            Zone bolge = session.get(Zone.class,bolgeid);
            mahalle.setBolge(bolge);

            System.out.println(bolge);

            session.merge(mahalle);
            transaction.commit();
            session.close();
            sessionFactory.close();
            response.sendRedirect("./bolgetanimlama.jsp");

        }catch (Exception e){
            System.out.println(e);
        }
    }
}
 
