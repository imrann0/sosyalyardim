package com.example.example.DataBase;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.TypedQuery;
import java.util.List;
import java.util.Set;

import jakarta.servlet.http.HttpServletRequest;
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
    public static List<Rol> getAllGrup(){
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();

        Session session = sessionFactory.openSession();
        session.beginTransaction();

        TypedQuery<Rol> query = session.createQuery("SELECT COUNT(DISTINCT rolgrup) AS rolgrup_count, STRING_AGG(DISTINCT rolgrup, ', ') AS rolgrup_names FROM Rol");
        List<Rol> Grps = query.getResultList();

        session.getTransaction().commit();
        sessionFactory.close();

        return Grps;

        //Query sql = session.createQuery("SELECT COUNT(*) FROM Rol WHERE rolGrup = ?");

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
