package com.example.example.DataBase;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.TypedQuery;

@Entity
public class Sokak {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int sokakID;
    private String sokakkod;
    private String sokakname;
    
    @ManyToOne
    @JoinColumn(name = "district_id")
    private District district;

    // Getter methods
    public int getSokakID() {
        return sokakID;
    }

    public String getSokakkod() {
        return sokakkod;
    }

    public String getSokakname() {
        return sokakname;
    }

    // Setter methods
    public void setSokakID(int sokakID) {
        this.sokakID = sokakID;
    }

    public void setSokakkod(String sokakkod) {
        this.sokakkod = sokakkod;
    }

    public void setSokakname(String sokakname) {
        this.sokakname = sokakname;
    }

    public District getDistrict() {
        return district;
    }

    public void setDistrict(District district) {
        this.district = district;
    }
    
    public static List<Sokak> getAllSokak() {
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();

        Session session = sessionFactory.openSession();
        session.beginTransaction();

        TypedQuery<Sokak> query = session.createQuery("SELECT s FROM Sokak s", Sokak.class);
        List<Sokak> Sokak = query.getResultList();

        session.getTransaction().commit();
        sessionFactory.close();

        return Sokak;
    }
    public static Sokak getByID(int userId) {
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            Sokak user = session.get(Sokak.class, userId);
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
