package com.moroz.dao;

import com.moroz.entity.User;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {
    private final static Logger logger = Logger.getLogger(UserDao.class);

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(user);
        logger.info("User successfully add. User details: " + user);
    }

    @Override
    public void updateUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.update(user);
        logger.info("User successfully update. User details: " + user);
    }

    @Override
    public void removeUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(user);
        logger.info("User successfully remove. User details: " + user);
    }

    @Override
    public User getUserById(int id) {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));
        logger.info("User successfully loaded. User details: " + user);
        return user;
    }

    @Override
    public User getUserByLogin(String login) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("select userID from User where login = :login");
        query.setParameter("login", login);
        List list = query.list();
        if (list.isEmpty()) {
            return null;
        } else {
            System.out.println(session.get(User.class, (Integer.parseInt(list.get(0).toString()))).toString());
            User user = session.get(User.class, (Integer.parseInt(list.get(0).toString())));
            logger.info("User successfully loaded by UserName. User details: " + user);
            return user;
        }
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<User> listUsers() {
        Session session = sessionFactory.getCurrentSession();
        List<User> userList = session.createQuery("from User").list();
        for (User user: userList){
            logger.info("User's list: " + user);
        }
        return userList;
    }
}
