package com.hy.dao.mapper;

import com.hy.domain.Module;
import com.hy.domain.dto.ModuleDetail;

import java.util.List;

public interface ModuleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Module record);

    Module selectByPrimaryKey(Integer id);

    List<Module> selectAll();

    int updateByPrimaryKey(Module record);

//    ModuleDetail selectModuleDetailByPrimaryKey(Integer id);

}