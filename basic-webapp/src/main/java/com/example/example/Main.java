package com.example.example;

import com.example.example.DataBase.Rol;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Rol> roles = Rol.getAllRoles();

        for (Rol rol : roles) {
            System.out.println("Rol ID: " + rol.getId());
            System.out.println("Rol Adı: " + rol.getRoleName());
        }
    }
}
