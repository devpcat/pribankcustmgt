package com.thyme.system.controller;

import com.thyme.common.base.Constants;
import org.apache.commons.lang3.StringUtils;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.PanelUI;

/**
 * @author thyme
 * @ClassName ErrorPageController
 * @Description TODO
 * @Date 2019/12/24 17:41
 */
@Controller
public class ErrorPageController implements ErrorController {

    private static final String ERROR_PATH = "/error";

    @RequestMapping(ERROR_PATH)
    public String error(HttpServletResponse response){
        if (Constants.INT_PAGE_ERROR == response.getStatus()){
            return Constants.STRING_PAGE_ERROR;
        }
        return Constants.STRING_PAGE_NOT_FOUND;
    }

    @Override
    public String getErrorPath() {
        return ERROR_PATH;
    }
}
