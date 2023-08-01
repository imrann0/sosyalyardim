package com.example.example.DataBase;

import jakarta.persistence.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


import java.util.List;
import java.util.Set;

@Entity
public class HelpTypeSub {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int helpSubId;
    private String helpSubName;
    @ManyToOne
    @JoinColumn(name = "HelpId")
    private HelpType helpId;


    public int getHelpSubId() {
        return helpSubId;
    }

    public void setHelpSubId(int helpSubId) {
        this.helpSubId = helpSubId;
    }


    public String getHelpSubName() {
        return helpSubName;
    }

    public void setHelpSubName(String helpSubName) {
        this.helpSubName = helpSubName;
    }

    public HelpType getHelpId() {
        return helpId;
    }

    public void setHelpId(HelpType helpId) {
        this.helpId = helpId;
    }

    public static List<HelpTypeSub> getAll(){
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        TypedQuery<HelpTypeSub> query = session.createQuery("SELECT h FROM HelpTypeSub h ", HelpTypeSub.class);
        List<HelpTypeSub> results=query.getResultList();

        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
        return results;
    }
    public static HelpTypeSub getbyID(int id){
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            return session.get(HelpTypeSub.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


}
