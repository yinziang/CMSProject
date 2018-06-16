package com.hy.controller.back;


import com.hy.domain.Module;
import com.hy.domain.Page;
import com.hy.domain.Part;
import com.hy.service.AdminService;
import com.hy.service.ModuleService;
import com.hy.service.PageService;
import com.hy.service.PartService;
import com.hy.utils.JSONResult;
import com.sun.org.apache.xpath.internal.operations.Mod;
import jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
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


    // ********************** 页面跳转控制器 **********************

    /**
     * 跳转到联系人界面你的控制器
     * @param map
     * @return
     */
    @RequestMapping("/toBrief")
    public String toBrief(ModelMap map) {
        return "/back/update_brief";
    }

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

    @RequestMapping(value = "/pages", method = RequestMethod.POST)
    public JSONResult addPage(Page page) {
        pageService.savePage(page);
        return JSONResult.ok();
    }

    @RequestMapping(value = "/pages/{id}", method = RequestMethod.PUT)
    public JSONResult update(@PathVariable(value = "id") Integer id, Page page) {
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
