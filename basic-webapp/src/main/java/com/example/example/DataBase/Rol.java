package com.example.example.DataBase;

import com.example.example.HibernateSessionFactory;
import jakarta.persistence.*;

import java.lang.annotation.Native;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Set;

import jakarta.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;

@Entity
public class Rol {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String roleName;
    private String rolGrup;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
    public String getRolGrup() {
        return rolGrup;
    }

    public void setRolGrup(String rolGrup) {
        this.rolGrup = rolGrup;
    }
    
    public static List<Rol> getAllRoles() {
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();

        Session session = sessionFactory.openSession();
        session.beginTransaction();

        TypedQuery<Rol> query = session.createQuery("SELECT r FROM Rol r", Rol.class);
        List<Rol> roles = query.getResultList();

        session.getTransaction().commit();
        sessionFactory.close();

        return roles;
    }
    public static List<String> getDistinctRolGrup() {
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        TypedQuery<String> query = session.createQuery("SELECT DISTINCT r.rolGrup FROM  Rol r WHERE r.rolGrup IS NOT NULL", String.class);
        List<String> results = query.getResultList();


        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
        return results;
    }
    public static List<Rol> getRolNamesByGrup(String ROLAD) {
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        String sql = "SELECT * FROM Rol WHERE rolgrup = :roladi";
        NativeQuery<Rol> query = session.createNativeQuery(sql, Rol.class);
        System.out.println("Rol Grup: "+ ROLAD);

        //Query<Rol> query = session.createQuery("FROM Rol r WHERE r.roleName = :roladi", Rol.class);
        query.setParameter("roladi", ROLAD);
        List<Rol> results = query.getResultList();
        if (results != null) {

            return results;

        }else{
            System.out.println("BOS LAN");
        }
        return null;
    }


    public static boolean hasRole(HttpSession request, String roleName) {
        //HttpSession session = request.getSession();

        @SuppressWarnings("unchecked")
        Set<Rol> roles= (Set<Rol>) request.getAttribute("roles");

        if (roles != null) {
            for (Rol rol : roles) {
                if (rol.getRoleName().equals(roleName)) {
                    return true;
                }
            }
        }

        return false;
    }
}
