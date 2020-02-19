package edu.ncu.dao;

import edu.ncu.domain.Meeting;
import edu.ncu.domain.MeetingJoinUser;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface IMeetingJoinUserDao {
    @Select("select * from meetingjoinuser")
    @Results({
            @Result(id=true,property = "id",column = "id"),
            @Result(property = "meeting",column = "mid",javaType = Meeting.class ,one=@One(select = "edu.ncu.dao.IMeetingDao.findById"))
    })
    public List<MeetingJoinUser>findAll() throws Exception;

    MeetingJoinUser findById(int id);
}
