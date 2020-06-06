package com.pioneer.developer.core.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.mybatis.spring.boot.autoconfigure.SpringBootVFS;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
@MapperScan(basePackages = "com.pioneer.developer.**.mapper.**")
public class MybatisConfig {

	@Bean
	@ConfigurationProperties("spring.datasource")
	public DataSource dataSource() {
		return DataSourceBuilder.create().build();
	}

	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Throwable {
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		sessionFactory.setDataSource(dataSource);
		PathMatchingResourcePatternResolver matchingResolver = new PathMatchingResourcePatternResolver();
		sessionFactory.setConfigLocation(matchingResolver.getResource("classpath:config/mybatis/mybatis-config.xml"));
		sessionFactory.setVfs(SpringBootVFS.class);

		sessionFactory.setTypeAliasesPackage("com.pioneer.developer");

		Properties properties = new Properties();
		properties.setProperty("mapUnderscoreToCamelCase", "true");
		sessionFactory.setConfigurationProperties(properties);

		Resource[] res = matchingResolver.getResources("classpath:com/pioneer/developer/**/mapper/*.xml");
		sessionFactory.setMapperLocations(res);
		return sessionFactory.getObject();

	}
}