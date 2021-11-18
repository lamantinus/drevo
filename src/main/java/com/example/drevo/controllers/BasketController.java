package com.example.drevo.controllers;

import com.example.drevo.auth.UserDetailsImpl;
import com.example.drevo.entities.Address;
import com.example.drevo.entities.Basket;
import com.example.drevo.entities.Product;
import com.example.drevo.entities.ProductCategory;
import com.example.drevo.services.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "/basket")
public class BasketController {

    @Autowired
    private UserServiceImpl userService;

    @GetMapping
    public String get() {
        return "basket";
    }

    @ModelAttribute("basket")
    public Basket getBasket(@AuthenticationPrincipal UserDetailsImpl userDetails) {
        return userService.getBasket(userDetails.getUser());
    }
}
