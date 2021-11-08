package com.example.drevo.controllers;

import com.example.drevo.entities.Product;
import com.example.drevo.entities.ProductType;
import com.example.drevo.services.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/products")
public class ProductController {

    @Autowired
    private ProductServiceImpl productService;

    @GetMapping
    public String get(@ModelAttribute("product") Product product) {
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
    public List<Product> getProducts() {
        return productService.getProducts();
    }

    @ModelAttribute("productTypes")
    public List<ProductType> getProductTypes() {
        return productService.getProductTypes();
    }
}
