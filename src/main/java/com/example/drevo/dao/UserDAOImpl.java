package com.example.drevo.dao;

import com.example.drevo.entities.Address;
import com.example.drevo.entities.User;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {
    @PersistenceContext
    private EntityManager entityManager;

    protected Session getSession() {
        return entityManager.unwrap(Session.class);
    }

    @Override
    public Address getAddress(User user) {
        System.out.println("TEST");
        System.out.println(user.getId());
        return (Address) entityManager
                .createQuery("from Address a where a.user_id = 1")
//                .setParameter("user", user.getId())
                .getResultList().get(0);
    }

    @Override
    public void add(User user) {
        Session session = this.getSession();
        session.persist(user);
    }

    @Override
    public void delete(User user) {
        Session session = this.getSession();
        session.delete(user);
    }

    @Override
    public void edit(User user) {
        Session session = this.getSession();
        session.update(user);
    }

    @Override
    public User getById(int id) {
        Session session = this.getSession();
        return session.get(User.class, id);
    }
}

