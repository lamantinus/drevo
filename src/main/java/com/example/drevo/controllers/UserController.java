package com.example.drevo.controllers;

import com.example.drevo.auth.UserDetailsImpl;
import com.example.drevo.entities.*;
import com.example.drevo.services.ProductServiceImpl;
import com.example.drevo.services.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    private UserServiceImpl userService;

    @GetMapping
    public String get() {
        return "user";
    }

    @PostMapping
    void post(@AuthenticationPrincipal UserDetailsImpl userDetails, @ModelAttribute("address") Address address) {
        userService.setAddress(userDetails.getUser(), address);
    }

    @ModelAttribute("address")
    public Address getAddress(@AuthenticationPrincipal UserDetailsImpl userDetails) {
        return userService.getAddress(userDetails.getUser());
    }

    @ModelAttribute("orders")
    public List<Basket> getOrders(@AuthenticationPrincipal UserDetailsImpl userDetails) {
        return userService.getOrders(userDetails.getUser());
    }
}
