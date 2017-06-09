package cn.pcx.framework.toolkit;

import com.alibaba.fastjson.JSONObject;

import java.util.List;
import java.util.Map;

/**
 * Created by pcx.cn on 17/06/08.
 */
public class JsonKit {
    public static JSONObject toJson(List<Map<String, Object>> data) {
        JSONObject j = new JSONObject();
        j.put("code", 1);
        j.put("data", data);
        return j;
    }

    public static JSONObject toJson(Object data) {
        JSONObject j = new JSONObject();
        j.put("code", 1);
        j.put("data", data);
        return j;
    }
}
