package com.thyme.system.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author thyme
 * @ClassName LoginController
 * @Description TODO
 * @Date 2019/12/11 10:50
 */
@Controller
@Slf4j
public class IndexController {

    @Autowired
    private SessionRegistry sessionRegistry;

    @RequestMapping("/")
    public String index() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        List<Object> allPrincipals = sessionRegistry.getAllPrincipals();
        log.debug("IndexController->index:", allPrincipals);
        return "index";
    }

    @RequestMapping("/console")
    public String home() {
        return "module/pribankcustmgt/remind";//修改默认主页
        //return "home";
    }

    @RequestMapping("/introduce")
    public String introduce() {
        return "introduce";
    }

    @RequestMapping("/admin")
    @ResponseBody
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    public String admin() {
        return "是管理员";
    }

    @RequestMapping("/user")
    @ResponseBody
    @PreAuthorize("hasRole('ROLE_USER')")
    public String user() {
        return "是普通用户";
    }

    @RequestMapping("/logout")
    public String logout() {
        return "redirect:login";
    }
}
