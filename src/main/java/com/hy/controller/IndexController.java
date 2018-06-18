package com.hy.controller;

import com.hy.domain.*;
import com.hy.service.IndexService;
import com.hy.service.ModuleService;
import com.hy.service.PageService;
import com.hy.service.PartService;
import com.hy.utils.Constants;
import com.hy.utils.Helper;
import com.hy.utils.JSONResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {

    @Autowired
    IndexService indexService = null;
    @Autowired
    ModuleService moduleService = null;
    @Autowired
    PartService partService = null;
    @Autowired
    PageService pageService = null;

    /**
     * 轮播图、模块信息，装入data
     *
     * @return
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    @ResponseBody
    public JSONResult toIndex() {
        List<AdImage> adImageList = indexService.listAdImage();
        Map<String, String> adImageMap = new LinkedHashMap<>();
        for (int i = 0; i < adImageList.size(); i++) {
            adImageMap.put(Constants.PICTURE_NAME + i, adImageList.get(i).getUrl());
        }

        /****** 20180617 ******/
        Map<String, String> aboutUs = new LinkedHashMap<>();
        IndexPage indexPage = indexService.getFirstIndexPage();
        String solutionImagePath = indexPage.getSolutionImageUrl();
        aboutUs.put("imageUrl", indexPage.getAboutusImageUrl());
        aboutUs.put("Content", indexPage.getAboutusContent());
        /****** 20180617 ******/

        List<Page> pageList = pageService.listPageByPartId(Constants.NEWS_PART_ID);
        Map<Integer, Map<String, String>> briefNewsMap = new LinkedHashMap<>();
        Map<String, String> briefNews = null;
        for (int i = 0; i < Math.min(pageList.size(), Constants.INDEX_MAX_NEWS_NUMBER); i++) {
            briefNews = new HashMap<>();
            briefNews.put("id", pageList.get(i).getId()+"");
            briefNews.put("title", pageList.get(i).getTitle());
            briefNews.put("thumbnail", pageList.get(i).getThumbnail());
            briefNews.put("desc", pageList.get(i).getDescription());
            briefNewsMap.put(i, briefNews);
        }

        JSONResult jsonResult = new JSONResult();
        Map<String, Object> data = new HashMap<>();
        data.put("sliderPics", adImageMap);
        data.put("solution", solutionImagePath);
        data.put("aboutUs", aboutUs);
        data.put("newsList", briefNewsMap);
        jsonResult.setStatus(200);
        jsonResult.setData(data);
        jsonResult.setMsg(Constants.OK_MESSAGE);
        return jsonResult;
    }


    @RequestMapping(value = "/index/sliders", method = RequestMethod.GET)
    @ResponseBody
    public JSONResult listSliders() {
        List<AdImage> sliderList = indexService.listAdImage();
        JSONResult jsonResult = new JSONResult();
        jsonResult.setStatus(200);
        jsonResult.setData(sliderList);
        jsonResult.setMsg(Constants.OK_MESSAGE);
        return jsonResult;
    }

    @RequestMapping(value = "/index/solutions", method = RequestMethod.GET)
    @ResponseBody
    public JSONResult listSolution() {
        String imageUrl = indexService.getFirstIndexPage().getSolutionImageUrl();
        JSONResult jsonResult = new JSONResult();
        jsonResult.setStatus(200);
        jsonResult.setData(imageUrl);
        jsonResult.setMsg(Constants.OK_MESSAGE);
        return jsonResult;
    }

    @RequestMapping(value = "/index/aboutUs", method = RequestMethod.GET)
    @ResponseBody
    public JSONResult listAboutUs() {
        Map<String, String> aboutUs = new LinkedHashMap<>();
        IndexPage indexPage = indexService.getFirstIndexPage();
        aboutUs.put("imageUrl", indexPage.getAboutusImageUrl());
        aboutUs.put("content", indexPage.getAboutusContent());
        JSONResult jsonResult = new JSONResult();
        jsonResult.setStatus(200);
        jsonResult.setData(aboutUs);
        jsonResult.setMsg(Constants.OK_MESSAGE);
        return jsonResult;
    }

    @RequestMapping(value = "/index/aboutUs", method = RequestMethod.PUT)
    @ResponseBody
    public JSONResult updatePages(@RequestBody Map<String, String> aboutUs) {
        //System.out.println(aboutUs);
        IndexPage indexPage = indexService.getFirstIndexPage();
        if (!aboutUs.containsKey("content")) {
            return JSONResult.ok();
        }
        indexPage.setAboutusContent(aboutUs.get("content"));
        indexService.updateIndexPage(indexPage);

        return JSONResult.ok();
    }

    /**
     * 获取首页的轮播图的图片信息
     *
     * @return 将数据传输到显示我们的简介的修改页面
     */
    @RequestMapping(value = "/getSlider", method = RequestMethod.GET)
    public String getSlider() {
        //System.out.println("进入getSlider...");
        return "/back/update_slider";
    }

    /**
     * 获取首页的解决方案的信息
     *
     * @return 将数据传输到显示我们的简介的修改页面
     */
    @RequestMapping(value = "/getSolution", method = RequestMethod.GET)
    public String getSolution() {
        //System.out.println("进入getSlider...");
        return "/back/update_solution";
    }

    /**
     * 获取首页的我们的简介信息
     *
     * @return 将数据传输到显示我们的简介的修改页面
     */
    @RequestMapping(value = "/getBrief", method = RequestMethod.GET)
    public String getBrief() {
        //System.out.println("进入getSlider...");
        return "/back/update_about_us";
    }

}
