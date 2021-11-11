package com.example.drevo.controllers;

import com.example.drevo.entities.Product;
import com.example.drevo.entities.ProductCategory;
import com.example.drevo.entities.ProductMaterial;
import com.example.drevo.services.ProductServiceImpl;
import com.sun.istack.Nullable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "/products")
public class ProductController {

    @Autowired
    private ProductServiceImpl productService;

    @GetMapping
    public String get() {
        return "products";
    }

    @PostMapping
    Product post(@ModelAttribute("product") Product product) {
        return productService.add(product);
    }

    @ModelAttribute("product")
    public Product getProduct() {
        return new Product();
    }

    @ModelAttribute("products")
    public List<Product> getProducts(@RequestParam(name = "category", required = false) ProductCategory category) {
        return productService.getProducts(category);
    }

    @ModelAttribute("productMaterials")
    public List<ProductMaterial> getProductMaterials() {
        return productService.getProductMaterials();
    }
}
