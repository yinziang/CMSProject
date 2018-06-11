package com.hy.service.impl;

import com.hy.dao.mapper.PageMapper;
import com.hy.domain.Page;
import com.hy.service.PageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PageServiceImpl implements PageService {

    @Resource
    PageMapper pageMapper = null;


    @Override
    public void deletePageByPid(Integer pid) {
        pageMapper.deleteByPid(pid);
    }

    @Override
    public List<Page> listPageByPartId(Integer partId) {
        return pageMapper.selectAllByPartId(partId);
    }

    @Override
    public int deletePageById(Integer id) {
        return pageMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updatePage(Page page) {
        return pageMapper.updateByPrimaryKey(page);
    }

    @Override
    public int savePage(Page page) {
        return pageMapper.insert(page);
    }

    @Override
    public Page getPageById(Integer id) {
        return pageMapper.selectByPrimaryKey(id);
    }

}
