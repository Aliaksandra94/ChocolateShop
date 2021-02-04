package com.moroz.dao;

import com.moroz.entity.User;

import java.util.List;

public interface UserDao {
    public void addUser(User user);
    public void updateUser(User user);
    public void removeUser(User user);
    public User getUserById(int id);
    public User getUserByLogin(String login);
    public List<User> listUsers();
}
