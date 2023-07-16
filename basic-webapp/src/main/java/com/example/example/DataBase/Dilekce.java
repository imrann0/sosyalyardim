package com.example.example.DataBase;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Column;
import java.util.Date;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Dilekce {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long dbid;

    @Column(name = "itraz_dilekce_ref_no")
    private String itrazDilekceRefNo;

    @Column(name = "itraz_dilekce_konu")
    private String itrazDilekceKonu;

    @Column(name = "itraz_dilekce_sonuc")
    private String itrazDilekceSonuc;

    @Column(name = "yonlendiren_birim")
    private String yonlendirenBirim;

    @Column(name = "yonlendirme_tarihi")
    private Date yonlendirmeTarihi;

    @Column(name = "dilekce_referans_no")
    private String dilekceReferansNo;

    @Column(name = "dilekce_konu")
    private String dilekceKonu;

    @Column(name = "dilekce_sonuc")
    private String dilekceSonuc;

    @Column(name = "yonlendirme_tarihi_2")
    private Date yonlendirmeTarihi2;

    // İlişki
    @ManyToOne
    @JoinColumn(name = "kbid")
    private Kimlikb kimlikb;

    // Constructor, if needed (not shown in this example).

    // Getters and Setters
    public Long getDbid() {
        return dbid;
    }

    public void setDbid(Long dbid) {
        this.dbid = dbid;
    }

    public String getItrazDilekceRefNo() {
        return itrazDilekceRefNo;
    }

    public void setItrazDilekceRefNo(String itrazDilekceRefNo) {
        this.itrazDilekceRefNo = itrazDilekceRefNo;
    }

    public String getItrazDilekceKonu() {
        return itrazDilekceKonu;
    }

    public void setItrazDilekceKonu(String itrazDilekceKonu) {
        this.itrazDilekceKonu = itrazDilekceKonu;
    }

    public String getItrazDilekceSonuc() {
        return itrazDilekceSonuc;
    }

    public void setItrazDilekceSonuc(String itrazDilekceSonuc) {
        this.itrazDilekceSonuc = itrazDilekceSonuc;
    }

    public String getYonlendirenBirim() {
        return yonlendirenBirim;
    }

    public void setYonlendirenBirim(String yonlendirenBirim) {
        this.yonlendirenBirim = yonlendirenBirim;
    }

    public Date getYonlendirmeTarihi() {
        return yonlendirmeTarihi;
    }

    public void setYonlendirmeTarihi(Date yonlendirmeTarihi) {
        this.yonlendirmeTarihi = yonlendirmeTarihi;
    }

    public String getDilekceReferansNo() {
        return dilekceReferansNo;
    }

    public void setDilekceReferansNo(String dilekceReferansNo) {
        this.dilekceReferansNo = dilekceReferansNo;
    }

    public String getDilekceKonu() {
        return dilekceKonu;
    }

    public void setDilekceKonu(String dilekceKonu) {
        this.dilekceKonu = dilekceKonu;
    }

    public String getDilekceSonuc() {
        return dilekceSonuc;
    }

    public void setDilekceSonuc(String dilekceSonuc) {
        this.dilekceSonuc = dilekceSonuc;
    }

    public Date getYonlendirmeTarihi2() {
        return yonlendirmeTarihi2;
    }

    public void setYonlendirmeTarihi2(Date yonlendirmeTarihi2) {
        this.yonlendirmeTarihi2 = yonlendirmeTarihi2;
    }

    public Kimlikb getKimlikb() {
        return kimlikb;
    }

    public void setKimlikb(Kimlikb kimlikb) {
        this.kimlikb = kimlikb;
    }
}
