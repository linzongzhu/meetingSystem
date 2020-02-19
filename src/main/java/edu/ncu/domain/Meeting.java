package edu.ncu.domain;

import java.io.Serializable;
import java.util.List;

public class Meeting implements Serializable {
    private Integer id;
    private String hotel;
    private String location;
    private String name;
    private String start;
    private String time;
    private int hold_user_id;
    private Integer need_gender;
    private Integer need_id_card;
    private Integer need_name;
    private Integer need_organization;
    private Integer need_participate_time;
    private Integer need_phone_number;
    private List<User> users;

    public Integer getNeed_organization() {
        return need_organization;
    }

    public void setNeed_organization(Integer need_organization) {
        this.need_organization = need_organization;
    }

    public Integer getNeed_participate_time() {
        return need_participate_time;
    }

    public void setNeed_participate_time(Integer need_participate_time) {
        this.need_participate_time = need_participate_time;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHotel() {
        return hotel;
    }

    public void setHotel(String hotel) {
        this.hotel = hotel;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getHold_user_id() {
        return hold_user_id;
    }

    public void setHold_user_id(int hold_user_id) {
        this.hold_user_id = hold_user_id;
    }

    public Integer getNeed_gender() {
        return need_gender;
    }

    public void setNeed_gender(Integer need_gender) {
        this.need_gender = need_gender;
    }

    public Integer getNeed_id_card() {
        return need_id_card;
    }

    public void setNeed_id_card(Integer need_id_card) {
        this.need_id_card = need_id_card;
    }

    public Integer getNeed_name() {
        return need_name;
    }

    public void setNeed_name(Integer need_name) {
        this.need_name = need_name;
    }



    public Integer getNeed_phone_number() {
        return need_phone_number;
    }

    public void setNeed_phone_number(Integer need_phone_number) {
        this.need_phone_number = need_phone_number;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    @Override
    public String toString() {
        return "Meeting{" +
                "id='" + id + '\'' +
                ", hotel='" + hotel + '\'' +
                ", location='" + location + '\'' +
                ", name='" + name + '\'' +
                ", start='" + start + '\'' +
                ", time='" + time + '\'' +
                ", hold_user_id=" + hold_user_id +
                ", need_gender=" + need_gender +
                ", need_id_card=" + need_id_card +
                ", need_name=" + need_name +
                ", need_phone_number=" + need_phone_number +
                '}';
    }

}
