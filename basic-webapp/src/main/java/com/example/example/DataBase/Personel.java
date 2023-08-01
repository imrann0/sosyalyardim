package com.example.example.DataBase;

import jakarta.persistence.*;
import jakarta.servlet.http.HttpSession;
import java.util.HashSet;
import java.util.Set;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.NativeQuery;


import com.example.example.HibernateSessionFactory;



@Entity
public class Personel {
		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int id;
	
	    private String name;
	    private String surname;
	    private String password;
	    private String phone;

	    private String mail;
	    private String gender;
	    
	    private String section; //Bölüm
	    private String unvan;
	    private String userName;
	    private Long registrationNo; // Sicil Numarası
	    private String address;
	    private int status;
	    

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

		public Long getRegistrationNo() {
			return registrationNo;
		}

		public void setRegistrationNo(Long registrationNo) {
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
	            String sql = "SELECT COUNT(*) FROM Personel WHERE username = ? AND password = ?";
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
		    
		 public static Personel getPersonelByMail(String mail) {
		        try (Session session = HibernateSessionFactory.getSessionFactory().openSession()) {
					// Sadece ID çekip iyileştirme yapılabilir
		            String sql = "SELECT * FROM personel WHERE username = :email";
		            NativeQuery<Personel> query = session.createNativeQuery(sql, Personel.class);
		            query.setParameter("email", mail); 
		            Personel personel = query.uniqueResult();

		            if (personel != null) {
		                Set<Rol> roller = getRolesByPersonelId(personel.getId());
		                personel.setRoles(roller);
		            }
		            System.out.println("Personel Roller: " + personel.getRoles());
		            return personel;
		        } catch (Exception e) {
		            e.printStackTrace();
		            return null;
		        }
		    }

		 private static Set<Rol> getRolesByPersonelId(int personelId) {
		        try (Session session = HibernateSessionFactory.getSessionFactory().openSession()) {
		            String sql = "SELECT r.* FROM personel_rol pr JOIN rol r ON pr.rol_id = r.id WHERE pr.personel_id = ?";
		            NativeQuery<Rol> query = session.createNativeQuery(sql, Rol.class);
		            query.setParameter(1, personelId);
		            List<Rol> rolesList = query.list();
					System.out.println("ID ICI SINIF: "+ rolesList);
		            return new HashSet<>(rolesList);
		        } catch (Exception e) {
		            e.printStackTrace();
		            return new HashSet<>();
		        }
		    }
		 
		 public static class RoleUtils {
			    public static boolean hasRole(HttpSession userSession, String   roleName) {
			        @SuppressWarnings("unchecked")
			        Set<Rol> roles = (Set<Rol>) userSession.getAttribute("roles");
			        if (roles != null) {
			            for (Rol rol : roles) {
			                if (rol.getRoleName().equals(roleName)) {
					            System.out.println("Kullanıcı Role Sahip: " + roleName);
			                    return true;
			                }
			            }
			        }
			        return false;
			    }
			}
		 
		    public static List<Personel> getAllUserInfo() {
		        Configuration configuration = new Configuration().configure();
		        SessionFactory sessionFactory = configuration.buildSessionFactory();
		        Session session = sessionFactory.openSession();
		        session.beginTransaction();

		        TypedQuery<Personel> query = session.createQuery("SELECT p FROM Personel p", Personel.class);
		        List<Personel> results = query.getResultList();


		        session.getTransaction().commit();
		        session.close();
		        sessionFactory.close();

		        return results;
		    }
		    
		    public static Personel getUserInfoById(String userId) {
		    	Configuration configuration = new Configuration().configure();
		        SessionFactory sessionFactory = configuration.buildSessionFactory();
		        try (Session session = sessionFactory.openSession()) {
		            Personel user = session.get(Personel.class, userId);
		            return user;
		        } catch (Exception e) {
		            e.printStackTrace();
		            return null;
		        }
		    }
		    
		   
		 
			/*
					    public static List<Personel> getAllUserInfo() {
		        Configuration configuration = new Configuration().configure();
		        SessionFactory sessionFactory = configuration.buildSessionFactory();

		        Session session = sessionFactory.openSession();
		        session.beginTransaction();

		        TypedQuery<Object[]> query = session.createQuery("SELECT p.name, p.phone FROM Personel p", Object[].class);
		        List<Object[]> results = query.getResultList();

		        List<Personel> Users = new ArrayList<>();
		        for (Object[] result : results) {
		            Personel personel = new Personel();
		            personel.setName((String) result[0]);
		            personel.setPhone((String) result[1]);
		            Users.add(personel);
		        }

		        session.getTransaction().commit();
		        session.close();
		        sessionFactory.close();

		        return Users;
		    }

			 */
	}