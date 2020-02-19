package edu.ncu.service.impl;

import com.github.pagehelper.PageHelper;
import edu.ncu.dao.IMeetingDao;
import edu.ncu.domain.Meeting;
import edu.ncu.service.IMeetingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.security.RolesAllowed;
import java.util.List;

@Service
@Transactional
public class MeetingServiceImpl implements IMeetingService {
    @Autowired
    private IMeetingDao iMeetingDao;
    @Override

    public List<Meeting>findAll(int page,int size){
/*
        List<Meeting> meetings=iMeetingDao.findAll();
        for(Meeting m:meetings){
            System.out.println(m.getId());
        }*/
        PageHelper.startPage(page,size);
        return iMeetingDao.findAll();
    }

    @Override
    public void save(Meeting meeting) {
        iMeetingDao.save(meeting);
    }

    @Override
    public Meeting findById(int id) {
        return iMeetingDao.findById(id);
    }

    @Override
    public void addUser(int uid, int id) {
      //  System.out.println("执行了MeetingServiceImpl");
         iMeetingDao.addUser(uid,id);
    }

    @Override
    public List<Meeting> findJoin(int uid) {
        return iMeetingDao.findJoin(uid);
    }

    @Override
    public void delete(int id) {
        iMeetingDao.delete(id);
    }

    @Override
    public void deleteUser(int id, int uid) {
        iMeetingDao.deleteUser(id,uid);
    }

    @Override
    public void deleteJoin(int uid) {
        iMeetingDao.deleteJoin(uid);
    }

    @Override
    public void deleteByOrganizationId(int hold_user_id) {
        System.out.println("准备调用dao");
        iMeetingDao.deleteByOrganizationId(hold_user_id);
        System.out.println("已删");
    }
}
