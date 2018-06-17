package com.hy.service.impl;

import com.hy.dao.mapper.AdImageMapper;
import com.hy.dao.mapper.IndexPageMapper;
import com.hy.domain.AdImage;
import com.hy.domain.IndexPage;
import com.hy.service.IndexService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class IndexServiceImpl implements IndexService {

    @Resource
    AdImageMapper adImageMapper = null;
    @Resource
    IndexPageMapper indexPageMapper = null;

    @Override
    public List<AdImage> listAdImage() {
        return adImageMapper.selectAll();
    }

    @Override
    public IndexPage getFirstIndexPage() {
        return indexPageMapper.selectAll().get(0);
    }

    @Override
    public int updateIndexPage(IndexPage indexPage) {
        return indexPageMapper.updateByPrimaryKey(indexPage);
    }
}
