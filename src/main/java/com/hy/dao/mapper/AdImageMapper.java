package com.hy.dao.mapper;


import com.hy.domain.AdImage;

import java.util.List;

public interface AdImageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AdImage record);

    AdImage selectByPrimaryKey(Integer id);

    List<AdImage> selectAll();

    int updateByPrimaryKey(AdImage record);
}