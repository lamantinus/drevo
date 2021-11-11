package com.example.drevo.entities;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table
public class Basket {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    @Temporal(TemporalType.DATE)
    private Date date;

    @ManyToOne
    @JoinColumn
    private User user;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "basket")
    private List<BasketItem> basketItems;

    public Basket() {}

    public Basket(Date date, User user) {
        this.date = date;
        this.user = user;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
