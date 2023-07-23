package com.example.example;

import jakarta.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;

import com.example.example.DataBase.Rol;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class RoleControl {

    public static boolean hasRole(HttpSession userSession, String roleName) {
        @SuppressWarnings("unchecked")
        Set<Rol> roles = (Set<Rol>) userSession.getAttribute("roles");
        if (roles != null) {
            for (Rol rol : roles) {
                if (rol.getRoleName().equals(roleName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int hasUserRole(int userId, int roleId) {
        try (Session session = HibernateSessionFactory.getSessionFactory().openSession()) {
            String sql = "SELECT r.* FROM rol r JOIN personel_rol pr ON r.id = pr.rol_id WHERE pr.personel_id = :userId AND r.id = :roleId";
            Query<Long> query = session.createNativeQuery(sql, Long.class); // Fix hql to sql here
            query.setParameter("userId", userId);
            query.setParameter("roleId", roleId);
            Long result = query.uniqueResult();
            return result != null && result > 0 ? 1 : 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }


    public static Set<Rol> getRolesByUserId(int userId) {
        try (Session session = HibernateSessionFactory.getSessionFactory().openSession()) {
            String sql = "SELECT r.* FROM rol r JOIN personel_rol pr ON r.id = pr.rol_id WHERE pr.personel_id = :userId";
            NativeQuery<Rol> hasRolesQuery = session.createNativeQuery(sql, Rol.class);
            hasRolesQuery.setParameter("userId", userId);
            List<Rol> hasRolesList = hasRolesQuery.list();

            return new HashSet<>(hasRolesList);
        } catch (Exception e) {
            e.printStackTrace();
            return new HashSet<>();
        }
    }

    public static Set<Rol> getNotAssignedRolesByUserId(int userId) {
        try (Session session = HibernateSessionFactory.getSessionFactory().openSession()) {
            String sql = "SELECT r.* FROM rol r WHERE r.id NOT IN (SELECT rol_id FROM personel_rol WHERE personel_id = :userId)";
            NativeQuery<Rol> notHasRolesQuery = session.createNativeQuery(sql, Rol.class);
            notHasRolesQuery.setParameter("userId", userId);
            List<Rol> notHasRolesList = notHasRolesQuery.list();

            return new HashSet<>(notHasRolesList);
        } catch (Exception e) {
            e.printStackTrace();
            return new HashSet<>();
        }
    }
}
