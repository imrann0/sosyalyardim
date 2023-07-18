package com.example.example.DataBase;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Column;
import java.util.Date;
import jakarta.persistence.OneToOne;

@Entity
public class Application {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int appId;

    @Column(name = "arsiv_dosya_no")
    private String archiveFileNo;

    @Column(name = "muracaat_tarihi")
    private Date applicationDate;

    @Column(name = "muracaat_tipi")
    private String applicationType;

    private String region;
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

    public Date getApplicationDate() {
        return applicationDate;
    }

    public void setApplicationDate(Date applicationDate) {
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
}