package com.hy.service.impl;

import com.hy.dao.mapper.AdImageMapper;
import com.hy.domain.AdImage;
import com.hy.service.IndexService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class IndexServiceImpl implements IndexService {

    @Resource
    AdImageMapper adImageMapper = null;

    @Override
    public List<AdImage> listAdImage() {
        return adImageMapper.selectAll();
    }
}
