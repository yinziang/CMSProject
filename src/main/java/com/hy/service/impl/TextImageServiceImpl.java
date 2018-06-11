package com.hy.service.impl;

import com.hy.dao.mapper.AboutWeMapper;
import com.hy.dao.mapper.ContactMapper;
import com.hy.dao.mapper.ImageTextMapper;
import com.hy.domain.AboutWe;
import com.hy.domain.Contact;
import com.hy.domain.ImageText;
import com.hy.service.TextImageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TextImageServiceImpl  implements TextImageService {

    @Resource
    AboutWeMapper aboutWeMapper = null;
    @Resource
    ContactMapper contactMapper = null;
    @Resource
    ImageTextMapper imageTextMapper = null;


    @Override
    public List<AboutWe> listAboutWe() {
        return aboutWeMapper.selectAllSortedBySid();
    }

    @Override
    public Contact getContact() {
        return contactMapper.selectAll().get(0);
    }

    @Override
    public List<ImageText> listImageTextByPartId(Integer partId) {
        return imageTextMapper.selectAllByPartIdOrderBySid(partId);
    }
}
