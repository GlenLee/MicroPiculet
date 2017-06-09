package cn.pcx.framework.logic.controller;

import cn.pcx.framework.logic.service.KpiServiceI;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by pcx.cn on 17/06/08.
 */
@Controller
@RequestMapping("/")
public class WebController {

    @Autowired
    private KpiServiceI kpiService;

    @RequestMapping("/")
    public String index() {
        return "web/index";
    }

    @RequestMapping("/full")
    public String full() {
        return "web/full";
    }

    @RequestMapping("/admin")
    public String admin() {
        return "web/admin";
    }

    @RequestMapping("/log")
    public String log(HttpServletRequest req) {

        List<Map<String, Object>> users = new ArrayList<Map<String, Object>>();
        addUser(users, 1, "李萨");
        addUser(users, 2, "王进龙");
        req.setAttribute("users", users);

        req.setAttribute("kpis", kpiService.queryList());

        return "web/log";
    }

    private void addUser(List<Map<String, Object>> users, int id, String name) {
        Map<String, Object> user = new HashMap<String, Object>();
        user.put("Id", id);
        user.put("Name", name);
        users.add(user);
    }
}
