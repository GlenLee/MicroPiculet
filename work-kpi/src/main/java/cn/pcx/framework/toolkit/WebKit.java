package cn.pcx.framework.toolkit;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;

/**
 * Created by pcx.cn on 17/06/08.
 */
public class WebKit {
    public static int getParamInt(HttpServletRequest req, String key) {
        String val = req.getParameter(key);
        return Integer.valueOf(val);
    }
}
