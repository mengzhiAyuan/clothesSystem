package com.xuan.base.config.front;


import java.util.HashSet;

import com.google.common.base.Predicates;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;


public class SwaggerConfig {

    @Configuration
    @EnableSwagger2
    public static class SwaggerConfig2 {

        @Bean
        public Docket webApiConfig() {
            return new Docket(DocumentationType.SWAGGER_2)
                    .groupName("webApi")
                    .apiInfo(webApiInfo())
                    .select()
                    .build();
        }

        private ApiInfo webApiInfo() {
            return new ApiInfoBuilder()
                    .title("服装租聘平台")
                    .description("本文档描述了接口定义")
                    .version("0.0")
                    .contact(new Contact("111", "", "xxx@163.com"))
                    .build();
        }
    }
}


