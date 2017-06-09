package cn.pcx.logic.workcalendar.controller;

import cn.pcx.framework.logic.base.BaseController;
import cn.pcx.logic.workcalendar.entity.Result;
import com.alibaba.fastjson.JSON;
import org.springframework.http.client.ClientHttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RequestCallback;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.lang.reflect.Method;

/**
 * Created by glen on 17/06/04.
 */
@Controller
public class CalendarController extends BaseController {
    @RequestMapping("/w/cc")
    public String cc() {
        RestTemplate rest = new RestTemplate();

//        Object execute = rest.execute("http://localhost:8080/w/c", Method.PUBLIC, new RequestCallback() {
//            @Override
//            public void doWithRequest(ClientHttpRequest clientHttpRequest) throws IOException {
//                clientHttpRequest.toString();
//            }
//        }, null, null, null);

        Result r = rest.getForObject("http://localhost:17001/w/c", Result.class);

        System.out.println(JSON.toJSONString(r));

        return "demo";
    }
}
