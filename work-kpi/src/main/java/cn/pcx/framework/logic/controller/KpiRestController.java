package cn.pcx.framework.logic.controller;

import cn.pcx.framework.logic.entity.KpiEntity;
import cn.pcx.framework.logic.service.KpiServiceI;
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
@RequestMapping("/kpi")
public class KpiRestController {

    @Autowired
    private KpiServiceI kpiService;

    @RequestMapping(value = "/list", method = { RequestMethod.GET })
    public JSONObject list(HttpServletRequest req) {

        List<Map<String, Object>> list = kpiService.queryList();

        return JsonKit.toJson(list);
    }

    @ResponseBody
    @RequestMapping(value = "/info", method = { RequestMethod.GET })
    public JSONObject project(HttpServletRequest req) {
        int id = WebKit.getParamInt(req, "id");

        Map<String, Object> model = kpiService.queryModel(id);

        return JsonKit.toJson(model);
    }

    @ResponseBody
    @RequestMapping(value = "/save", method = { RequestMethod.POST, RequestMethod.PUT })
    public JSONObject projectSave(KpiEntity entity, HttpServletRequest req) {

        kpiService.save(entity);

        return JsonKit.toJson(entity);
    }

    @ResponseBody
    @RequestMapping(value = "/del/{id}", method = { RequestMethod.DELETE })
    public JSONObject projectSave(@PathVariable int id) {

        kpiService.delete(id);

        return JsonKit.toJson(null);
    }

}
