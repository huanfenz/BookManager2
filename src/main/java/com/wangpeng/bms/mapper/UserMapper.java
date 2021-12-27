package com.wangpeng.bms.mapper;

import com.wangpeng.bms.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User selectByUsernameAndPasswordAndIsAdmin(@Param("username") String username,
                                  @Param("password") String password,
                                  @Param("isAdmin") Byte isAdmin);

    User selectByUsername(String username);

    List<User> selectAllByLimit(@Param("begin") Integer begin, @Param("size") Integer size);

    Integer selectCount();

    List<User> selectAll();

    int selectCountBySearch(Map<String, Object> params);

    List<User> selectBySearch(Map<String, Object> params);
}
