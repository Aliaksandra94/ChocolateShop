package com.moroz.config;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseType;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages = "com.moroz")
//@PropertySource(value = "classpath:mysql.properties")
@PropertySource(value = "classpath:h2.properties")
public class RootConfig {
    private Environment environment;

    @Autowired
    public void setEnvironment(Environment environment) {
        this.environment = environment;
    }

    public Properties hibernateProperties() {
        Properties properties = new Properties();
        properties.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
        properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
        properties.put("hibernate.hbm2ddl.auto", environment.getRequiredProperty("hibernate.hbm2ddl.auto"));
        properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
        return properties;
    }

    @Bean(name = "dataSource")
    public DataSource dataSource( //@Value("${spring.datasource.driverClassName}") String driverName,
                                  //@Value("${spring.datasource.url}") String url,
                                  //@Value("${spring.datasource.username}") String username,
                                  //@Value("${spring.datasource.password}") String password
    ) {
        BasicDataSource basicDataSource = new BasicDataSource();
        basicDataSource.setDriverClassName(environment.getRequiredProperty("datasource.driverClassName"));
        basicDataSource.setUrl(environment.getRequiredProperty("datasource.url"));
        basicDataSource.setUsername(environment.getRequiredProperty("datasource.username"));
        basicDataSource.setPassword(environment.getRequiredProperty("datasource.password"));

        return basicDataSource;
    }
//
//    private static void dropTable(BasicDataSource dataSource)
//            throws SQLException {
//        Statement stmt = dataSource.getConnection().createStatement();
//        String sql = "DROP TABLE IF EXISTS users";
//        DROP TABLE IF EXISTS users;
//        DROP TABLE IF EXISTS roles;
//        DROP TABLE IF EXISTS user_roles;
//        stmt.executeUpdate(sql);
//        stmt.close();
//        System.out.println("Table dropped");
//
//    }
//    private static void insertQuery(BasicDataSource dataSource) throws SQLException {
//        Statement stmt = dataSource.getConnection().createStatement();
//        String sql = "INSERT INTO Users VALUES('1','tom','chasing jerry')";
//        stmt.executeUpdate(sql);
//        sql = "INSERT INTO Users VALUES('2','jerry','eating chesse')";
//        stmt.executeUpdate(sql);
//        stmt.close();
//
//    }
//
//
//    private static void createTable(BasicDataSource dataSource)
//            throws SQLException {
//        Statement stmt = dataSource.getConnection().createStatement();
//        String sql = "CREATE TABLE 'Users' ('id'    TEXT,'name' TEXT,'passion'  TEXT,PRIMARY KEY(id));";
//        stmt.executeUpdate(sql);
//        stmt.close();
//        System.out.println("Table created");
//
//    }

    @Bean(name = "sessionFactory")
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan("com.moroz.entity");
        sessionFactory.setHibernateProperties(hibernateProperties());
        return sessionFactory;
    }

    @Autowired
    @Bean(name = "transactionManager")
    public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
        HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
        return transactionManager;
    }
}
