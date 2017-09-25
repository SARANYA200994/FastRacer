package com.hibernateConfig;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate.HibernateTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.Dao.UserDao;
import com.DaoImpl.*;
import com.model.*;
@Configuration
@EnableTransactionManagement
@ComponentScan("com")
public class hiberConfig 
{
	@Autowired
	@Bean(name="datasource")
public DataSource getH2()
{ 
		System.out.println("Hibernate initiated...");
		DriverManagerDataSource dt=new DriverManagerDataSource();
		dt.setDriverClassName("org.h2.Driver");
		dt.setUrl("jdbc:h2:~/FastRacer");
		dt.setUsername("sa");
		dt.setPassword("");
		System.out.println("connection established");
		return dt;
}
private Properties getHiberProps()
{
	Properties p=new Properties();
	p.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
	p.put("hibernate.show sql", "true");
	p.put("hibernate.hbm2ddl.auto", "update");
	return p;
}
@Autowired
@Bean(name="sessionFactory")
public UserDao getuserDataImpl(SessionFactory sessionFac)
{
	return new userDaoImpl(sessionFac);
	}
@Autowired
@Bean(name="TransactionManager")
public HibernateTransactionManager getTransaction(SessionFactory sessionFactory);
{
	HibernateTransactionManager tm=new HibernateTransactionManager(sessionFactory);
return tm;
}
}