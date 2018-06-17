package com.hy.service;

import com.hy.domain.AdImage;
import com.hy.domain.IndexPage;

import java.util.List;

public interface IndexService {
    List<AdImage> listAdImage();

    IndexPage getFirstIndexPage();

    int updateIndexPage(IndexPage indexPage);
}
