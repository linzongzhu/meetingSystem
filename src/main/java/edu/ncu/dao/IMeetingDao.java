package edu.ncu.dao;

import edu.ncu.domain.Meeting;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IMeetingDao {
    @Select("select * from meeting")
    List<Meeting>findAll();
    @Insert("insert into meeting(hotel,location,name,start,time,hold_user_id,need_gender,need_id_card,need_name,need_phone_number)values(#{hotel},#{location},#{name},#{start},#{time},#{hold_user_id},#{need_gender},#{need_id_card},#{need_name},#{need_phone_number})")
    void save(Meeting meeting);
/*
    @Select("select m.*,u.* from meeting m\n" +
            "left outer join meetingjoinuser mju on  m.id=mju.mid\n" +
            "left outer join user u on u.id=mju.uid where id=#{id}")

*/
    @Select("select * from meeting where id=#{id}")
    @Results({
            @Result(id=true,column = "id",property = "id"),
            @Result(column = "hotel",property = "hotel"),
            @Result(column = "location",property = "location"),
            @Result(column = "name",property = "name"),
            @Result(column = "start",property = "start"),
            @Result(column = "time",property = "time"),
            @Result(column = "hold_user_id",property = "hold_user_id"),
            @Result(column = "id",property = "users",many = @Many(select = "edu.ncu.dao.IUserDao.findIdByMeeting"))
    })
    Meeting findById(int id);

    @Insert("insert into meetingjoinuser(mid,uid)values(#{mid},#{uid})")
    void addUser(@Param("uid") int uid,@Param("mid") int id);

    @Select("select * from meeting where id in(select mid from meetingjoinuser where uid=#{uid})")
    List<Meeting> findJoin(int uid);
    @Delete("delete from meetingjoinuser where mid=#{id};delete from meeting where id=#{id}")
    void delete(int id);
    @Delete("delete from meetingjoinuser where mid=#{mid} and uid=#{uid}")
    void deleteUser(@Param("mid") int id, @Param("uid") int uid);

    @Delete("delete from meetingjoinuser where uid=#{uid}")
    void deleteJoin(int uid);
    @Delete("delete from meeting where hold_user_id=#{hold_user_id}")
    void deleteByOrganizationId(int hold_user_id);
}
