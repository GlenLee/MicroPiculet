package cn.pcx.framework.logic.controller;

import cn.pcx.framework.logic.entity.LogEntity;
import cn.pcx.framework.logic.service.LogServiceI;
import cn.pcx.framework.toolkit.JsonKit;
import cn.pcx.framework.toolkit.WebKit;
import com.alibaba.fastjson.JSONObject;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * Created by pcx.cn on 17/06/08.
 */
@RestController
@RequestMapping("/log")
public class LogRestController {

    @Autowired
    private LogServiceI logService;

    @RequestMapping(value = "/list", method = { RequestMethod.GET })
    public JSONObject list(HttpServletRequest req) {

        List<Map<String, Object>> list = logService.queryList();

        return JsonKit.toJson(list);
    }

    @ResponseBody
    @RequestMapping(value = "/info", method = { RequestMethod.GET })
    public JSONObject project(HttpServletRequest req) {
        int id = WebKit.getParamInt(req, "id");

        Map<String, Object> model = logService.queryModel(id);

        return JsonKit.toJson(model);
    }

    @ResponseBody
    @RequestMapping(value = "/save", method = { RequestMethod.POST, RequestMethod.PUT })
    public JSONObject projectSave(LogEntity entity, HttpServletRequest req) {

        logService.save(entity);

        return JsonKit.toJson(entity);
    }

    @ResponseBody
    @RequestMapping(value = "/del/{id}", method = { RequestMethod.DELETE })
    public JSONObject projectSave(@PathVariable int id) {

        logService.delete(id);

        return JsonKit.toJson(null);
    }

}
