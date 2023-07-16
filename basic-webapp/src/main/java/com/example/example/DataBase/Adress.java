package com.example.example.DataBase;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Column;
import jakarta.persistence.OneToOne;

@Entity
public class Adress {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int adid;

    @Column(name = "acik_address")
    private String acikAdress;

    @Column(name = "address_no")
    private String addressNo;

    @OneToOne(mappedBy = "address")
    private Kimlikb kimlikb;

    // Constructor, if needed (not shown in this example).

    // Getters and Setters
    public int getAdid() {
        return adid;
    }

    public void setAdid(int adid) {
        this.adid = adid;
    }

    public String getAcikAdress() {
        return acikAdress;
    }

    public void setAcikAdress(String acikAdress) {
        this.acikAdress = acikAdress;
    }

    public String getAddressNo() {
        return addressNo;
    }

    public void setAddressNo(String addressNo) {
        this.addressNo = addressNo;
    }

    public Kimlikb getKimlikb() {
        return kimlikb;
    }

    public void setKimlikb(Kimlikb kimlikb) {
        this.kimlikb = kimlikb;
    }
}
