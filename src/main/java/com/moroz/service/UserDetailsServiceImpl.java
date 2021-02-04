package com.moroz.service;

import com.moroz.dao.UserDao;
import com.moroz.entity.Role;
import com.moroz.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

@Service("UserDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService {
    private UserService userService;

    @Autowired
    public void setUserDao(UserService userService) {
        this.userService = userService;
    }

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        User user = userService.getUserByLogin(login);
        if (user != null) {
            Collection<GrantedAuthority> grantedAuthorities = user.getRoles().stream()
                    .map(role -> new SimpleGrantedAuthority(role.getName()))
                    .collect(Collectors.toCollection(ArrayList::new));

            return new org.springframework.security.core.userdetails.User(login, user.getPassword(),
                    true, true, true, true, grantedAuthorities);
        } else {
            throw new UsernameNotFoundException("User not found.");
        }
    }
}
