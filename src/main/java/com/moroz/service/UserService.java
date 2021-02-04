package com.moroz.service;

import com.moroz.entity.User;

import java.util.List;

public interface UserService {
    public void addUser(User user);
    public void updateUser(User user);
    public void removeUser(User user);
    public User getUserById(int id);
    public List<User> listUsers();
    public User getUserByLogin(String login);
}
