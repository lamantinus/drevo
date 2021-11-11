package com.example.drevo.dao;

import com.example.drevo.entities.*;

import java.util.List;

public interface UserDAO {
    Address getAddress(User user);
    void add(User user);
    void delete(User user);
    void edit(User user);
    User getById(int id);
}

