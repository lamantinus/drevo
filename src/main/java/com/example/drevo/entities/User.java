package com.example.drevo.entities;

import javax.persistence.*;
import java.util.List;

@Entity
@Table
public class User {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private String username;

    @Column
    private String password;

    @OneToOne
    @JoinColumn
    private UserRole role;

    @OneToOne
    @JoinColumn
    private Address address;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
    private List<Basket> baskets;

    public User() {}

    public User(String username, String password, UserRole role, Address address) {
        this.username = username;
        this.password = password;
        this.role = role;
        this.address = address;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserRole getRole() {
        return role;
    }

    public void setRole(UserRole role) {
        this.role = role;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public List<Basket> getPurchases() {
        return baskets;
    }

    public void setPurchases(List<Basket> baskets) {
        this.baskets = baskets;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}