package com.example.example.DataBase;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Column;
import java.util.Date;
import jakarta.persistence.OneToOne;

@Entity
public class Muracaat {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long mbid;

    @Column(name = "arsiv_dosya_no")
    private String arsivDosyaNo;

    @Column(name = "muracaat_tarihi")
    private Date muracaatTarihi;

    @Column(name = "muracaat_tipi")
    private String muracaatTipi;

    private String bolge;
    private String aciklama;

    @OneToOne(mappedBy = "muracaat")
    private Kimlikb kimlikb;

    // Constructor, if needed (not shown in this example).

    // Getters and Setters
    public Long getMbid() {
        return mbid;
    }

    public void setMbid(Long mbid) {
        this.mbid = mbid;
    }

    public String getArsivDosyaNo() {
        return arsivDosyaNo;
    }

    public void setArsivDosyaNo(String arsivDosyaNo) {
        this.arsivDosyaNo = arsivDosyaNo;
    }

    public Date getMuracaatTarihi() {
        return muracaatTarihi;
    }

    public void setMuracaatTarihi(Date muracaatTarihi) {
        this.muracaatTarihi = muracaatTarihi;
    }

    public String getMuracaatTipi() {
        return muracaatTipi;
    }

    public void setMuracaatTipi(String muracaatTipi) {
        this.muracaatTipi = muracaatTipi;
    }

    public String getBolge() {
        return bolge;
    }

    public void setBolge(String bolge) {
        this.bolge = bolge;
    }

    public String getAciklama() {
        return aciklama;
    }

    public void setAciklama(String aciklama) {
        this.aciklama = aciklama;
    }

    public Kimlikb getKimlikb() {
        return kimlikb;
    }

    public void setKimlikb(Kimlikb kimlikb) {
        this.kimlikb = kimlikb;
    }
}
