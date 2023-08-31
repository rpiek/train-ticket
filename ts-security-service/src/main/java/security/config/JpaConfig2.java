package security.config;

import java.util.HashMap;
import java.util.Map;
import javax.sql.DataSource;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;

@Configuration
@EnableJpaRepositories(basePackages = "security.repository.order", entityManagerFactoryRef = "entityManagerFactory2")
public class JpaConfig2 {

    @Autowired
    @Qualifier("dataSource2")
    private DataSource dataSource2;

    @Bean(name = "entityManagerFactory2")
    public LocalContainerEntityManagerFactoryBean entityManagerFactory2(EntityManagerFactoryBuilder builder) {
        Map<String, Object> properties = new HashMap<String, Object>();
//        properties.put("hibernate.hbm2ddl.auto",
//                "update");
        properties.put("hibernate.dialect",
                "org.hibernate.dialect.MySQL8Dialect");
        properties.put("hibernate.physical_naming_strategy", "org.springframework.boot.orm.jpa.hibernate.SpringPhysicalNamingStrategy");
        return builder
                .dataSource(dataSource2)
                .packages("security.entity.order")
                .persistenceUnit("datasource2")
                .properties(properties)
                .build();
    }
}

