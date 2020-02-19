package edu.ncu.dao;

import edu.ncu.domain.Role;
import edu.ncu.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserDao {

    @Select("select * from user where id in (select uid from meetingjoinuser where mid=#{id})")
    List<User> findIdByMeeting(int id) throws Exception;

    @Insert("insert into user(id_card, gender, password, phone_number, username, email)values(#{id_card},#{gender},#{password}," +
            "#{phone_number},#{username},#{email})")
    void save(User user) throws Exception;

    @Select("select * from user where username=#{username}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(column = "username", property = "username"),
            @Result(column = "email", property = "email"),
            @Result(column = "password", property = "password"),
            @Result(column = "phone_number", property = "phone_number"),
            @Result(column = "id_card", property = "id_card"),
            @Result(column = "gender", property = "gender"),
            @Result(column = "id", property = "roles", javaType = List.class, many = @Many(select = "edu.ncu.dao.IRoleDao.findRoleByUserId")) })
        User findByUsername(String username);

    @Select("select * from user")
    List<User>findAll();
    @Select("select * from user where id=#{id}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(column = "username", property = "username"),
            @Result(column = "email", property = "email"),
            @Result(column = "password", property = "password"),
            @Result(column = "phone_number", property = "phone_number"),
            @Result(column = "id_card", property = "id_card"),
            @Result(column = "gender", property = "gender"),
            @Result(column = "id", property = "roles", javaType = List.class, many = @Many(select = "edu.ncu.dao.IRoleDao.findRoleByUserId")) })

    User findById(int id);


    @Select("select * from role where id not in( select roleId from users_role where userId=#{id})")
    List<Role> findOtherRoles(int id);

    @Insert("insert into users_role(userId,roleId) value(#{userId},#{roleId})")
    void addRoleToUser(@Param("userId") int userId, @Param("roleId") int roleId);

    @Delete("delete from user where id=#{id}")
    void delete(int id);

    @Update("update user set password=#{password} where id=#{id}")
    void updatePassword(@Param("password") String password,@Param("id") int uid);

    @Select("select password from user where id=#{id}")
    String findPasswordById(int id);

    @Delete("delete from users_role where userId=#{id}")
    void deleteUserJoinRole(int id);
}
