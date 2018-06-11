package com.hy.dao.mapper;


import com.hy.domain.ImageText;

import java.util.List;

public interface ImageTextMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ImageText record);

    ImageText selectByPrimaryKey(Integer id);

    List<ImageText> selectAll();

    int updateByPrimaryKey(ImageText record);

    List<ImageText> selectAllByPartIdOrderBySid(Integer partId);
}