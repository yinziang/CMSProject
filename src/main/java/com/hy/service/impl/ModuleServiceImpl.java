package com.hy.service.impl;

import com.hy.dao.mapper.ModuleMapper;
import com.hy.domain.Module;
import com.hy.domain.dto.ModuleDetail;
import com.hy.service.ModuleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ModuleServiceImpl implements ModuleService {

    @Resource
    ModuleMapper moduleMapper = null;


    @Override
    public List<Module> listModule() {
        return moduleMapper.selectAll();
    }

    @Override
    public int updateModule(Module module) {
        return moduleMapper.updateByPrimaryKey(module);
    }

//    @Override
//    public ModuleDetail getModuleDetailById(Integer id) {
//        return moduleMapper.selectModuleDetailByPrimaryKey(id);
//    }
}
