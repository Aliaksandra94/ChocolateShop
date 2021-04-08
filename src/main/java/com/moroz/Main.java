package com.moroz;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class Main {
    public static void main(String[] args) {
        String encodedAdmin=new BCryptPasswordEncoder().encode("ADMIN");
        String encodedUser=new BCryptPasswordEncoder().encode("USER");
        System.out.println(encodedAdmin);
        System.out.println(encodedUser);
    }
}
