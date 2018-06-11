package com.hy.dao.mapper;


import com.hy.domain.AboutWe;

import java.util.List;

public interface AboutWeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AboutWe record);

    AboutWe selectByPrimaryKey(Integer id);

    List<AboutWe> selectAll();

    int updateByPrimaryKey(AboutWe record);

    List<AboutWe> selectAllSortedBySid();
}