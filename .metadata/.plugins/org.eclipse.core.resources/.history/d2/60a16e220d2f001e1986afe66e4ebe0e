package com.example.example.AdminServlet;

import com.example.example.DataBase.HelpType;
import com.example.example.DataBase.Profession;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.io.IOException;

@WebServlet(name = "yardimTipServletDuzenle", value = "/adminpanel/yardimTipServletDuzenle")
public class yardimTipServletDuzenle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int meslekid = Integer.parseInt(request.getParameter("yardimId"));
        String meslekad = request.getParameter("yardimAd");
        try {
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            HelpType tip = session.get(HelpType.class,meslekid);
            tip.setHelpName(meslekad);
            session.merge(tip);
            transaction.commit();
            session.close();
            sessionFactory.close();
            response.sendRedirect("./yardimtipi.jsp");

        }catch (Exception e){
            System.out.println(e);
        }
    }
}
 
