package edu.ncu.controller;

import edu.ncu.domain.Role;
import edu.ncu.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private IRoleService iRoleService;
    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        ModelAndView mv=new ModelAndView();
        List<Role> roleList=iRoleService.findAll();
        mv.addObject("roleList",roleList);
        mv.setViewName("role-list");
        return mv;
    }
    @RequestMapping("/save")
    public String save(Role role){
        iRoleService.save(role);
        return "redirect:findAll";
    }
    /*
    @RequestMapping("/findRoleByIdAndAllPermission")
    public ModelAndView findRoleByIdAndAllPermission(@RequestParam(name="id",required = true) int roleId){
        ModelAndView mv=new ModelAndView();
        Role role=iRoleService.findById(roleId);
        List<Permission> otherPermissions=iRoleService.findOtherPermissions(roleId);
        mv.addObject("role",role);
        mv.addObject("permissionList",otherPermissions);
        mv.setViewName("updatePassword");
        return mv;

    }
    @RequestMapping("/addPermissionToRole")
    public String addPermissionToRole(@RequestParam(value = "roleId",required = true)int roleId,@RequestParam(value = "ids",required = true) int[]permissionIdS){
        iRoleService.addPermissionToRole(roleId,permissionIdS);
        return "redirect:findAll";

    }*/

}
