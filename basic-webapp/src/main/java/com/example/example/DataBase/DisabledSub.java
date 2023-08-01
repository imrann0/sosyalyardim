package com.example.example.DataBase;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.TypedQuery;


@Entity
@Table(name = "EngelliAltTip")
public class DisabledSub {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int disabledSubID;

    private String disabledSubName;
    
    @ManyToOne
    private Disabled disabled;

    public int getDisabledSubID() {
        return disabledSubID;
    }

    public void setDisabledSubID(int disabledSubID) {
        this.disabledSubID = disabledSubID;
    }

    public String getDisabledSubName() {
        return disabledSubName;
    }

    public void setDisabledSubName(String disabledSubName) {
        this.disabledSubName = disabledSubName;
    }
    
    public Disabled getDisabled() {
        return disabled;
    }

    public void setDisabled(Disabled disabled) {
        this.disabled = disabled;
   
    }
    
    public static List<DisabledSub> getAllDisabledSub(){
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        TypedQuery<DisabledSub> query = session.createQuery("SELECT d FROM DisabledSub d ", DisabledSub.class);
        List<DisabledSub> results = query.getResultList();

        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
        return results;
    }
    
    public static List<String> getDisabledSubNamesByDisabledID(int disabledID) {
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        TypedQuery<String> query = session.createQuery("SELECT ds.disabledSubName FROM DisabledSub ds WHERE ds.disabled.disabledID = :disabledID", String.class);
        query.setParameter("disabledID", disabledID);
        List<String> results = query.getResultList();

        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
        return results;
    }
    
    public static DisabledSub getbySubID(int id){
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            return session.get(DisabledSub.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}