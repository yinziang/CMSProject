package com.hy.service;

import com.hy.domain.Part;

import java.util.List;

public interface PartService {
    List<Part> listPartByModuleId(Integer mid);

    int updatePart(Part part);

    int deletePartById(Integer partId);

    int savePart(Part part);

    Part getPartById(Integer id);
}
