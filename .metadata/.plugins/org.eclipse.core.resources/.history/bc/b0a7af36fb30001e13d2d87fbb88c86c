package com.example.example.AdminServlet;

import com.example.example.DataBase.Address;
import com.example.example.DataBase.Application;
import com.example.example.DataBase.Contact;
import com.example.example.DataBase.IDInfo;
import com.example.example.DataBase.Petition;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import jakarta.servlet.annotation.WebServlet;
import java.sql.Date;
 

@WebServlet(name = "Muracaat", value = "/adminpanel/muracat")
public class Muracaat extends HttpServlet {
    private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
	
    // ID Info
	
    String name = request.getParameter("name");
    String surname = request.getParameter("soyisim");
    String tc = request.getParameter("tckimlik");
    String phone = request.getParameter("phone");
    String kayitDurum = request.getParameter("KayitDurum");
    String il = request.getParameter("il");
    String ilce = request.getParameter("ilce");
    String cinsiyet = request.getParameter("cinsiyet");
    String anneAdi = request.getParameter("anneAd");
    String babaAdi = request.getParameter("babaAd");
    String ciltno = request.getParameter("ciltno"); 
    String medeniDurum = request.getParameter("medenidurum");												//Medeni Durum
    String sirano = request.getParameter("sirano");
    String esAd = request.getParameter("esAd");
    String esSoyAd = request.getParameter("esSoyAd");
    String adresno = request.getParameter("adresno");
    String dogumtarih = request.getParameter("dogumtarih");
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    LocalDate date = LocalDate.parse(dogumtarih, formatter);


    //İletisim Bilgileri
    
    String iletisimilce = request.getParameter("iletisimilce");
    String iletisimMahalle = request.getParameter("iletisimMahalle");
    String iletisimSokak = request.getParameter("iletisimSokak");
    String acikAdres = request.getParameter("acikAdres");
    String apartman = request.getParameter("apartman");
    String Blok = request.getParameter("Blok");
    String daireNo = request.getParameter("daireNo");
    String evTel = request.getParameter("evTel");
    String cepTel = request.getParameter("cepTel");
    String digerTel = request.getParameter("digerTel");
    String eposta = request.getParameter("eposta");
    String adresTarif = request.getParameter("adresTarif");
    
    //Muraacat Bilgileri
    
    String arsivDosyaNo = request.getParameter("arsivDosyaNo");
    String yonlendirmeTarihDate = request.getParameter("yonlendirmeTarih");
    LocalDate yonlendirmeTarih = LocalDate.parse(yonlendirmeTarihDate, formatter);
    
    String Bolge = request.getParameter("Bolge");
    String muracaattip = request.getParameter("muracaattip");
    String comments = request.getParameter("comments");

    //Dilekçe Bilgileri
    
    String dilekceRefNo = request.getParameter("dilekceRefNo");
    String dilekceKonu = request.getParameter("dilekceKonu");
    String dilekceSonuc = request.getParameter("dilekceSonuc");
    String birim = request.getParameter("birim");
    String yonlendirTarihiDate = request.getParameter("yonlendirTarihi");
    LocalDate yonlendirTarihi = LocalDate.parse(yonlendirTarihiDate, formatter);

    String itdilekceRefNo = request.getParameter("itdilekceRefNo");
    String itdilekceKonu = request.getParameter("itdilekceKonu");
    String itdilekceSonuc = request.getParameter("itdilekceSonuc");
    String birimitraz = request.getParameter("birimitraz");
    String ityonlendirTarihiDate = request.getParameter("ityonlendirTarihi");
    LocalDate ityonlendirTarihi = LocalDate.parse(ityonlendirTarihiDate, formatter);

    // Address
    
    String acıkAddress = request.getParameter("acıkAddress");
    String AddresNum = request.getParameter("AddresNum");


    try {
        // Hibernate session'ı yapılandırması
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();


        IDInfo idinfo = new IDInfo();
        idinfo.setAppliName(name);
        idinfo.setSurname(surname);
        idinfo.setIdNo(tc);
        idinfo.setRegistrationStatus(kayitDurum);
        idinfo.setRegistrationProvince(il);
        idinfo.setRegistrationDistrict(ilce);
        idinfo.setGender(cinsiyet);
        idinfo.setMotherName(anneAdi);
        idinfo.setFatherName(babaAdi);
        idinfo.setCiltNo(ciltno); 
        idinfo.SetAileSiraNo(sirano);
        idinfo.SetEsAd(esAd);
        idinfo.SetEsSoyad(esSoyAd);
        idinfo.setMaritalStatus(medeniDurum);
        idinfo.setBirthDate(date);
        idinfo.SetPhone(phone);
        idinfo.setAddresNo(adresno);
        
        Contact contact = new Contact();
        contact.setDistrict(iletisimilce);
        contact.setNeighborhood(iletisimMahalle);
        contact.setStreet(iletisimSokak);
        contact.setAddressDefinition(acikAdres);
        contact.setApartment(apartman);
        contact.setBlockDoorNo(Blok);
        contact.setApartmentNo(daireNo);
        contact.setHomePhone(evTel);
        contact.setCellPhone(cepTel);
        contact.setOtherTel(digerTel);
        contact.seteMail(eposta);
        contact.setAddressDefinition(adresTarif);
        
        Application app = new Application();
        app.setArchiveFileNo(arsivDosyaNo);       
        app.setApplicationDate(yonlendirmeTarih);
        app.setApplicationType(muracaattip);
        app.setRegion(Bolge);
        app.setDescription(comments);
        
        Petition pet = new Petition();
        pet.setPetitionReferenceNo(dilekceRefNo);
        pet.setPetitionSubject(dilekceKonu);      
        pet.setPetitionResult(dilekceSonuc);
        pet.setForwardingDilekce(birim);
        pet.setForwardingDate2(yonlendirTarihi);      
        pet.setObjectionPetitionRefNo(itdilekceRefNo);
        pet.setObjectionPetitionSubject(itdilekceKonu);
        pet.setObjectionPetitionResult(itdilekceSonuc);
        pet.setForwardingUnit(birimitraz);
        pet.setForwardingDate(ityonlendirTarihi);
        
        Address add = new Address();
        add.setAddressNo(AddresNum);
        add.setPublicAddress(acıkAddress);
        idinfo.setContact(contact);
        idinfo.setApplication(app);
        idinfo.setAddress(add);
        idinfo.setPetition(pet);

        // Update the existing record with the new data
        session.persist(idinfo);
        session.persist(contact);
        session.persist(app);
        session.persist(pet);
        transaction.commit();

        session.close();
        sessionFactory.close();

        response.sendRedirect("/../index.jsp");
    } catch (Exception e) {
        System.err.println("Hata oluştu: " + e);
        e.printStackTrace();
    }
}
}
