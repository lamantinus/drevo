package com.example.drevo.dao;

import com.example.drevo.entities.Product;
import com.example.drevo.entities.ProductType;

import java.util.List;

public interface ProductDAO {
    List<Product> getProducts();
    List<ProductType> getProductTypes();
    void add(Product film);
    void delete(Product film);
    void edit(Product film);
    Product getById(int id);
}

