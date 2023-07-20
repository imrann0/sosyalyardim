package com.example.example.AdminServlet;

import com.example.example.DataBase.Personel;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.io.IOException;

@WebServlet(name = "kullanicisil", value = "/adminpanel/kullanicisil")
public class kullanicisil extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {




    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.getParameter("userId"));
        if(request.getParameter("userId") != null){
            //int userId = Integer.parseInt(request.getParameter("userId"));
            String userId = request.getParameter("userId");
            int Id = Integer.parseInt(userId);
            System.out.println(Id);
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();

            // Get the existing Personel object from the database
            Personel personel = session.get(Personel.class, userId);

            // Update the fields with new values
            personel.setStatus(0);
            session.merge(personel);
            transaction.commit();
            session.close();
            sessionFactory.close();
            response.sendRedirect("./kullaniciliste.jsp");
        }

    }
}
 
