package com.hy.service;

import com.hy.domain.Module;
import com.hy.domain.dto.ModuleDetail;

import java.util.List;

public interface ModuleService {
    List<Module> listModule();

    int updateModule(Module module);

//    ModuleDetail getModuleDetailById(Integer id);
}
