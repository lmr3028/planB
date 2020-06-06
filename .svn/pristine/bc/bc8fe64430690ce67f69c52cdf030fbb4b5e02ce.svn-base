package com.pioneer.developer.core.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {

	@Bean
	public Docket planB_API() {
		return new Docket(DocumentationType.SWAGGER_2)
				.groupName("판매자 상품관리")
				.apiInfo(new ApiInfoBuilder().version("1.0").title("Plan B :: 판매자 상품 관리 API").build())
				.select()
				.apis(RequestHandlerSelectors.basePackage("com.pioneer.developer.seller.product.web"))
				.build();
	}

}
