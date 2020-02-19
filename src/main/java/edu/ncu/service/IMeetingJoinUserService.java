package edu.ncu.service;

import edu.ncu.domain.MeetingJoinUser;

import java.util.List;

public interface IMeetingJoinUserService {
    List<MeetingJoinUser>findAll() throws Exception;
    MeetingJoinUser findById(int id);
}
