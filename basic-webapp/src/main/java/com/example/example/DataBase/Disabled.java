package com.example.example.DataBase;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.TypedQuery;
import jakarta.persistence.OneToMany;


@Entity
public class Disabled {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int disabledID;

    private String disabledName;
    
    @OneToMany(mappedBy = "disabled")
    private List<DisabledSub> disabledSubList;


    public int getDisabledID() {
        return disabledID;
    }

    public void setDisabledID(int disabledID) {
        this.disabledID = disabledID;
    }

    public String getDisabledName() {
        return disabledName;
    }

    public void setDisabledName(String disabledName) {
        this.disabledName = disabledName;
    }
    
    public List<DisabledSub> getDisabledSubList() {
        return disabledSubList;
    }

    public void setDisabledSubList(List<DisabledSub> disabledSubList) {
        this.disabledSubList = disabledSubList;
    }
    
    public static List<Disabled> getAll(){
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        TypedQuery<Disabled> query = session.createQuery("SELECT d FROM Disabled d ", Disabled.class);
        List<Disabled> results = query.getResultList();

        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
        return results;
    }
    
    public static Disabled getbyID(int id){
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            return session.get(Disabled.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}