package com.example.drevo.services;

import com.example.drevo.entities.*;

import java.util.List;

public interface UserService {
    Address getAddress(User user);
    User add(User user);
    void delete(User user);
    void edit(User user);
    User getById(int id);
}

