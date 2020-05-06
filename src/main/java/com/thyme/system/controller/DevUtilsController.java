package com.thyme.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author thyme
 * @ClassName DevUtilsController
 * @Description TODO
 * @Date 2020/1/15 16:05
 */
@Controller
@RequestMapping("/devUtils")
public class DevUtilsController {

    @GetMapping("/menuIcon")
    public String menuIcon() {
        return "module/devutils/menuIcon";
    }

    @GetMapping("/vCharts")
    public String vcharts() {
        return "module/devutils/vCharts";
    }
}
