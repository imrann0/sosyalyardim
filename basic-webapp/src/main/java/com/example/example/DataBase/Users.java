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
	import org.hibernate.Session;
	import org.hibernate.query.Query;
	import com.example.example.HibernateSessionFactory;
	import org.hibernate.query.NativeQuery;

	
	
	
	@Entity
	public class Users {
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
	        name = "user_rol",
	        joinColumns = @JoinColumn(name = "user_id"),
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
	    
	    public static boolean checkLogin(String mail, String password) {
	        try (Session session = HibernateSessionFactory.getSessionFactory().openSession()) {
	            String sql = "SELECT COUNT(*) FROM Users WHERE mail = ? AND password = ?";
	            NativeQuery<Long> query = session.createNativeQuery(sql, Long.class);
	            query.setParameter(1, mail);
	            query.setParameter(2, password);
	            Long count = query.uniqueResult();
	            return count != null && count == 1;
	        } catch (Exception e) {
	            e.printStackTrace();
	            return false;
	        }
	    }

	    
	    public static Set<Rol> getRolesByPersonelId(int personelId) {
	        Set<Rol> roller = new HashSet<>();
	        try (Session session = HibernateSessionFactory.getSessionFactory().openSession()) {
	            String hql = "SELECT r FROM Rol r JOIN r.personelList p WHERE p.id = :personelId";
	            Query<Rol> query = session.createQuery(hql, Rol.class);
	            query.setParameter("personelId", personelId);
	            roller.addAll(query.getResultList());
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return roller;
	    }
	
	    public static Personel getPersonelByMail(String mail) {
	        Personel personel = null;
	        try (
					Session session = HibernateSessionFactory.getSessionFactory().openSession()) {

	            String hql = "FROM Personel WHERE mail = :mail";
	            Query<Personel> query = session.createQuery(hql, Personel.class);
	            query.setParameter("mail", mail);
	            personel = query.uniqueResult();
	            if (personel != null) {
	                personel.getRoles().addAll(getRolesByPersonelId(personel.getId()));
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return personel;
	    }
	
	}
