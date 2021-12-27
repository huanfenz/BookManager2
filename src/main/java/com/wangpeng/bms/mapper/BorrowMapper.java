package com.wangpeng.bms.mapper;

import com.wangpeng.bms.model.Borrow;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface BorrowMapper {
    int deleteByPrimaryKey(Integer borrowid);

    int insert(Borrow record);

    int insertSelective(Borrow record);

    Borrow selectByPrimaryKey(Integer borrowid);

    int updateByPrimaryKeySelective(Borrow record);

    int updateByPrimaryKey(Borrow record);

    List<Borrow> selectAllByLimit(@Param("begin") Integer begin, @Param("size") Integer size);

    Integer selectCount();

    int selectCountBySearch(Map<String, Object> searchParam);

    List<Borrow> selectBySearch(Map<String, Object> searchParam);

    Integer selectCountByReader(Integer userid);

    List<Borrow> selectAllByLimitByReader(@Param("begin") Integer begin, @Param("size") Integer size, @Param("userid") Integer userid);
}