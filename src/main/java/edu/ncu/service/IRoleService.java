package edu.ncu.service;

import edu.ncu.domain.Role;

import java.util.List;

public interface IRoleService {
    List<Role> findAll();
    void save(Role role);

    Role findById(int roleId);


}
