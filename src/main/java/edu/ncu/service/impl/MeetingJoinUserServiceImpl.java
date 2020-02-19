package edu.ncu.service.impl;

import edu.ncu.dao.IMeetingJoinUserDao;
import edu.ncu.domain.MeetingJoinUser;
import edu.ncu.service.IMeetingJoinUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class MeetingJoinUserServiceImpl implements IMeetingJoinUserService {
    @Autowired
    private IMeetingJoinUserDao iMeetingJoinUserDao;
    @Override
    public List<MeetingJoinUser> findAll() throws Exception {
        return iMeetingJoinUserDao.findAll();
    }

    @Override
    public MeetingJoinUser findById(int id) {
        return iMeetingJoinUserDao.findById(id);
    }

}
