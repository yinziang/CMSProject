package com.hy.controller.back;


import com.hy.domain.Module;
import com.hy.domain.Page;
import com.hy.domain.Part;
import com.hy.service.AdminService;
import com.hy.service.ModuleService;
import com.hy.service.PageService;
import com.hy.service.PartService;
import com.hy.utils.JSONResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

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

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String username, String password) {
        System.out.println("username:"+username+"  password:"+password);

        if (username == null || username.length() <= 0) {
            return "/login_fail";
        }
        if (!adminService.loginByUsernamePassword(username, password)) {
            return "/login_fail";
        }

        return "/back/index";
    }

    @RequestMapping("/index")
    public String toIndex(ModelMap map) {
        return "/back/index";
    }

    // ********************** ********************** **********************
    /* Module的CRUD */
    @RequestMapping(value = "/modules", method = RequestMethod.GET)
    public String listModule(ModelMap map) {
        List<Module> moduleList = moduleService.listModule();
        map.addAttribute("moduleList", moduleList);
        return "/back/module_list";
    }



    @RequestMapping(value = "/modules/{id}", method = RequestMethod.PUT)
    public JSONResult updateModule(@PathVariable(value = "id") Integer id, Module module) {
        moduleService.updateModule(module);
        return JSONResult.ok();
    }

    // ********************** ********************** **********************
    /* Part的CRUD */
    @RequestMapping(value = "/modules/{mid}/parts", method = RequestMethod.GET)
    public JSONResult listPart(@PathVariable(value = "mid") Integer mid) {
        List<Part> partList = partService.listPartByModuleId(mid);
        return JSONResult.ok();
    }

    @RequestMapping(value = "/parts", method = RequestMethod.POST)
    public JSONResult addPart(Part part) {
        partService.savePart(part);
        return JSONResult.ok();
    }

    @RequestMapping(value = "/parts/{id}", method = RequestMethod.PUT)
    public JSONResult updatePart(@PathVariable(value = "id") Integer id, Part part) {
        partService.updatePart(part);
        return JSONResult.ok();
    }

    @RequestMapping(value = "/parts/{id}", method = RequestMethod.DELETE)
    public JSONResult deletePart(@PathVariable(value = "id") Integer id) {
        // TODO 此处是否考虑改变状态而不是删除
        partService.deletePartById(id);
        pageService.deletePageByPid(id);
        return JSONResult.ok();
    }

    // ********************** ********************** **********************
    /* Page的CRUD */
    @RequestMapping(value = "/parts/{partId}/pages", method = RequestMethod.GET)
    public JSONResult listPage(@PathVariable(value = "partId") Integer partId) {
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