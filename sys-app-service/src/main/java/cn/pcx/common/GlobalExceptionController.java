//package cn.pcx.common;
//
//
//import org.springframework.boot.autoconfigure.web.BasicErrorController;
//import org.springframework.boot.autoconfigure.web.ErrorAttributes;
//import org.springframework.boot.autoconfigure.web.ErrorProperties;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import javax.servlet.http.HttpServletRequest;
//
///**
// * Created by pcx.cn on 17/06/08.
// */
//@Controller
//class GlobalExceptionController extends BasicErrorController {
//
//    public static final String DEFAULT_ERROR_VIEW = "error1";
//
//    public GlobalExceptionController(ErrorAttributes errorAttributes, ErrorProperties errorProperties) {
//        super(errorAttributes, errorProperties);
//    }
//
//    @RequestMapping(value = "err", method = RequestMethod.GET)
//    public String defaultErrorHandler(HttpServletRequest req, Exception e) throws Exception {
//        req.setAttribute("e", e);
//        req.setAttribute("url", req.getRequestURL());
//        return DEFAULT_ERROR_VIEW;
//    }
//
//}
