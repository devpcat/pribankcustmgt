package com.thyme;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * @author thyme
 * @ClassName SecurityMvcConfigurer
 * @Description 启动类
 * @Date
 */
@SpringBootApplication
@EnableScheduling
public class ThymeBootApplication {

    public static void main(String[] args) {
        SpringApplication.run(ThymeBootApplication.class, args);
    }
}
