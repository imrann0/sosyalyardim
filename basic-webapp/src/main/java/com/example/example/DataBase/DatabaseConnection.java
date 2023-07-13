package com.example.example.DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:postgresql://localhost:5432/sosyalyardim";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "P@ssw0rd1?";
    private static Connection conn = null;

    public static Connection baglan() {
        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("Veri Tabanına Başarı ile Bağlandı");
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC sürücüsü bulunamadı!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Veritabanına bağlantı hatası!");
            e.printStackTrace();
        }
        
        return conn;
    }

    
    public static void main(String[] args) {
        Connection connection = DatabaseConnection.baglan();
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
