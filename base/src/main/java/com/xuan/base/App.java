package com.xuan.base;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * 项目入口启动文件
 *
 */
@SpringBootApplication
@EnableJpaAuditing
@ServletComponentScan
@EnableWebMvc
public class App
{
    public static void main( String[] args )
    {
    	 SpringApplication.run(App.class, args);
    }
}
