package com.hy.service;

import com.hy.domain.Page;

import java.util.List;

public interface PageService {

    void deletePageByPid(Integer pid);

    List<Page> listPageByPartId(Integer partId);

    int deletePageById(Integer id);

    int updatePage(Page page);

    int savePage(Page page);

    Page getPageById(Integer id);

    Integer getMaxId();
}
