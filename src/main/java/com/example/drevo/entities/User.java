package com.example.drevo.entities;

import javax.persistence.*;

@Entity
@Table
public class User {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private String name;

    @Column
    private String password;

    @OneToOne
    @JoinColumn
    private UserRole role;

    @OneToOne
    @JoinColumn
    private Address address;

    public User() {}

    public User(String name, String password, UserRole role, Address address) {
        this.name = name;
        this.password = password;
        this.role = role;
        this.address = address;
    }
}