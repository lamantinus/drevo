package com.example.drevo.services;

import com.example.drevo.dao.ProductDAOImpl;
import com.example.drevo.entities.Product;
import com.example.drevo.entities.ProductType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDAOImpl productDAO;

    @Override
    public List<Product> getProducts() {
        return productDAO.getProducts();
    }

    @Override
    public List<ProductType> getProductTypes() {
        return productDAO.getProductTypes();
    }

    @Override
    public Product add(Product film) {
        productDAO.add(film);
        return film;
    }

    @Override
    public void delete(Product film) {
        productDAO.delete(film);
    }

    @Override
    public void edit(Product film) {
        productDAO.edit(film);
    }

    @Override
    public Product getById(int id) {
        return productDAO.getById(id);
    }
}
