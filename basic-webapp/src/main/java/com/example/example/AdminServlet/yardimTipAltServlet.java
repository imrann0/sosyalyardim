package com.example.example.AdminServlet;

import com.example.example.DataBase.HelpType;
import com.example.example.DataBase.HelpTypeSub;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.io.IOException;
import java.util.Set;

@WebServlet(name = "yardimTipAltServlet", value = "/adminpanel/yardimTipAltServlet")
public class yardimTipAltServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int ID = Integer.parseInt(request.getParameter("yardimAd"));
        String yardimadalt = request.getParameter("yardimalatAd");
        try{
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            HelpTypeSub yardim = new HelpTypeSub();
            yardim.setHelpId(HelpType.getbyID(ID));
            yardim.setHelpSubName(yardimadalt);
            session.persist(yardim);
            transaction.commit();
            session.close();
            sessionFactory.close();

            response.sendRedirect("./yardimalttip.jsp");
        }catch (Exception e){
            System.out.println(e);
        }
    }
}
 
