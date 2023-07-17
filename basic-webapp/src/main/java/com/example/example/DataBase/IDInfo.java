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
public class IDInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idInfoId;

    @Column(name = "tc_kimlik_no")
    private String idNo;

    @Column(name = "dogum_tarihi")
    private Date birthDate;

    private String surname;
    private String appliName;
    private String fatherName;
    private String motherName;
    private String gender;

    @Column(name = "kayit_durumu")
    private String registrationStatus;

    private String soybis; //NE OLDUĞU BİLİNMİYOR
    private String maritalStatus;

    @Column(name = "Kayitli_oldugu_il")
    private String registrationProvince;

    @Column(name = "Kayitli_oldugu_ilce")
    private String registrationDistrict;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "address")
    private Address address;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "contact")
    private Contact contact;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "appId")
    private Application application;

    @OneToMany(mappedBy = "IdInfo", cascade = CascadeType.ALL)
    private List<Petition> petitionList;
//GETSETLER

    public int getIdInfoId() {
        return idInfoId;
    }

    public void setIdInfoId(int idInfoId) {
        this.idInfoId = idInfoId;
    }

    public String getIdNo() {
        return idNo;
    }

    public void setIdNo(String idNo) {
        this.idNo = idNo;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getAppliName() {
        return appliName;
    }

    public void setAppliName(String appliName) {
        this.appliName = appliName;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getRegistrationStatus() {
        return registrationStatus;
    }

    public void setRegistrationStatus(String registrationStatus) {
        this.registrationStatus = registrationStatus;
    }

    public String getSoybis() {
        return soybis;
    }

    public void setSoybis(String soybis) {
        this.soybis = soybis;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getRegistrationProvince() {
        return registrationProvince;
    }

    public void setRegistrationProvince(String registrationProvince) {
        this.registrationProvince = registrationProvince;
    }

    public String getRegistrationDistrict() {
        return registrationDistrict;
    }

    public void setRegistrationDistrict(String registrationDistrict) {
        this.registrationDistrict = registrationDistrict;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public Application getApplication() {
        return application;
    }

    public void setApplication(Application application) {
        this.application = application;
    }

    public List<Petition> getPetitionList() {
        return petitionList;
    }

    public void setPetitionList(List<Petition> petitionList) {
        this.petitionList = petitionList;
    }
}