package cn.pcx.framework.logic.controller;

import cn.pcx.framework.logic.entity.ProjectEntity;
import cn.pcx.framework.logic.service.ProjectServiceI;
import cn.pcx.framework.toolkit.JsonKit;
import cn.pcx.framework.toolkit.WebKit;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * Created by pcx.cn on 17/06/08.
 */
@Controller
@RequestMapping("/")
public class WebController {

    @Autowired
    private ProjectServiceI projectService;

    @RequestMapping("/")
    public String index() {
        return "web/index";
    }

    @RequestMapping("/full")
    public String full() {
        return "web/full";
    }

    @RequestMapping("/log")
    public String log() {
        return "web/log";
    }

    @RequestMapping("/admin")
    public String admin(HttpServletRequest req) {

        List<Map<String, Object>> projects = projectService.getProjectList();
        req.setAttribute("projects", projects);

        return "web/admin";
    }

    @ResponseBody
    @RequestMapping(value = "/project/list", method = { RequestMethod.GET })
    public JSONObject projectList(HttpServletRequest req) {

        List<Map<String, Object>> projects = projectService.getProjectList();

        return JsonKit.toJson(projects);
    }

    @ResponseBody
    @RequestMapping(value = "/project/info", method = { RequestMethod.GET })
    public JSONObject project(HttpServletRequest req) {
        int pid = WebKit.getParamInt(req, "pid");

        Map<String, Object> project = projectService.getProject(pid);

        return JsonKit.toJson(project);
    }

    @ResponseBody
    @RequestMapping(value = "/project/info", method = { RequestMethod.POST, RequestMethod.PUT })
    public JSONObject projectSave(ProjectEntity entity, HttpServletRequest req) {

        projectService.saveProject(entity);

        return JsonKit.toJson(entity);
    }

}
