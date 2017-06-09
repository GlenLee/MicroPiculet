package cn.pcx.logic.workcalendar.api;

import cn.pcx.framework.logic.base.BaseRestController;
import com.alibaba.fastjson.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by glen on 17/06/04.
 * 考勤日历对外数据 API 控制器
 */
@RestController
public class CalendarApiController extends BaseRestController {
    @RequestMapping("/w/c")
    public JSONObject c() {
        JSONObject j = new JSONObject();
        j.put("code", 1);
        return j;
    }
}
