//package cn.pcx.common;
//
//import org.apache.catalina.servlet4preview.http.HttpServletRequest;
//import org.springframework.web.bind.annotation.ControllerAdvice;
//import org.springframework.web.bind.annotation.ExceptionHandler;
//import org.springframework.web.servlet.ModelAndView;
//
///**
// * Created by pcx.cn on 17/06/08.
// */
//@ControllerAdvice
//class GlobalExceptionHandler {
//
//    public static final String DEFAULT_ERROR_VIEW = "error1";
//
//    @ExceptionHandler(value = Exception.class)
//    public ModelAndView defaultErrorHandler(HttpServletRequest req, Exception e) throws Exception {
//        ModelAndView mav = new ModelAndView();
//        mav.addObject("e", e);
//        mav.addObject("url", req.getRequestURL());
//        mav.setViewName(DEFAULT_ERROR_VIEW);
//        return mav;
//    }
//
//}
