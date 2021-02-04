package com.moroz.dao;

import com.moroz.entity.Role;
import com.moroz.entity.User;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RoleDaoImpl implements RoleDao {
    private final static Logger logger = Logger.getLogger(UserDao.class);

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addRole(Role role) {
        sessionFactory.getCurrentSession().persist(role);
        logger.info("Role successfully add. Role details: " + role);
    }

    @Override
    public void removeRole(Role role) {
        sessionFactory.getCurrentSession().delete(role);
        logger.info("Role successfully remove. Role details: " + role);
    }

    @Override
    public Role getRoleById(int id) {
        Role role = sessionFactory.getCurrentSession().get(Role.class, id);
        logger.info("Role successfully loaded. Role details: " + role);
        return role;
    }

    @Override
    public List<Role> listRoles() {
        Session session = sessionFactory.getCurrentSession();
        List<Role> roleList = session.createQuery("from Role").list();
        for (Role role: roleList){
            logger.info("Role's list: " + role);
        }
        return roleList;

    }
}
