package com.moroz.dao;

import com.moroz.entity.Role;

import java.util.List;

public interface RoleDao {
    public void addRole(Role role);
    public void removeRole(Role role);
    public Role getRoleById(int id);
    public List<Role> listRoles();
}
