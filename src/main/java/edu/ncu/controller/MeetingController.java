package edu.ncu.controller;

import com.github.pagehelper.PageInfo;
import edu.ncu.dao.IUserDao;
import edu.ncu.domain.Meeting;
import edu.ncu.domain.User;
import edu.ncu.service.IMeetingService;
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
@RequestMapping("/meeting")
public class MeetingController {
    @Autowired
    private IMeetingService meetingService;
    //查询所有
    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name="page",required = true,defaultValue = "1")int page,@RequestParam(name="size",required = true,defaultValue = "4")int size){
        ModelAndView mv = new ModelAndView();
        List<Meeting> meetings = meetingService.findAll(page,size);
        PageInfo pageInfo=new PageInfo(meetings);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("meetingList-list");
        return mv;
    }

    @RequestMapping("/save")
    public String save(Meeting meeting){
        meetingService.save(meeting);
        return "redirect:findAll";
    }
    //查询详情
    @RequestMapping("/findById")
    public ModelAndView findById(@RequestParam(name="id",required = true) int id)throws Exception{
        ModelAndView mv=new ModelAndView();
        Meeting meeting=meetingService.findById(id);
        mv.addObject("meetingjoinuser",meeting);
        mv.setViewName("meetingjoinuser-show");
        return mv;
    }
    @RequestMapping("/search")
    public ModelAndView search(int id){
        ModelAndView mv=new ModelAndView();
        Meeting meeting=meetingService.findById(id);
        mv.addObject("searchMeeting",meeting);
        //System.out.println(meeting);
        mv.setViewName("searchMeeting");
        return mv;
    }
    @Autowired
    private IUserDao iUserDao;

    @RequestMapping("/addUser")
    public String addUser(@RequestParam(name="id")int id){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();
        User user1=iUserDao.findByUsername(currentPrincipalName);
        int uid=user1.getId();
        meetingService.addUser(uid,id);
        return "redirect:findAll";
    }
    //填信息申请
    @RequestMapping("/addUser1")
    public ModelAndView addUser1(@RequestParam(name="id")int id){
        ModelAndView mv=new ModelAndView();
        Meeting meeting=meetingService.findById(id);
        mv.addObject("meeting",meeting);
        mv.setViewName("apply-add");
        return mv;
    }

    //填信息申请完毕

    //查询已添加的会议
    @RequestMapping("/findJoin")
    public ModelAndView findJoin(){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentUserName=authentication.getName();
        int uid=iUserDao.findByUsername(currentUserName).getId();
        List<Meeting>meetings=meetingService.findJoin(uid);
        ModelAndView mv=new ModelAndView();
        mv.addObject("meetingJoin",meetings);
        mv.setViewName("meetingjoin");
        return mv;
    }

    @RolesAllowed("ADMIN")
    @RequestMapping("/delete")
    public String delete(int id){
        meetingService.delete(id);
        return "redirect:findAll";
    }

    //退出会议
    @RequestMapping("/deleteUser")
    public String deleteUser(@RequestParam("id") int id){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentUserName=authentication.getName();
        int uid=iUserDao.findByUsername(currentUserName).getId();
        meetingService.deleteUser(id,uid);
        return "redirect:findJoin";
    }
}
