package com.example.drevo.entities;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table
public class Order {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private String userId;

    @Column
    private String productId;

    @Column
    @Temporal(TemporalType.DATE)
    private Date date;

//    @ManyToOne
//    private User user;
//
//    @ManyToOne
//    private Product product;

    public Order() {}

    public Order(String userId, User user, Product product, Date date) {
//        this.user = user;
//        this.product = product;
        this.date = date;
    }

//    public User getUser() {
//        return user;
//    }
//
//    public void setUser(User user) {
//        this.user = user;
//    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

//    public Product getProduct() {
//        return product;
//    }
//
//    public void setProduct(Product product) {
//        this.product = product;
//    }
}
