package com.hy.dao.mapper;

import com.hy.domain.Admin;

import java.util.List;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    Admin selectByPrimaryKey(Integer id);

    List<Admin> selectAll();

    int updateByPrimaryKey(Admin record);

    /**
     * 根据管理员用户的用户名来查找该用户是否存在
     *
     * @param username
     * @return
     */
    Admin selectByUsername(String username);
}