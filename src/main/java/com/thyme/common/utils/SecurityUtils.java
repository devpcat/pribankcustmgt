package com.thyme.common.utils;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * @author thyme
 * @ClassName SecurityUtils
 * @Description TODO
 * @Date 2019/12/24 14:49
 */
public class SecurityUtils {

    /**
     * 获取当前用户
     */
    public static Authentication getCurrentUserAuthentication(){
        return SecurityContextHolder.getContext().getAuthentication();
    }
}
