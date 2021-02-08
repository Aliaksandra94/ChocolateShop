package com.moroz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/catalog")
public class ProductPageController {
    @GetMapping()
    public String contacts() {
        return "goods/catalog";
    }
}