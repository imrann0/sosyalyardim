package com.example.example.AdminServlet;

import com.example.example.DataBase.Disabled;
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


@WebServlet(name = "disabledUpdate", value = "/adminpanel/disabledUpdate")
public class disabledUpdate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	 int DisabledID = Integer.parseInt(request.getParameter("disabledid"));
        String DisabledName = request.getParameter("disabledName");
        
        try {
            // Hibernate session'ı yapılandırması
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();

            // Personel örneğini oluşturun
            Disabled disabled = session.get(Disabled.class,DisabledID);
            disabled.setDisabledName(DisabledName);
        

            session.merge(disabled);
            transaction.commit();

            session.close();
            sessionFactory.close();

            response.sendRedirect("./engellitiptanim.jsp");
        } catch (Exception e) {
            System.err.println("Hata oluştu: " + e);
            e.printStackTrace();
        }
    }
}
