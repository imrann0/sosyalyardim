package com.example.example.DataBase;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.TypedQuery;


@Entity
public class YonlendirilenKurum {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int YonlendirilenKurumID;

    private String YonlendirilenKurumName;

    @OneToMany(mappedBy = "yonlendirilenKurum")
    private List<YonlendirilenAltKurum> YonlendirilenAltKurumList;


    public int getYonlendirilenKurumID() {
        return YonlendirilenKurumID;
    }

    public void setYonlendirilenKurumID(int YonlendirilenKurumID) {
        this.YonlendirilenKurumID = YonlendirilenKurumID;
    }

    public String getYonlendirilenKurumName() {
        return YonlendirilenKurumName;
    }

    public void setYonlendirilenKurumName(String YonlendirilenKurumName) {
        this.YonlendirilenKurumName = YonlendirilenKurumName;
    }

    public List<YonlendirilenAltKurum> getYonlendirilenAltKurumList() {
        return YonlendirilenAltKurumList;
    }

    public void setYonlendirilenAltKurumList(List<YonlendirilenAltKurum> YonlendirilenAltKurumList) {
        this.YonlendirilenAltKurumList = YonlendirilenAltKurumList;
    }

    public static List<YonlendirilenKurum> getAll() {
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        TypedQuery<YonlendirilenKurum> query = session.createQuery("SELECT d FROM YonlendirilenKurum d ", YonlendirilenKurum.class);
        List<YonlendirilenKurum> results = query.getResultList();

        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
        return results;
    }

    public static YonlendirilenKurum getbyID(int id) {
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            return session.get(YonlendirilenKurum.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
