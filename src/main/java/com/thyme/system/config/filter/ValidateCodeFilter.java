package com.thyme.system.config.filter;

import com.thyme.common.base.Constants;
import com.thyme.common.utils.CacheUtils;
import com.thyme.system.config.exception.ValidateCodeException;
import com.thyme.system.config.security.handler.AuthenticationFailureHandler;
import com.thyme.system.service.RedisService;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;
import org.springframework.util.PathMatcher;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author thyme
 * @ClassName ValidateCodeFilter
 * @Description TODO
 * @Date 2019/12/17 20:53
 */
@Component
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class ValidateCodeFilter extends OncePerRequestFilter {

    //private final RedisService redisService;

    private final AuthenticationFailureHandler authenticationFailureHandler;

    private static final PathMatcher PATHMATCHER = new AntPathMatcher();

    private final CacheUtils cacheUtils;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        if (Constants.REQUEST_MODE_POST.equals(request.getMethod()) && PATHMATCHER.match(Constants.LOGIN_URL,request.getServletPath())){
            try {
                codeValidate(request);
            } catch (ValidateCodeException e){
                //验证码不通过，跳到错误处理器处理
                authenticationFailureHandler.onAuthenticationFailure(request,response,e);
                return;
            }
        }
        doFilter(request,response,filterChain);
    }

    private void codeValidate(HttpServletRequest request) {
        //获取传入的验证码
        String code = request.getParameter("code");
        String uuidCode = request.getParameter("uuidCode");
        if (StringUtils.isEmpty(code)){
            throw new ValidateCodeException("验证码的值不能为空");
        }
        //String codeVal = redisService.getCodeVal(uuidCode);
        String codeVal = cacheUtils.getCodeVal(uuidCode);
        if (StringUtils.isEmpty(codeVal)) {
            throw new ValidateCodeException("验证码已过期");
        }
        if (!StringUtils.equals(codeVal,code)) {
            throw new ValidateCodeException("验证码不匹配");
        }
    }
}

