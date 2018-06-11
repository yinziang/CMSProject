package com.hy.dao.mapper;


import com.hy.domain.Part;

import java.util.List;

public interface PartMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Part record);

    Part selectByPrimaryKey(Integer id);

    List<Part> selectAll();

    int updateByPrimaryKey(Part record);

    List<Part> selectAllByModuleId(Integer mid);
}