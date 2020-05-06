package com.thyme.common.utils;

import javax.servlet.http.HttpServletRequest;

/**
 * @author thyme
 * @ClassName RequestUtils
 * @Description TODO
 * @Date 2019/12/11 11:33
 */
public class RequestUtils {
    public static boolean isAjax(HttpServletRequest request) {
        return "XMLHttpRequest".equalsIgnoreCase(request.getHeader("X-Requested-With"));
    }
}
