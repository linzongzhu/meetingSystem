package edu.ncu.service;

import edu.ncu.domain.Role;
import edu.ncu.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface IUserService extends UserDetailsService {

    void save(User user) throws Exception;
    List<User> findAll();
    User findById(int id);
    List<Role>findOtherRoles(int id);
    void addRoleToUser(int userId, int[] roleId);

    void delete(int id);
    boolean checkPassword(String password,int id);

    void updatePassword(String password, int uid);

    void deleteUserJoinRole(int id);
}
