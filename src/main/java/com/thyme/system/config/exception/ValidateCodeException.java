package com.thyme.system.config.exception;

import org.springframework.security.core.AuthenticationException;

/**
 * @author thyme
 * @ClassName ValidateCodeException
 * @Description TODO
 * @Date 2019/12/17 21:25
 */
public class ValidateCodeException extends AuthenticationException {
    public ValidateCodeException(String message) {
        super(message);
    }
}
