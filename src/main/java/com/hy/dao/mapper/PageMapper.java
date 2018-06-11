package com.hy.dao.mapper;

import com.hy.domain.Page;

import java.util.List;

public interface PageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Page record);

    Page selectByPrimaryKey(Integer id);

    List<Page> selectAll();

    int updateByPrimaryKey(Page record);

    int deleteByPid(Integer pid);

    List<Page> selectAllByPartId(Integer partId);
}