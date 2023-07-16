package com.example.example.DataBase;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;

@Entity
public class Contact {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ibid;

    private String ilce;
    private String mahalle;
    private String caddeSokak;
    private String adresTarifi;
    private String apartmanSite;
    private String blokKapiNo;
    private String daireNo;
    private String evTelefon;
    private String cepTelefon;
    private String digerTel;
    private String ePosta;

    @OneToOne(mappedBy = "contact")
    private Kimlikb kimlikb;

    // Constructor, if needed (not shown in this example).

    // Getters and Setters
    public Long getIbid() {
        return ibid;
    }

    public void setIbid(Long ibid) {
        this.ibid = ibid;
    }

    public String getIlce() {
        return ilce;
    }

    public void setIlce(String ilce) {
        this.ilce = ilce;
    }

    public String getMahalle() {
        return mahalle;
    }

    public void setMahalle(String mahalle) {
        this.mahalle = mahalle;
    }

    public String getCaddeSokak() {
        return caddeSokak;
    }

    public void setCaddeSokak(String caddeSokak) {
        this.caddeSokak = caddeSokak;
    }

    public String getAdresTarifi() {
        return adresTarifi;
    }

    public void setAdresTarifi(String adresTarifi) {
        this.adresTarifi = adresTarifi;
    }

    public String getApartmanSite() {
        return apartmanSite;
    }

    public void setApartmanSite(String apartmanSite) {
        this.apartmanSite = apartmanSite;
    }

    public String getBlokKapiNo() {
        return blokKapiNo;
    }

    public void setBlokKapiNo(String blokKapiNo) {
        this.blokKapiNo = blokKapiNo;
    }

    public String getDaireNo() {
        return daireNo;
    }

    public void setDaireNo(String daireNo) {
        this.daireNo = daireNo;
    }

    public String getEvTelefon() {
        return evTelefon;
    }

    public void setEvTelefon(String evTelefon) {
        this.evTelefon = evTelefon;
    }

    public String getCepTelefon() {
        return cepTelefon;
    }

    public void setCepTelefon(String cepTelefon) {
        this.cepTelefon = cepTelefon;
    }

    public String getDigerTel() {
        return digerTel;
    }

    public void setDigerTel(String digerTel) {
        this.digerTel = digerTel;
    }

    public String getEPosta() {
        return ePosta;
    }

    public void setEPosta(String ePosta) {
        this.ePosta = ePosta;
    }

    public Kimlikb getKimlikb() {
        return kimlikb;
    }

    public void setKimlikb(Kimlikb kimlikb) {
        this.kimlikb = kimlikb;
    }
}
