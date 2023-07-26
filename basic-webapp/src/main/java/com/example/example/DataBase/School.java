package com.example.example.DataBase;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class School {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int SchoolID;
    
    private String Durum;
    
    private String Okul;
    
    private String OkulSect;
    
    private String OkulName;

    // GET SETLER

    public int getSchoolID() {
        return SchoolID;
    }

    public void setSchoolID(int SchoolID) {
        this.SchoolID = SchoolID;
    }
    
    public String getDurum() {
        return Durum;
    }

    public void setDurum(String Durum) {
        this.Durum = Durum;
    }
    
    public String Okul() {
        return Okul;
    }

    public void setOkul(String Okul) {
        this.Okul = Okul;
    }

    public String getOkulSect() {
        return OkulSect;
    }

    public void setOkulSect(String OkulSect) {
        this.OkulSect = OkulSect;
    }
    
    public String getOkulName() {
        return OkulName;
    }

    public void setOkulName(String OkulName) {
        this.OkulName = OkulName;
    }
 

}