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
import org.springframework.web.bind.annotation.*;

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
            return "/error/login_fail";
        }
        if (!adminService.loginByUsernamePassword(username, password)) {
            return "/error/login_fail";
        }

        return "/back/index";
    }

    @RequestMapping("/toContact")
    public String toContact(ModelMap map) {
        return "/back/update_contact";
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

    @RequestMapping(value = "/modules/{id}", method = RequestMethod.GET)
    public String getModuleById(@PathVariable(value = "id")Integer id, ModelMap map) {
        Module module = moduleService.getModuleById(id);
        map.addAttribute("module", module);
        return "/back/module_update";
    }

    @ResponseBody
    @RequestMapping(value = "/updateModules", method = RequestMethod.POST)
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

    // ********************** ********************** **********************
    /* Part的CRUD */
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

    @RequestMapping(value = "/parts/{id}", method = RequestMethod.PUT)
    public String updatePart(@PathVariable(value = "id") Integer id, Part part) {
        partService.updatePart(part);
        return "redirect:/admin/modules" + part.getMid() + "/parts";
    }

    @RequestMapping(value = "/parts/{id}", method = RequestMethod.DELETE)
    public String deletePart(@PathVariable(value = "id") Integer id) {
        // TODO 此处是否考虑改变状态而不是删除
        Part part = partService.getPartById(id);
        partService.deletePartById(id);
        pageService.deletePageByPid(id);
        return "redirect:/admin/modules" + part.getMid() + "/parts";
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
