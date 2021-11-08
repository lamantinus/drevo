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
    private String name;

    @Column
    private String password;

    @OneToOne
    @JoinColumn
    private UserRole role;

    @OneToOne
    @JoinColumn
    private Address address;

//    @JoinTable(
//            name = "Order",
//            joinColumns = @JoinColumn(
//                    name = "user_id",
//                    referencedColumnName = "user_id"
//            ),
//            inverseJoinColumns = @JoinColumn(
//                    name = "product_id",
//                    referencedColumnName = "product_id"
//            )
//    )
//    @OneToMany
//    private List<Order> orders;

    public User() {}

    public User(String name, String password, UserRole role, Address address) {
        this.name = name;
        this.password = password;
        this.role = role;
        this.address = address;
    }
}