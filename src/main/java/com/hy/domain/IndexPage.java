package com.hy.domain;

public class IndexPage {
    private Integer id;

    private String solutionImageUrl;

    private String aboutusImageUrl;

    private String aboutusContent;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSolutionImageUrl() {
        return solutionImageUrl;
    }

    public void setSolutionImageUrl(String solutionImageUrl) {
        this.solutionImageUrl = solutionImageUrl;
    }

    public String getAboutusImageUrl() {
        return aboutusImageUrl;
    }

    public void setAboutusImageUrl(String aboutusImageUrl) {
        this.aboutusImageUrl = aboutusImageUrl;
    }

    public String getAboutusContent() {
        return aboutusContent;
    }

    public void setAboutusContent(String aboutusContent) {
        this.aboutusContent = aboutusContent;
    }
}