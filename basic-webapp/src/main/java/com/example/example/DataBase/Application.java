package com.example.example.DataBase;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Column;
import java.time.LocalDate;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

@Entity
@Table(name = "Muracaat")
public class Application {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int appId;

    @Column(name = "arsiv_dosya_no")
    private String archiveFileNo;

    @Column(name = "muracaat_tarihi")
    private LocalDate applicationDate;

    @Column(name = "muracaat_tipi")
    private String applicationType;

    private String region; // Bölge
    private String description;

    @OneToOne(mappedBy = "application")
    private IDInfo idInfoId;

    // Constructor, if needed (not shown in this example).

    // Getters and Setters

    public int getAppId() {
        return appId;
    }

    public void setAppId(int appId) {
        this.appId = appId;
    }

    public String getArchiveFileNo() {
        return archiveFileNo;
    }

    public void setArchiveFileNo(String archiveFileNo) {
        this.archiveFileNo = archiveFileNo;
    }

    public LocalDate getApplicationDate() {
        return applicationDate;
    }

    public void setApplicationDate(LocalDate applicationDate) {
        this.applicationDate = applicationDate;
    }

    public String getApplicationType() {
        return applicationType;
    }

    public void setApplicationType(String applicationType) {
        this.applicationType = applicationType;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public IDInfo getIdInfoId() {
        return idInfoId;
    }

    public void setIdInfoId(IDInfo idInfoId) {
        this.idInfoId = idInfoId;
    }

    public static Application getbyID(int id) {
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            return session.get(Application.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
