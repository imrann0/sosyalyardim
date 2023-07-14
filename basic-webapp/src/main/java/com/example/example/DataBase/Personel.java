package com.example.example.DataBase;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@Entity
public class Personel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;
    private String surname;
    private String password;
    private String phone;
    private String identity; // Alınmicak Silinicek
    private String mail;
    private String gender;
    
    private String section; //Bölüm
    private String unvan;
    private String userName;
    private int registrationNo; // Sicil Numarası
    private String address;
    private int status;
    
    private LocalDate date; // Silinicek

    @ManyToMany
    @JoinTable(
        name = "personel_rol",
        joinColumns = @JoinColumn(name = "personel_id"),
        inverseJoinColumns = @JoinColumn(name = "rol_id")
    )
    private Set<Rol> roles = new HashSet<>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }
    
    public String getSection() {
    	return section;
    }
    
    public void setSection(String section) {
    	this.section = section;
    }
    
    public String getUnvan() {
    	return unvan;
    }
    
    public void setUnvan(String unvan) {
    	this.unvan = unvan;
    }
    
    public String getUserName() {
    	return userName;
    }
    
    public void setUserName(String userName) {
    	this.userName = userName;
    }
    
    public int getRegistrationNo() {
    	return registrationNo;
    }
    
    public void setRegistrationNo(int registrationNo) {
    	this.registrationNo = registrationNo;
    }
    
    public String getAddress() {
    	return address;
    }
    
    public void setAddress(String address) {
    	this.address = address;
    }
    
    public int getStatus() {
    	return status;
    }
    
    public void setStatus(int status) {
    	this.status = status;
    }
    

    public Set<Rol> getRoles() {
        return roles;
    }

    public void setRoles(Set<Rol> roles) {
        this.roles = roles;
    }
    
   
    private static Set<Rol> getRolesByPersonelId(int personelId) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        Set<Rol> roller = new HashSet<>();

        try {
            connection = DatabaseConnection.baglan();
            String query = "SELECT r.* FROM personel_rol pr JOIN rol r ON pr.rol_id = r.id WHERE pr.personel_id = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, personelId);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Rol rol = new Rol();
                rol.setId(resultSet.getInt("id"));
                rol.setRoleName(query);
                // Diğer rol alanlarını set edin

                roller.add(rol);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Kaynakları kapatın
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return roller;
    }

    
    public static Personel getPersonelByUsername(String username) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        Personel personel = null;

        try {
            connection = DatabaseConnection.baglan();
            String query = "SELECT * FROM personel WHERE mail = ?";
            statement = connection.prepareStatement(query);
            statement.setString(1, username);
            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                personel = new Personel();
                personel.setId(resultSet.getInt("id"));
                personel.setName(resultSet.getString("name"));
                personel.setSurname(resultSet.getString("surname"));
                personel.setPassword(resultSet.getString("password"));
                personel.setPhone(resultSet.getString("phone"));
                personel.setIdentity(resultSet.getString("identity"));
                personel.setMail(resultSet.getString("mail"));
                personel.setGender(resultSet.getString("gender"));
                personel.setDate(resultSet.getDate("date").toLocalDate());

                // Personel rollerini de alın
                Set<Rol> roller = getRolesByPersonelId(personel.getId());
                personel.setRoles(roller);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Kaynakları kapatın
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return personel;
    }

}
