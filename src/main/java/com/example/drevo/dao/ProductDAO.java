package com.example.drevo.dao;

import com.example.drevo.entities.Product;
import com.example.drevo.entities.ProductMaterial;

import java.util.List;

public interface ProductDAO {
    List<Product> getProducts();
    List<ProductMaterial> getProductMaterials();
    void add(Product film);
    void delete(Product film);
    void edit(Product film);
    Product getById(int id);
}

