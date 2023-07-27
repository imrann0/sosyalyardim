package com.example.example.DataBase;

import jakarta.persistence.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.List;

@Entity
public class Zone {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int zoneId;

    private String zoneCode;
    private String zoneName;
    private String zoneIsActive;

    // Getter ve Setter metotları


    public int getZoneId() {
        return zoneId;
    }

    public void setZoneId(int zoneId) {
        this.zoneId = zoneId;
    }

    public String getZoneCode() {
        return zoneCode;
    }

    public void setZoneCode(String zoneCode) {
        this.zoneCode = zoneCode;
    }

    public String getZoneName() {
        return zoneName;
    }

    public void setZoneName(String zoneName) {
        this.zoneName = zoneName;
    }

    public String getZoneIsActive() {
        return zoneIsActive;
    }

    public void setZoneIsActive(String zoneIsActive) {
        this.zoneIsActive = zoneIsActive;
    }
    public static List <Zone> getAllZone(){
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        TypedQuery<Zone> query= session.createQuery("SELECT z FROM Zone z", Zone.class);
        List<Zone> zones = query.getResultList();
        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
        return zones;
    }
}
