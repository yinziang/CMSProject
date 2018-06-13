package com.hy.controller;


import com.hy.domain.Contact;
import com.hy.domain.ImageText;
import com.hy.domain.Page;
import com.hy.domain.Part;
import com.hy.service.PageService;
import com.hy.service.PartService;
import com.hy.service.TextImageService;
import com.hy.utils.Constants;
import com.hy.utils.Helper;
import com.hy.utils.JSONResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/api")
public class TextImageController {

    @Autowired
    TextImageService textImageService = null;
    @Autowired
    PartService partService = null;
    @Autowired
    PageService pageService = null;


    /* "最新资讯"、"健康宣教"的信息查看 */
    @RequestMapping(value = "/healthEdu", method = RequestMethod.GET)
    public JSONResult getHealthEdu() {
        Map<Integer, Map<String, String>> briefNewsMap = getBriefPageMap(Constants.HEALTH_EDUCATION_PART_ID);

        Map<String, Object> data = new HashMap<>();
        data.put("HEList", briefNewsMap);
        JSONResult jsonResult = new JSONResult();
        jsonResult.setMsg("操作成功");
        jsonResult.setStatus(200);
        jsonResult.setData(data);
        return jsonResult;
    }

    @RequestMapping(value = "/healthEdu/{id}", method = RequestMethod.GET)
    public JSONResult getHealthEduDetail(@PathVariable(value = "id") Integer id) {
        Page page = pageService.getPageById(id);
        Map<String, Object> data = new HashMap<>();
        data.put("title", page.getTitle());
        data.put("createAt", Helper.dateToString(page.getCreateAt()));
        data.put("content", page.getContent());

        JSONResult jsonResult = new JSONResult();
        jsonResult.setMsg("操作成功");
        jsonResult.setStatus(200);
        jsonResult.setData(data);
        return jsonResult;
    }


    // Assumed 最新资讯姑且只有"新闻"一个part
    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public JSONResult getNews() {
        Map<Integer, Map<String, String>> briefNewsMap = getBriefPageMap(Constants.NEWS_PART_ID);

        Map<String, Object> data = new HashMap<>();
        data.put("newsList", briefNewsMap);
        JSONResult jsonResult = new JSONResult();
        jsonResult.setMsg("操作成功");
        jsonResult.setStatus(200);
        jsonResult.setData(data);
        return jsonResult;
    }

    @RequestMapping(value = "/news/{id}", method = RequestMethod.GET)
    public JSONResult getNewsDetail(@PathVariable(value = "id") Integer id) {
        Page page = pageService.getPageById(id);
        Map<String, Object> data = new HashMap<>();
        data.put("title", page.getTitle());
        data.put("createAt", Helper.dateToString(page.getCreateAt()));
        data.put("content", page.getContent());

        JSONResult jsonResult = new JSONResult();
        jsonResult.setMsg("操作成功");
        jsonResult.setStatus(200);
        jsonResult.setData(data);
        return jsonResult;
    }

    private Map<Integer, Map<String, String>> getBriefPageMap(Integer partId) {
        List<Page> pageList = pageService.listPageByPartId(partId);
        Map<Integer, Map<String, String>> briefPagesMap = new HashMap<>();
        Map<String, String> briefPages = null;
        for (int i = 0; i < Math.min(pageList.size(), Constants.INDEX_MAX_NEWS_NUMBER); i++) {
            briefPages = new LinkedHashMap<>();
            briefPages.put("title", pageList.get(i).getTitle());
            briefPages.put("thumbnail", pageList.get(i).getThumbnail());
            briefPages.put("desc", pageList.get(i).getDescription());
            briefPages.put("createAt", Helper.dateToString(pageList.get(i).getCreateAt()));
            briefPages.put("id", pageList.get(i).getId().toString());
            briefPagesMap.put(i, briefPages);
        }
        return briefPagesMap;
    }


    /* "关于肾畅"、"解决方案"、"血透中心"的信息查看 */
    @RequestMapping(value = "/center", method = RequestMethod.GET)
    public JSONResult getCenter() {
        JSONResult jsonResult = new JSONResult();
        jsonResult.setMsg("操作成功");
        jsonResult.setStatus(200);
        jsonResult.setData(generateData(Constants.Center_MODULE_ID));
        return jsonResult;
    }

    @RequestMapping(value = "/solution", method = RequestMethod.GET)
    public JSONResult getSolution() {
        JSONResult jsonResult = new JSONResult();
        jsonResult.setMsg("操作成功");
        jsonResult.setStatus(200);
        jsonResult.setData(generateData(Constants.Solution_MODULE_ID));
        return jsonResult;
    }

    @RequestMapping(value = "/aboutWe", method = RequestMethod.GET)
    public JSONResult getAboutWe() {
        JSONResult jsonResult = new JSONResult();
        jsonResult.setMsg("操作成功");
        jsonResult.setStatus(200);
        jsonResult.setData(generateData(Constants.ABOUT_US_MODULE_ID));
        return jsonResult;
    }
//    public JSONResult getAboutWe() {
//        List<AboutWe> aboutWeList = textImageService.listAboutWe();
//        Map<List<String>, String> data = new LinkedHashMap<>();
//        for (AboutWe aboutWe : aboutWeList) {
//            data.put(Helper.stringToList(aboutWe.getImageUrl()), aboutWe.getItext());
//        }
//        // image_url单一图片
//        /*Map<String, String> data = new LinkedHashMap<>();
//        for (AboutWe aboutWe : aboutWeList) {
//            data.put(aboutWe.getImageUrl(), aboutWe.getItext());
//        }*/
//        JSONResult jsonResult = new JSONResult();
//        jsonResult.setMsg("操作成功");
//        jsonResult.setStatus(200);
//        jsonResult.setData(data);
//        return jsonResult;
//    }

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public JSONResult getContact() {
        System.out.println("contact");
        Contact contact = textImageService.getContact();
        Map<String, String> data = new LinkedHashMap<>();
        data.put("cname", contact.getCname());
        data.put("ename", contact.getEname());
        data.put("telphone", "电话：" + contact.getTelphone());
        data.put("email", "邮箱：" + contact.getEmail());
        data.put("website", "网址：" + contact.getWebsite());
        data.put("location", "地址：" + contact.getLocation());

        JSONResult jsonResult = new JSONResult();
        jsonResult.setMsg("操作成功");
        jsonResult.setStatus(200);
        jsonResult.setData(data);
        return jsonResult;
    }

    private Map<String, Map<List<String>, String>> generateData(Integer moduleId) {
        List<Part> partList = partService.listPartByModuleId(moduleId);
        Map<String, Map<List<String>, String>> data = new LinkedHashMap<>();
        Map<List<String>, String> imageListAndTextMap = null;
        List<ImageText> imageTextList = null;
        for (Part part : partList) {
            imageTextList = textImageService.listImageTextByPartId(part.getId());
            imageListAndTextMap = new LinkedHashMap<>();
            for (ImageText imageText : imageTextList) {
                imageListAndTextMap.put(Helper.stringToList(imageText.getImageUrl()),
                        imageText.getItext());
            }
            data.put(part.getPname(), imageListAndTextMap);
        }
        return data;
    }
}
