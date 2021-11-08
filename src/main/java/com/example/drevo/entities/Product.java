package com.example.drevo.entities;

import javax.persistence.*;
import java.util.List;

@Entity
@Table
public class Product {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private String name;

    @Column
    private String care;

    @Column
    private String filling;

    @Column
    private String imageUrl;

    @Column
    private Integer price;

    @Column
    private Integer deliveryDays;

    @OneToOne
    @JoinColumn
    private ProductCategory category;

    @OneToOne
    @JoinColumn
    private ProductMaterial material;

    @OneToMany
    @JoinColumn
    private List<Order> orders;

    public Product() {}

    public Product(String name, String care, String filling, String imageUrl, Integer price, Integer deliveryDays, ProductCategory category, ProductMaterial material, List<Order> orders) {
        this.name = name;
        this.care = care;
        this.filling = filling;
        this.imageUrl = imageUrl;
        this.price = price;
        this.deliveryDays = deliveryDays;
        this.category = category;
        this.material = material;
        this.orders = orders;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public ProductMaterial getMaterial() {
        return material;
    }

    public void setMaterial(ProductMaterial material) {
        this.material = material;
    }

    public String getCare() {
        return care;
    }

    public void setCare(String care) {
        this.care = care;
    }

    public String getFilling() {
        return filling;
    }

    public void setFilling(String filling) {
        this.filling = filling;
    }

    public Integer getDeliveryDays() {
        return deliveryDays;
    }

    public void setDeliveryDays(Integer deliveryDays) {
        this.deliveryDays = deliveryDays;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }
}