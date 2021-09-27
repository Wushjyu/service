package com.example.teamproject.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
public class App_config {

	@Bean//jdbc랑 mybatis 연결과정
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
	SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
	sessionFactory.setDataSource(dataSource);
	Resource[] res = new PathMatchingResourcePatternResolver().getResources("classpath:/mapper/**/*.xml");
	sessionFactory.setMapperLocations(res);
	return sessionFactory.getObject();
	}

	@Bean//jdbc 한개
	public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
	System.out.println("sqlSessionFactory : " + sqlSessionFactory);
	return new SqlSessionTemplate(sqlSessionFactory);
	}
	
}
