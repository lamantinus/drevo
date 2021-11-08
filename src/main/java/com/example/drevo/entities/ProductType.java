package com.example.drevo.entities;

import javax.persistence.*;

@Entity
@Table
public class ProductType {

    @Id
    @Column
    private String name;

    public ProductType() {}

    public ProductType(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}