package edu.ncu.domain;

import java.io.Serializable;
import java.util.List;

public class MeetingJoinUser implements Serializable {
    private String id;
    private Meeting meeting;
    private List<User> users;
    private User holdUser;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Meeting getMeeting() {
        return meeting;
    }

    public void setMeeting(Meeting meeting) {
        this.meeting = meeting;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public User getHoldUser() {
        return holdUser;
    }

    public void setHoldUser(User holdUser) {
        this.holdUser = holdUser;
    }

}
