package com.example.example.AdminServlet;

import com.example.example.DataBase.HelpType;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.io.IOException;

@WebServlet(name = "yardimTipServlet", value = "/adminpanel/yardimTipServlet")
public class yardimTipServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String yardimad = request.getParameter("yardimAd");
        try{
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            HelpType yardim = new HelpType();
            yardim.setHelpName(yardimad);
            session.persist(yardim);
            transaction.commit();
            session.close();
            sessionFactory.close();
            response.sendRedirect("./yardimtipi.jsp");
        }catch (Exception e){
            System.out.println(e);
        }
    }
}
 
