package edu.ncu.controller;

import edu.ncu.dao.IUserDao;
import edu.ncu.domain.Role;
import edu.ncu.domain.User;
import edu.ncu.service.IMeetingService;
import edu.ncu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private IUserService iUserService;
    @Autowired
    private IMeetingService iMeetingService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        ModelAndView mv=new ModelAndView();
        List<User> list=iUserService.findAll();
        mv.addObject("userList",list);
        mv.setViewName("user-list");
        return mv;
    }
    @RolesAllowed("ADMIN")
    @RequestMapping("/save")
    public String registerUser(User user) throws Exception {
        iUserService.save(user);
        return "redirect:findAll";
    }
    @RequestMapping("/findById")
    public ModelAndView findById(int id){
        ModelAndView mv=new ModelAndView();
        User user=iUserService.findById(id);
        mv.addObject("user",user);
        mv.setViewName("user-show");
        return mv;

    }
    @RequestMapping("/findUserByIdAndAllRole")
    public ModelAndView findUserByIdAndAllRole(@RequestParam(name="id",required = true) int userId){
        ModelAndView mv=new ModelAndView();
        User user=iUserService.findById(userId);
        List<Role> otherRoles=iUserService.findOtherRoles(userId);
        mv.addObject("user",user);
        mv.addObject("roleList",otherRoles);
        mv.setViewName("user-role-add");
        return mv;

    }
    @RolesAllowed("ADMIN")
    @RequestMapping("/addRoleToUser")
    public String addRoleToUser(@RequestParam(name = "userId",required = true) int userId,@RequestParam(name="ids",required = true) int[] roleIds) throws Exception {
        iUserService.addRoleToUser(userId, roleIds);
        return "redirect:findAll";
    }
    //删除用户
   @RequestMapping("/delete")
    public String delete(int id){
       iMeetingService.deleteJoin(id);
       iMeetingService.deleteByOrganizationId(id);
       iUserService.deleteUserJoinRole(id);
       iUserService.delete(id);
        return "redirect:findAll";
    }
    @RequestMapping("/search")
    public ModelAndView search(int id){
        ModelAndView mv=new ModelAndView();
        User user=iUserService.findById(id);
        mv.addObject("user",user);
        mv.setViewName("searchUser");
        return mv;
    }
    @Autowired
    private IUserDao iUserDao;
    @RequestMapping("/updatePassword")
    public ModelAndView updatePassword(String old,String password){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();
        User user1=iUserDao.findByUsername(currentPrincipalName);
        int uid=user1.getId();
        ModelAndView mv=new ModelAndView();
       String ans=iUserDao.findPasswordById(uid);
        if(ans.equals(old)){
            iUserService.updatePassword(password,uid);
            System.out.println("更新密码成功");
            mv.setViewName("main");
        }
        else
            mv.setViewName("failupdate");
        return mv;

    }
}
