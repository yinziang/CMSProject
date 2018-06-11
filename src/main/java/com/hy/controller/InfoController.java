package com.hy.controller;

import com.hy.domain.Module;
import com.hy.domain.Page;
import com.hy.domain.Part;
import com.hy.domain.dto.BriefNews;
import com.hy.service.InfoService;
import com.hy.service.ModuleService;
import com.hy.service.PageService;
import com.hy.service.PartService;
import com.hy.utils.Constants;
import com.hy.utils.JSONResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/info")
public class InfoController {

    @Autowired
    ModuleService moduleService = null;
    @Autowired
    PartService partService = null;
    @Autowired
    PageService pageService = null;


    // ********************** ********************** **********************
    /* Module的查看、修改 */
    @RequestMapping(value = "/modules", method = RequestMethod.GET)
    public JSONResult listModule() {
        List<Module> moduleList = moduleService.listModule();
        return JSONResult.ok(moduleList);
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

    @RequestMapping(value = "/parts/{id}", method = RequestMethod.GET)
    public JSONResult getPartById(@PathVariable(value = "id") Integer id) {
        Part part = partService.getPartById(id);
        return JSONResult.ok(part);
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

    @RequestMapping(value = "/pages/{id}", method = RequestMethod.GET)
    public JSONResult getPageById(@PathVariable(value = "id") Integer id) {
        Page page = pageService.getPageById(id);
        return JSONResult.ok(page);
    }

    @RequestMapping(value = "/pages/{id}", method = RequestMethod.PUT)
    public JSONResult updatePage(@PathVariable(value = "id") Integer id, Page page) {
        pageService.updatePage(page);
        return JSONResult.ok();
    }

    @RequestMapping(value = "/pages/{id}", method = RequestMethod.DELETE)
    public JSONResult deletePage(@PathVariable(value = "id") Integer id) {
        pageService.deletePageById(id);
        return JSONResult.ok();
    }

}
