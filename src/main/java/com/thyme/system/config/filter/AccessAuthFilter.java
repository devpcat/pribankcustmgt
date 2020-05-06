package com.thyme.system.config.filter;

import lombok.extern.slf4j.Slf4j;

import javax.servlet.*;
import java.io.IOException;

/**
 * @author thyme
 * @ClassName AccessAuthFilter
 * @Description TODO
 * @Date 2020/1/14 16:15
 */
@Slf4j
public class AccessAuthFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        filterChain.doFilter(servletRequest,servletResponse);
    }
}
