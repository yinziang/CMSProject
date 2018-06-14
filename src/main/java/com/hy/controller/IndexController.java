package com.hy.controller;

import com.hy.domain.AdImage;
import com.hy.domain.Module;
import com.hy.domain.Page;
import com.hy.domain.Part;
import com.hy.domain.dto.BriefNews;
import com.hy.domain.dto.ModuleDetail;
import com.hy.service.IndexService;
import com.hy.service.ModuleService;
import com.hy.service.PageService;
import com.hy.service.PartService;
import com.hy.utils.Constants;
import com.hy.utils.JSONResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
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
        Map<String, String> adImageMap = new HashMap<>();
        for(int i=0; i<adImageList.size(); i++) {
            adImageMap.put(Constants.PICTURE_NAME+i, adImageList.get(i).getUrl());
        }

        Page aboutUsPage = pageService.listPageByPartId(Constants.ABOUT_US_PART_ID).get(0);
        Map<String, String> aboutUs = new HashMap<>();
        aboutUs.put("imageUrl", aboutUsPage.getImageUrl());
        aboutUs.put("Content", aboutUsPage.getContent());


        List<Page> pageList = pageService.listPageByPartId(Constants.NEWS_PART_ID);
        Map<Integer, Map<String, String>> briefNewsMap = new HashMap<>();
        Map<String, String> briefNews = null;
        for(int i=0; i<Math.min(pageList.size(), Constants.INDEX_MAX_NEWS_NUMBER); i++) {
            briefNews = new HashMap<>();
            briefNews.put("title", pageList.get(i).getTitle());
            briefNews.put("thumbnail" , pageList.get(i).getThumbnail());
            briefNews.put("desc", pageList.get(i).getDescription());
            briefNewsMap.put(i, briefNews);
        }

        JSONResult jsonResult = new JSONResult();
        Map<String, Object> data = new HashMap<>();
        data.put("sliderPics", adImageMap);
        data.put("solution", Constants.SOLUTION_IMAGE_PATH);
        data.put("aboutUs", aboutUs);
        data.put("newsList", briefNewsMap);
        jsonResult.setStatus(200);
        jsonResult.setData(data);
        jsonResult.setMsg(Constants.OK_MESSAGE);
        return jsonResult;
    }

    /**
     * 获取首页的轮播图的图片信息
     *
     * @return 将数据传输到显示我们的简介的修改页面
     */
    @RequestMapping(value = "/getSlider", method = RequestMethod.GET)
    public String getSlider() {
        System.out.println("进入getSlider...");
        return "/back/update_slider";
    }

    /**
     * 获取首页的解决方案的信息
     *
     * @return 将数据传输到显示我们的简介的修改页面
     */
    @RequestMapping(value = "/getSolution", method = RequestMethod.GET)
    public String getSolution() {
        System.out.println("进入getSlider...");
        return "/back/update_solution";
    }

    /**
     * 获取首页的我们的简介信息
     *
     * @return 将数据传输到显示我们的简介的修改页面
     */
    @RequestMapping(value = "/getBrief", method = RequestMethod.GET)
    public String getBrief() {
        System.out.println("进入getSlider...");
        return "/back/update_brief";
    }


}
