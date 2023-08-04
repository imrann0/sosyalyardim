package com.example.example.DataBase;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
public class EngelliAracHizmet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int EngelliHizmetId;

    private String EngelliHizmetTip;

    private String EngelliHizmetAltTip;
    
    private String EngelliAraç;
    
    private String EngelliAracAciklama;
    
    private LocalDate HizmetKayitTarih;
    
    private String Status;
    
    private LocalDateTime RandevuTarih;

    // Getter ve Setter Metodları

    public int getEngelliHizmetId() {
        return EngelliHizmetId;
    }

    public void setEngelliHizmetId(int engelliHizmetId) {
        EngelliHizmetId = engelliHizmetId;
    }

    public String getEngelliHizmetTip() {
        return EngelliHizmetTip;
    }

    public void setEngelliHizmetTip(String engelliHizmetTip) {
        EngelliHizmetTip = engelliHizmetTip;
    }

    public String getEngelliHizmetAltTip() {
        return EngelliHizmetAltTip;
    }

    public void setEngelliHizmetAltTip(String engelliHizmetAltTip) {
        EngelliHizmetAltTip = engelliHizmetAltTip;
    }

    public String getEngelliAraç() {
        return EngelliAraç;
    }

    public void setEngelliAraç(String engelliAraç) {
        EngelliAraç = engelliAraç;
    }

    public String getEngelliAracAciklama() {
        return EngelliAracAciklama;
    }

    public void setEngelliAracAciklama(String engelliAracAciklama) {
        EngelliAracAciklama = engelliAracAciklama;
    }

    public LocalDate getHizmetKayitTarih() {
        return HizmetKayitTarih;
    }

    public void setHizmetKayitTarih(LocalDate hizmetKayitTarih) {
        HizmetKayitTarih = hizmetKayitTarih;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }

    public LocalDateTime getRandevuTarih() {
        return RandevuTarih;
    }

    public void setRandevuTarih(LocalDateTime randevuTarih) {
        RandevuTarih = randevuTarih;
    }
}
