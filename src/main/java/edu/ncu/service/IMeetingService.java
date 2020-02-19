package edu.ncu.service;

import edu.ncu.domain.Meeting;
import org.springframework.stereotype.Service;

import java.util.List;


public interface IMeetingService {
    List<Meeting>findAll(int page,int size);
    void save(Meeting meeting);
    Meeting findById(int id);
    void addUser(int uid, int id);

    List<Meeting> findJoin(int uid);

    void delete(int uid);

    void deleteUser(int id, int uid);

    void deleteJoin(int id);

    void deleteByOrganizationId(int hold_user_id);
}
