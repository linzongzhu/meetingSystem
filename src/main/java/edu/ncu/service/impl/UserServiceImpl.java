package edu.ncu.service.impl;

import edu.ncu.dao.IUserDao;
import edu.ncu.domain.Role;
import edu.ncu.domain.User;
import edu.ncu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;


@Service("userService")
public class UserServiceImpl  implements IUserService {
    @Autowired
    private IUserDao iUserDao;
    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user1=null;
        try{
            user1=iUserDao.findByUsername(s);

        }catch (Exception e){
            e.printStackTrace();
        }

       // System.out.println(user1.getUsername());
        //System.out.println(user1.getPassword());
        //System.out.println(getAuthority(user1.getRoles()));
        org.springframework.security.core.userdetails.User user=new org.springframework.security.core.userdetails.User(user1.getUsername(),"{noop}"+user1.getPassword(),getAuthority(user1.getRoles()));

        return user;
    }
    private List<SimpleGrantedAuthority> getAuthority(List<Role> roles) {
        List<SimpleGrantedAuthority> list = new ArrayList();
        for (Role role : roles) {
            list.add(new SimpleGrantedAuthority("ROLE_"+role.getRoleName()));
        }
        return list;
    }


    @RolesAllowed({"ROLE_ADMIN"})
    @Override
    public List<User> findAll() {
        return iUserDao.findAll();

    }

    @Override
    public void save(User user) throws Exception {
        iUserDao.save(user);
    }

    @Override
    public User findById(int id) {

        return iUserDao.findById(id);
    }

    @Override
    public List<Role> findOtherRoles(int id) {
        return iUserDao. findOtherRoles(id);
    }

    @Override
    public void addRoleToUser(int userId, int[] roleIds) {
        for(int roleId:roleIds){
            iUserDao.addRoleToUser(userId,roleId);
        }
    }

    @Override
    public void delete(int id) {
        iUserDao.delete(id);
    }

    @Override
    public void updatePassword(String password, int uid) {
        iUserDao.updatePassword(password,uid);
    }
    @Override
    public boolean checkPassword(String password, int id) {
        String ans=iUserDao.findPasswordById(id);
        if(password.equals(ans)){
            return true;
        }
        else return false;
    }

    @Override
    public void deleteUserJoinRole(int id) {
        iUserDao.deleteUserJoinRole(id);
    }
}
