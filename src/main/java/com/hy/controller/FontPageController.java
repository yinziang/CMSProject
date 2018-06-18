package com.hy.controller;


import com.hy.domain.Module;
import com.hy.domain.Page;
import com.hy.domain.Part;
import com.hy.domain.dto.BriefPage;
import com.hy.service.AdminService;
import com.hy.service.ModuleService;
import com.hy.service.PageService;
import com.hy.service.PartService;
import com.hy.utils.Constants;
import com.hy.utils.Helper;
import com.hy.utils.JSONResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/font")
public class FontPageController {

    @Autowired
    PageService pageService = null;

    // ********************** 页面跳转控制器 **********************

    @RequestMapping(value = "/newsDetails/{id}", method = RequestMethod.GET)
    public String newsDetails(@PathVariable(value = "id") Integer id, ModelMap map) {
        Page page = pageService.getPageById(id);
        map.addAttribute("newsDetails", page);

        return "/font/news_details";
    }

    @RequestMapping(value = "/eduDetails/{id}", method = RequestMethod.GET)
    public String eduDetails(@PathVariable(value = "id") Integer id, ModelMap map) {
        Page page = pageService.getPageById(id);
        map.addAttribute("eduDetails", page);

        return "/font/edu_details";
    }

    /**
     * 跳转到嘉鱼血透中心界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toHealthEdu")
    public String toHealthEdu(ModelMap map) {
        List<Page> healthEduList = pageService.listPageByPartId(Constants.HEALTH_EDUCATION_PART_ID);

        List<BriefPage> pageLists = new ArrayList<>();
        BriefPage briefPage = null;
        for(Page news : healthEduList) {
            briefPage = new BriefPage(news.getId(), news.getTitle(), news.getThumbnail(),
                    news.getDescription(), news.getContent(), Helper.dateToString(news.getCreateAt()),
                    Helper.dateToString(news.getUpdateAt()));
            pageLists.add(briefPage);
        }

        map.addAttribute("healthEduLists", pageLists);

        System.out.println(healthEduList);
        return "/font/jiankangxuanjiao";
    }

    /**
     * 跳转到嘉鱼血透中心界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toNewsList")
    public String toNewsList(ModelMap map) {
        List<Page> newsLists = pageService.listPageByPartId(Constants.NEWS_PART_ID);

        List<BriefPage> pageLists = new ArrayList<>();
        BriefPage briefPage = null;
        for(Page news : newsLists) {
            briefPage = new BriefPage(news.getId(), news.getTitle(), news.getThumbnail(),
                    news.getDescription(), news.getContent(), Helper.dateToString(news.getCreateAt()),
                    Helper.dateToString(news.getUpdateAt()));
            pageLists.add(briefPage);
        }

        map.addAttribute("newsLists", pageLists);

        System.out.println(newsLists);
        return "/font/zuixinzixun";
    }

    /**
     * 跳转到嘉鱼血透中心界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toJYCenter")
    public String toJYCenter(ModelMap map) {
        return "/font/xuetou_jy";
    }
    /**
     * 跳转到通山血透中心界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toTSCenter")
    public String toTSCenter(ModelMap map) {
        return "/font/xuetou_ts";
    }
    /**
     * 跳转到阳新血透中心界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toYXCenter")
    public String toYXCenter(ModelMap map) {
        return "/font/xuetou_yx";
    }
    /**
     * 跳转到崇仁血透中心界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toCRCenter")
    public String toCRCenter(ModelMap map) {
        return "/font/xuetou_cr";
    }

    /**
     * 跳转到肾畅简介界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toSystem")
    public String toSystem(ModelMap map) {
        return "/font/xinxihuaxt";
    }


    /**
     * 跳转到肾畅简介界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toTrain")
    public String toTrain(ModelMap map) {
        return "/font/renyuanpx";
    }


    /**
     * 跳转到肾畅简介界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toMarket")
    public String toMarket(ModelMap map) {
        return "/font/shichangyx";
    }


    /**
     * 跳转到肾畅简介界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toDesign")
    public String toDesign(ModelMap map) {
        return "/font/shejigh";
    }

    /**
     * 跳转到肾畅简介界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toZeRen")
    public String toZeRen(ModelMap map) {
        return "/font/shehuizeren";
    }
    /**
     * 跳转到肾畅简介界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toWenHua")
    public String toWenHua(ModelMap map) {
        return "/font/shengchangwenhua";
    }
    /**
     * 跳转到肾畅简介界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toShiLi")
    public String toShiLi(ModelMap map) {
        return "/font/shengchangshili";
    }

    /**
     * 跳转到肾畅简介界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toBrief")
    public String toBrief(ModelMap map) {
        return "/font/shengchangjianjie";
    }
    /**
     * 跳转到联系人界面你的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toGroup")
    public String toGroup(ModelMap map) {
        return "/font/shenyouhui";
    }


    /**
     * 跳转到联系人界面你的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toContact")
    public String toContact(ModelMap map) {
        return "/font/contact";
    }



}
