package com.moroz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class StartPageController {
    @GetMapping("/")
    public String start() {
        return "start/start";
    }

    @GetMapping("/login")
    public String login() {
        return "users/login";
    }
}
