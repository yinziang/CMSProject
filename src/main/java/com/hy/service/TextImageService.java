package com.hy.service;

import com.hy.domain.AboutWe;
import com.hy.domain.Contact;
import com.hy.domain.ImageText;

import java.util.List;

public interface TextImageService {
    List<AboutWe> listAboutWe();

    Contact getContact();

    List<ImageText> listImageTextByPartId(Integer partId);
}
