package com.example.drevo.services;

import com.example.drevo.dao.UserDAOImpl;
import com.example.drevo.entities.Address;
import com.example.drevo.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAOImpl userDAO;

    @Override
    public Address getAddress(User user) {
        return userDAO.getAddress(user);
    }

    @Override
    public User add(User user) {
        userDAO.add(user);
        return user;
    }

    @Override
    public void delete(User user) {
        userDAO.delete(user);
    }

    @Override
    public void edit(User user) {
        userDAO.edit(user);
    }

    @Override
    public User getById(int id) {
        return userDAO.getById(id);
    }
}
