package com.example.example.AdminServlet;

import com.example.example.DataBase.Disabled;
import com.example.example.DataBase.DisabledSub;
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


@WebServlet(name = "disableSubdUpdate", value = "/adminpanel/disabledSubUpdate")
public class DisabledSubUpdate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	 int disabledsubid = Integer.parseInt(request.getParameter("disabledsubid"));
        String disabledsubname = request.getParameter("disabledsubname");
   	 	int disabledid = Integer.parseInt(request.getParameter("disabledid"));

        
        try {
            // Hibernate session'ı yapılandırması
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
  
            // Personel örneğini oluşturun
            DisabledSub disabledSub = session.get(DisabledSub.class,disabledsubid);
            disabledSub.setDisabledSubName(disabledsubname);
            Disabled disabled = session.get(Disabled.class, disabledid);
            disabledSub.setDisabled(disabled);
        

            session.merge(disabledSub);
            transaction.commit();

            session.close();
            sessionFactory.close();

            response.sendRedirect("./engellialttip.jsp");
        } catch (Exception e) {
            System.err.println("Hata oluştu: " + e);
            e.printStackTrace();
        }
    }
}
