package com.hy.dao.mapper;


import com.hy.domain.IndexPage;

import java.util.List;

public interface IndexPageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(IndexPage record);

    IndexPage selectByPrimaryKey(Integer id);

    List<IndexPage> selectAll();

    int updateByPrimaryKey(IndexPage record);
}