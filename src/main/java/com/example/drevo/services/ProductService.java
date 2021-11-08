package com.example.drevo.services;

import com.example.drevo.entities.Product;
import com.example.drevo.entities.ProductMaterial;

import java.util.List;

public interface ProductService {
    List<Product> getProducts();
    List<ProductMaterial> getProductMaterials();
    Product add(Product film);
    void delete(Product film);
    void edit(Product film);
    Product getById(int id);
}

