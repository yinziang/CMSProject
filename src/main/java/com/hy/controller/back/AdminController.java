package com.hy.controller.back;


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
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    ModuleService moduleService = null;
    @Autowired
    PartService partService = null;
    @Autowired
    PageService pageService = null;
    @Autowired
    AdminService adminService;

    /* 20180617 */

    @RequestMapping(value = "/listHealthEdus", method = RequestMethod.GET)
    public String listHealthEdus(ModelMap map) {
        List<Page> healthEduList = pageService.listPageByPartId(Constants.HEALTH_EDUCATION_PART_ID);
        List<BriefPage> briefPageList = new ArrayList<>();
        BriefPage briefPage = null;
        for(Page news : healthEduList) {
            briefPage = new BriefPage(news.getId(), news.getTitle(),"",
                    news.getDescription(),"", Helper.dateToString(news.getCreateAt()),
                    Helper.dateToString(news.getUpdateAt()));
            briefPageList.add(briefPage);
        }
        map.addAttribute("healthEduList", briefPageList);

        System.out.println(healthEduList);
        return "/back/list_health_edu";
    }

    @RequestMapping(value = "/healthEdus/{id}", method = RequestMethod.GET)
    public String toHealthEduUpdate(@PathVariable(value = "id") Integer id,
                               ModelMap map) {
        map.addAttribute("healthEduId", id);
        return "/back/update_health_edu";
    }

    @RequestMapping("/toHealthEduAdd")
    public String toHealthEduAdd() {
        return "/back/add_health_edu";
    }

    /**
     *
     * @param data
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/healthEdus", method = RequestMethod.POST)
    public JSONResult addHealthEdus(@RequestBody Map<String, String> data) {
        // 获取数据库Page表最大的ID，加1作为新插入记录的ID
        Integer maxId = pageService.getMaxId();
        String content = data.get("content");
        Page page = new Page();
        page.setTitle(data.get("title"));
        page.setContent(content);
        page.setId(maxId + 1);
        page.setPid(Constants.HEALTH_EDUCATION_PART_ID);
        page.setCreateAt(new Date());
        page.setDescription(content.substring(0,
                Math.min(Constants.MAX_DESCRIPTION_LENGTH, content.length())) + "...");
        System.out.println("page:" + page);
        pageService.savePage(page);
        return JSONResult.ok(page.getId());
    }

    @RequestMapping(value = "/listNews", method = RequestMethod.GET)
    public String listNews(ModelMap map) {
        List<Page> newsList = pageService.listPageByPartId(Constants.NEWS_PART_ID);
        List<BriefPage> briefPageList = new ArrayList<>();
        BriefPage briefPage = null;
        for(Page news : newsList) {
            briefPage = new BriefPage(news.getId(), news.getTitle(),"",
                    news.getDescription(), "", Helper.dateToString(news.getCreateAt()),
                    Helper.dateToString(news.getUpdateAt()));
            briefPageList.add(briefPage);
        }
        map.addAttribute("newsList", briefPageList);

        System.out.println(newsList);
        return "/back/list_news";
    }

    @RequestMapping(value = "/news/{id}", method = RequestMethod.GET)
    public String toNewsUpdate(@PathVariable(value = "id") Integer id,
                               ModelMap map) {
        //Page news = pageService.getPageById(id);
        //map.addAttribute("news", news);
        map.addAttribute("newsId", id);
        return "/back/update_news";
    }

    @RequestMapping("/toNewsAdd")
    public String toNewsAdd() {
        return "/back/add_news";
    }

    /**
     *
     * @param data
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/news", method = RequestMethod.POST)
    public JSONResult addNews(@RequestBody Map<String, String> data) {
        //System.out.println("data:" + data + ", " + data.getClass());
        // 获取数据库Page表最大的ID，加1作为新插入记录的ID
        Integer maxId = pageService.getMaxId();
        String content = data.get("content");
        System.out.println(maxId);
        Page page = new Page();
        page.setTitle(data.get("title"));
        page.setContent(content);
        page.setId(maxId + 1);
        page.setPid(Constants.NEWS_PART_ID);
        page.setCreateAt(new Date());
        page.setContent(content.substring(0,
                Math.min(Constants.MAX_DESCRIPTION_LENGTH, content.length())) + "...");
        System.out.println("page:" + page);
        pageService.savePage(page);
        return JSONResult.ok(page.getId());
    }

    /**
     * 缩略图上传，并关联修改相应Page记录
     * @param file
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/uploadThumbnail", method = RequestMethod.POST)
    public String uploadThumbnail(Integer id, MultipartFile file, HttpServletRequest request) throws Exception {
        //System.out.println("uploadFile:id:"+id+"  file:"+(file == null));

        StringBuilder imageUrl = new StringBuilder();
        imageUrl.append("/images/page/thumbnail/");
        imageUrl.append(Helper.getId() + ".jpg");

        //System.out.println(imageUrl.toString());
        if (file != null && file.getName() != null && !file.isEmpty()) {
            String FILE_TARGET = "target";
            String basePath = request.getSession().getServletContext().getRealPath("/");

            if (basePath.contains(FILE_TARGET)) {
                basePath = basePath.substring(0,basePath.lastIndexOf(FILE_TARGET));
            }

            String dir = basePath + "/src/main/webapp";
            try{
                // 新的图片
                File newFile = new File(dir + imageUrl);
                // 将内存中的数据写入磁盘
                file.transferTo(newFile);
                // 关联修改相应Page记录
                Page page = pageService.getPageById(id);
                page.setThumbnail(imageUrl.toString());
                pageService.updatePage(page);
                return "/back/index";
            }catch (Exception e) {
                e.printStackTrace();
                return "/error/upload_fail";
            }
        }
        return "/error/upload_fail";
        //return "redirect:/admin/listNews";
    }

    /* 20180617 */

    /**
     * 文件上传
     * @param file
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/uploadImg", method = RequestMethod.POST)
    public JSONResult uploadSummernoteImg(MultipartFile file, HttpServletRequest request) throws Exception {
        System.out.println("uploadFile: file:"+(file == null));
        JSONResult jsonResult = new JSONResult();

        if (file != null && file.getName() != null && !file.isEmpty()) {
            String FILE_TARGET = "target";
            String basePath = request.getSession().getServletContext().getRealPath("/")+"images/upload/";
            System.out.println("basePath:"+basePath);
            System.out.println("contextPath:"+request.getSession().getServletContext().getServletContextName());

            File dirPath = new File(basePath);
            if (!dirPath.exists()) {
                dirPath.mkdirs();
            }

            if (basePath.contains(FILE_TARGET)) {
                basePath = basePath.substring(0,basePath.lastIndexOf(FILE_TARGET));
            }
            String dir = basePath;

            try{
                // 新图片的名称
                String originFileName = file.getOriginalFilename();
                String newFileName = Helper.getId() + originFileName.substring(originFileName.lastIndexOf("."));

                // 新的图片
                File newFile = new File(dir + newFileName);

                // 将内存中的数据写入磁盘
                file.transferTo(newFile);

                jsonResult.setMsg("更新成功");
                jsonResult.setStatus(200);
                jsonResult.setData("/images/upload/"+newFileName);

                return jsonResult;
            }catch (Exception e) {
                jsonResult.setMsg("summernote 图片上传失败");
                jsonResult.setStatus(300);
                jsonResult.setData("/images/upload/");
                return jsonResult;
            }
        }

        jsonResult.setMsg("summernote 图片上传失败");
        jsonResult.setStatus(400);
        jsonResult.setData("/images/upload/");
        return jsonResult;
    }

    /**
     * 文件上传
     * @param file
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public String uploadFile(String imageUrl, MultipartFile file, HttpServletRequest request) throws Exception {
        System.out.println("uploadFile:imageUrl:"+imageUrl+"  file:"+(file == null));

        if (file != null && file.getName() != null && !file.isEmpty()) {
            String FILE_TARGET = "target";
            String basePath = request.getSession().getServletContext().getRealPath("/");

            if (basePath.contains(FILE_TARGET)) {
                basePath = basePath.substring(0,basePath.lastIndexOf(FILE_TARGET));
            }
            //System.out.println("basePath:"+basePath);

            String dir = basePath;
            try{
                // 新的图片
                File newFile = new File(dir + imageUrl);

                // 将内存中的数据写入磁盘
                file.transferTo(newFile);

                return "/back/index";
            }catch (Exception e) {
                e.printStackTrace();
                return "/error/upload_fail";
            }
        }
        return "/error/upload_fail";
    }


    // ********************** 页面跳转控制器 **********************

    /**
     * 跳转到解决方案中的信息化系统界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toSystem")
    public String toSystem(ModelMap map) {
        return "/back/update_solu_system";
    }

    /**
     * 跳转到解决方案中的人员培训界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toTrain")
    public String toTrain(ModelMap map) {
        return "/back/update_solu_train";
    }


    /**
     * 跳转到解决方案中的市场营销界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toMarket")
    public String toMarket(ModelMap map) {
        return "/back/update_solu_market";
    }

    /**
     * 跳转到解决方案中的设计规划界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toDesign")
    public String toDesign(ModelMap map) {
        return "/back/update_solu_design";
    }

    /**
     * 跳转到嘉鱼血透中心界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toJYCenter")
    public String toJYCenter(ModelMap map) {
        return "/back/update_center_jy";
    }
    /**
     * 跳转到通山血透中心界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toTSCenter")
    public String toTSCenter(ModelMap map) {
        return "/back/update_center_ts";
    }
    /**
     * 跳转到阳新血透中心界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toYXCenter")
    public String toYXCenter(ModelMap map) {
        return "/back/update_center_yx";
    }
    /**
     * 跳转到崇仁血透中心界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toCRCenter")
    public String toCRCenter(ModelMap map) {
        return "/back/update_center_cr";
    }

    /**
     * 跳转到肾畅责任界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toZeRen")
    public String toZeRen(ModelMap map) {
        return "/back/update_zeren";
    }

    /**
     * 跳转到肾畅文化界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toWenHua")
    public String toWenHua(ModelMap map) {
        return "/back/update_wenhua";
    }

    /**
     * 跳转到肾畅实力界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toShiLi")
    public String toShiLi(ModelMap map) {
        return "/back/update_shili";
    }

    /**
     * 跳转到肾畅简介界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toBrief")
    public String toBrief(ModelMap map) {
        return "/back/update_brief";
    }

    /**
     * 跳转到肾畅简介界面的控制器
     * @param map
     * @return
     */
    @RequestMapping("")
    public String toLogin(ModelMap map) {
        return "/back/login";
    }


    // ********************** end 页面跳转控制器 **********************

    /**
     * 管理员用户登录的控制器
     * @param username
     * @param password
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String username, String password) {
        System.out.println("username:"+username+"  password:"+password);

        if (username == null || username.length() <= 0) {
            return "/error/login_fail";
        }
        if (!adminService.loginByUsernamePassword(username, password)) {
            return "/error/login_fail";
        }

        return "/back/index";
    }

    /**
     * 跳转到联系人界面你的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toContact")
    public String toContact(ModelMap map) {
        return "/back/update_contact";
    }


    /**
     * 获取前端用户首页信息
     * @param map
     * @return
     */
    @RequestMapping("/index")
    public String toIndex(ModelMap map) {
        return "/back/index";
    }


    // ********************** Module的CRUD **********************

    /**
     * 得到所有的模块和子模块信息
     * @param map
     * @return
     */
    @RequestMapping(value = "/modules", method = RequestMethod.GET)
    public String listModule(ModelMap map) {
        List<Module> moduleList = moduleService.listModule();
        map.addAttribute("moduleList", moduleList);

        List<Part> partsOfModule = new ArrayList<>();

        for (Module m: moduleList) {
            partsOfModule.addAll(partService.listPartByModuleId(m.getId()));
        }
        map.addAttribute("partsOfModule", partsOfModule);
        return "/back/module_list";
    }

    @RequestMapping(value = "/modules/{id}", method = RequestMethod.GET)
    public String getModuleById(@PathVariable(value = "id")Integer id, ModelMap map) {
        Module module = moduleService.getModuleById(id);
        map.addAttribute("module", module);
        return "/back/module_update";
    }

    /**
     * 更新模块信息
     * @param module
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/updateModule", method = RequestMethod.POST)
    public JSONResult updateModule(@RequestBody Module module) {
        System.out.println("updateModule:  mname:"+module.getMname());
        JSONResult jsonResult = new JSONResult();
        if (module != null && module.getId() != null && module.getId() > 0) {
            int result = moduleService.updateModule(module);
            if (result > 0) {
                jsonResult.setMsg("更新成功");
                jsonResult.setStatus(200);
                jsonResult.setData(module);
            } else {
                jsonResult.setMsg("更新失败");
                jsonResult.setStatus(400);
            }
        } else {
            jsonResult.setMsg("参数有误");
            jsonResult.setStatus(300);
        }

        System.out.println(jsonResult.toString());
        return jsonResult;
    }


    // ********************** Part的CRUD ********************** **********************

    @RequestMapping(value = "/modules/{mid}/parts", method = RequestMethod.GET)
    public String listPart(@PathVariable(value = "mid") Integer mid, ModelMap map) {
        List<Part> partList = partService.listPartByModuleId(mid);
        map.addAttribute("partList", partList);
        return "/back/part_list";
    }

    @RequestMapping(value = "/parts", method = RequestMethod.POST)
    public String addPart(Part part) {
        partService.savePart(part);
        return "redirect:/admin/modules" + part.getMid() + "/parts";
    }

    @RequestMapping(value = "/parts", method = RequestMethod.GET)
    public String getPart(@PathVariable(value = "id") Integer id, ModelMap map) {
        List<Part> partList = partService.listPartByModuleId(id);
        map.addAttribute("partList", partList);
        return "/back/part_list";
    }

    /**
     * 更新子模块信息
     * @param part
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/updatePart", method = RequestMethod.POST)
    public JSONResult updatePart(@RequestBody Part part) {
        System.out.println("updatePart:  pname:"+part.getPname());
        JSONResult jsonResult = new JSONResult();
        if (part != null && part.getId() != null && part.getId() > 0) {
            int result = partService.updatePart(part);
            if (result > 0) {
                jsonResult.setMsg("更新成功");
                jsonResult.setStatus(200);
                jsonResult.setData(part);
            } else {
                jsonResult.setMsg("更新失败");
                jsonResult.setStatus(400);
            }
        } else {
            jsonResult.setMsg("参数有误");
            jsonResult.setStatus(300);
        }

        System.out.println(jsonResult.toString());
        return jsonResult;
    }

    @RequestMapping(value = "/parts/{id}", method = RequestMethod.DELETE)
    public String deletePart(@PathVariable(value = "id") Integer id) {
        // TODO 此处是否考虑改变状态而不是删除
        Part part = partService.getPartById(id);
        partService.deletePartById(id);
        pageService.deletePageByPid(id);
        return "redirect:/admin/modules" + part.getMid() + "/parts";
    }

    // ********************* Page的CRUD **********************

    @ResponseBody
    @RequestMapping(value = "/parts/{partId}/pages", method = RequestMethod.GET)
    public JSONResult listPage(@PathVariable(value = "partId") Integer partId) {
        System.out.println("partId:"+partId);
        List<Page> pageList = pageService.listPageByPartId(partId);
        return JSONResult.ok(pageList);
    }

    @ResponseBody
    @RequestMapping(value = "/pages/{id}", method = RequestMethod.GET)
    public JSONResult getPage(@PathVariable(value = "id") Integer id) {
        Page page = pageService.getPageById(id);
        return JSONResult.ok(page);
    }

    // Page页面的增加
//    /**
//     *
//     * @param data
//     * @return
//     */
//    @ResponseBody
//    @RequestMapping(value = "/pages", method = RequestMethod.POST)
//    public JSONResult addPage(@RequestBody Map<String, String> data) {
//        //System.out.println("data:" + data + ", " + data.getClass());
//        // 获取数据库Page表最大的ID，加1作为新插入记录的ID
//        Integer maxId = pageService.getMaxId();
//        String content = data.get("content");
//        System.out.println(maxId);
//        Page page = new Page();
//        page.setTitle(data.get("title"));
//        page.setContent(content);
//        page.setId(maxId + 1);
//        page.setPid(Constants.NEWS_PART_ID);
//        page.setCreateAt(new Date());
//        page.setContent(content.substring(0,
//                Math.min(Constants.MAX_DESCRIPTION_LENGTH, content.length())) + "...");
//        System.out.println("page:" + page);
//        pageService.savePage(page);
//        return JSONResult.ok(page.getId());
//    }

    @ResponseBody
    @RequestMapping(value = "/updatePages", method = RequestMethod.PUT)
    public JSONResult updatePages(@RequestBody List<Page> pages) {
        for (Page p : pages) {
            pageService.updatePage(p);
        }
        return JSONResult.ok();
    }

    @ResponseBody
    @RequestMapping(value = "/updatePage", method = RequestMethod.PUT)
    public JSONResult updatePage(@RequestBody Page page) {
        page.setUpdateAt(new Date());
        System.out.println(Helper.dateToString(new Date()));
        pageService.updatePage(page);

        return JSONResult.ok();
    }

    @RequestMapping(value = "/pages/{id}", method = RequestMethod.DELETE)
    public JSONResult deletePage(@PathVariable(value = "id") Integer id) {
        // TODO 此处是否考虑改变状态而不是删除
        pageService.deletePageById(id);
        return JSONResult.ok();
    }
}
