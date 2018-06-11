package com.hy.domain.dto;

import com.hy.domain.Part;

import java.util.List;

public class ModuleDetail {

    private Integer id;
    private String mname;
    private List<Part> partList;

    public ModuleDetail() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public List<Part> getPartList() {
        return partList;
    }

    public void setPartList(List<Part> partList) {
        this.partList = partList;
    }
}
