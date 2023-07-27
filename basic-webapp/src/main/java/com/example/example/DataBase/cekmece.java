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

@Entity
public class cekmece {
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cekmeceId;
    private String cekmeceAdi;
    private String durum;
    
    public int getCekmeceId() {
        return cekmeceId;
    }

    public void setCekmeceId(int cekmeceId) {
        this.cekmeceId = cekmeceId;
    }

    
    public String getCekmeceAdi() {
        return cekmeceAdi;
    }

    public void setCekmeceAdi(String cekmeceAdi) {
        this.cekmeceAdi = cekmeceAdi;
    }

    public String getDurum() {
        return durum;
    }

    public void setDurum(String durum) {
        this.durum = durum;
    }
    public static List<cekmece> getAllUserInfo() {
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();

        Session session = sessionFactory.openSession();
        session.beginTransaction();

        TypedQuery<cekmece> query = session.createQuery("SELECT p FROM cekmece p where p.durum = 'Aktif'", cekmece.class);
        List<cekmece> results = query.getResultList();


        session.getTransaction().commit();
        session.close();
        sessionFactory.close();

        return results;
    }
    public static cekmece getUserInfoById(int userId) {
    	Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            return session.get(cekmece.class, userId);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
