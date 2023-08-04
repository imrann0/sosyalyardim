package com.example.example.AdminServlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet(name = "MuracaatGuncelle", value = "/adminpanel/MuracaatGuncel")
public class MuracaatGuncelle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String dogumTarihi = request.getParameter("dogumTarihi");
        LocalDate dogum_tarih = LocalDate.parse(dogumTarihi, formatter);
        // ID Info

        String name = request.getParameter("isim");
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
        String soybis = request.getParameter("soybis");


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

        //Muraacat Bilgileri

        String arsivDosyaNo = request.getParameter("arsivDosyaNo");
        String yonlendirmeTarihDate = request.getParameter("yonlendirmeTarih");
        LocalDate yonlendirmeTarih = LocalDate.parse(yonlendirmeTarihDate, formatter);

        String Bolge = request.getParameter("Bolge");
        String muracaattip = request.getParameter("muracaattip");
        String comments = request.getParameter("comments");

    }
}
 
