package com.example.example.DataBase;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Bolge {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int bolgeId;

    private String bolgeKod;
    private String bolgeAdi;
    private String bolgeAktiflikDurumu;

    // Getter ve Setter metotları

    public int getBolgeId() {
        return bolgeId;
    }

    public void setBolgeId(int bolgeId) {
        this.bolgeId = bolgeId;
    }

    public String getBolgeKod() {
        return bolgeKod;
    }

    public void setBolgeKod(String bolgeKod) {
        this.bolgeKod = bolgeKod;
    }

    public String getBolgeAdi() {
        return bolgeAdi;
    }

    public void setBolgeAdi(String bolgeAdi) {
        this.bolgeAdi = bolgeAdi;
    }

    public String getBolgeAktiflikDurumu() {
        return bolgeAktiflikDurumu;
    }

    public void setBolgeAktiflikDurumu(String bolgeAktiflikDurumu) {
        this.bolgeAktiflikDurumu = bolgeAktiflikDurumu;
    }
}
