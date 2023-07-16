package com.example.example.DataBase;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Column;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.CascadeType;
import jakarta.persistence.OneToMany;
import java.util.List;
import java.util.Date;

@Entity
public class Kimlikb {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long kbid;

    @Column(name = "tc_kimlik_no")
    private String tcKimlikNo;

    @Column(name = "dogum_tarihi")
    private Date dogumTarihi;

    private String soyad;
    private String adi;
    private String babaAdi;
    private String anneAdi;
    private String cinsiyet;

    @Column(name = "kayit_durumu")
    private String kayitDurumu;

    private String soybis;
    private String medeniHali;

    @Column(name = "n_kayitli_oldugu_il")
    private String nKayitliOlduguIl;

    @Column(name = "n_kayitli_oldugu_ilce")
    private String nKayitliOlduguIlce;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "adid")
    private Adress address;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "ibid")
    private Contact contact;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "mbid")
    private Muracaat muracaat;

    @OneToMany(mappedBy = "kimlikb", cascade = CascadeType.ALL)
    private List<Dilekce> dilekceList;

    // Constructor, if needed (not shown in this example).

    // Getters and Setters
    public Long getKbid() {
        return kbid;
    }

    public void setKbid(Long kbid) {
        this.kbid = kbid;
    }

    public String getTcKimlikNo() {
        return tcKimlikNo;
    }

    public void setTcKimlikNo(String tcKimlikNo) {
        this.tcKimlikNo = tcKimlikNo;
    }

    public Date getDogumTarihi() {
        return dogumTarihi;
    }

    public void setDogumTarihi(Date dogumTarihi) {
        this.dogumTarihi = dogumTarihi;
    }

    public String getSoyad() {
        return soyad;
    }

    public void setSoyad(String soyad) {
        this.soyad = soyad;
    }

    public String getAdi() {
        return adi;
    }

    public void setAdi(String adi) {
        this.adi = adi;
    }

    public String getBabaAdi() {
        return babaAdi;
    }

    public void setBabaAdi(String babaAdi) {
        this.babaAdi = babaAdi;
    }

    public String getAnneAdi() {
        return anneAdi;
    }

    public void setAnneAdi(String anneAdi) {
        this.anneAdi = anneAdi;
    }

    public String getCinsiyet() {
        return cinsiyet;
    }

    public void setCinsiyet(String cinsiyet) {
        this.cinsiyet = cinsiyet;
    }

    public String getKayitDurumu() {
        return kayitDurumu;
    }

    public void setKayitDurumu(String kayitDurumu) {
        this.kayitDurumu = kayitDurumu;
    }

    public String getSoybis() {
        return soybis;
    }

    public void setSoybis(String soybis) {
        this.soybis = soybis;
    }

    public String getMedeniHali() {
        return medeniHali;
    }

    public void setMedeniHali(String medeniHali) {
        this.medeniHali = medeniHali;
    }

    public String getNKayitliOlduguIl() {
        return nKayitliOlduguIl;
    }

    public void setNKayitliOlduguIl(String nKayitliOlduguIl) {
        this.nKayitliOlduguIl = nKayitliOlduguIl;
    }

    public String getNKayitliOlduguIlce() {
        return nKayitliOlduguIlce;
    }

    public void setNKayitliOlduguIlce(String nKayitliOlduguIlce) {
        this.nKayitliOlduguIlce = nKayitliOlduguIlce;
    }

    public Adress getAddress() {
        return address;
    }

    public void setAddress(Adress address) {
        this.address = address;
    }

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public Muracaat getMuracaat() {
        return muracaat;
    }

    public void setMuracaat(Muracaat muracaat) {
        this.muracaat = muracaat;
    }

    public List<Dilekce> getDilekceList() {
        return dilekceList;
    }

    public void setDilekceList(List<Dilekce> dilekceList) {
        this.dilekceList = dilekceList;
    }
}
