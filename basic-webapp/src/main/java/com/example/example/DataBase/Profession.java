package com.example.example.DataBase;


import jakarta.persistence.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.List;

@Entity
public class Profession {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int professionId;

    private String professionName;
    private String isActive;

    public int getProfessionId() {
        return professionId;
    }

    public void setProfessionId(int professionId) {
        this.professionId = professionId;
    }

    public String getProfessionName() {
        return professionName;
    }

    public void setProfessionName(String professionName) {
        this.professionName = professionName;
    }

    public String getIsActive() {
        return isActive;
    }

    public void setIsActive(String isActive) {
        this.isActive = isActive;
    }
    public static List<Profession> getAllMeslek(){
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        TypedQuery<Profession> query = session.createQuery("SELECT professions FROM Profession professions ", Profession.class);
        List<Profession>results=query.getResultList();

        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
        return results;

    }
    public static Profession getinfobyProfessionId(int profid){
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            Profession Meslek = session.get(Profession.class, profid);
            return Meslek;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}