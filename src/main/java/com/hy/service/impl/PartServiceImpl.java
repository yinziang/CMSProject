package com.hy.service.impl;

import com.hy.dao.mapper.PartMapper;
import com.hy.domain.Part;
import com.hy.service.PartService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PartServiceImpl implements PartService {

    @Resource
    PartMapper partMapper = null;


    @Override
    public List<Part> listPartByModuleId(Integer mid) {
        return partMapper.selectAllByModuleId(mid);
    }

    @Override
    public int updatePart(Part part) {
        return partMapper.updateByPrimaryKey(part);
    }

    @Override
    public int deletePartById(Integer id) {
        return partMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int savePart(Part part) {
        return partMapper.insert(part);
    }

    @Override
    public Part getPartById(Integer id) {
        return partMapper.selectByPrimaryKey(id);
    }
}
