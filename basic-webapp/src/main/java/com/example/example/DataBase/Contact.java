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
    private int ContactId;

    private String district;
    private String neighborhood;
    private String Street;
    private String addressDefinition;
    private String Apartment;
    private String blockDoorNo;
    private String apartmentNo;
    private String homePhone;
    private String cellPhone;
    private String otherTel;
    private String eMail;

    @OneToOne(mappedBy = "contact")
    private IDInfo IDInfo;

    public int getContactId() {
        return ContactId;
    }

    public void setContactId(int contactId) {
        ContactId = contactId;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getNeighborhood() {
        return neighborhood;
    }

    public void setNeighborhood(String neighborhood) {
        this.neighborhood = neighborhood;
    }

    public String getStreet() {
        return Street;
    }

    public void setStreet(String street) {
        Street = street;
    }

    public String getAddressDefinition() {
        return addressDefinition;
    }

    public void setAddressDefinition(String addressDefinition) {
        this.addressDefinition = addressDefinition;
    }

    public String getApartment() {
        return Apartment;
    }

    public void setApartment(String apartment) {
        Apartment = apartment;
    }

    public String getBlockDoorNo() {
        return blockDoorNo;
    }

    public void setBlockDoorNo(String blockDoorNo) {
        this.blockDoorNo = blockDoorNo;
    }

    public String getApartmentNo() {
        return apartmentNo;
    }

    public void setApartmentNo(String apartmentNo) {
        this.apartmentNo = apartmentNo;
    }

    public String getHomePhone() {
        return homePhone;
    }

    public void setHomePhone(String homePhone) {
        this.homePhone = homePhone;
    }

    public String getCellPhone() {
        return cellPhone;
    }

    public void setCellPhone(String cellPhone) {
        this.cellPhone = cellPhone;
    }

    public String getOtherTel() {
        return otherTel;
    }

    public void setOtherTel(String otherTel) {
        this.otherTel = otherTel;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public com.example.example.DataBase.IDInfo getIDInfo() {
        return IDInfo;
    }

    public void setIDInfo(com.example.example.DataBase.IDInfo IDInfo) {
        this.IDInfo = IDInfo;
    }
}
