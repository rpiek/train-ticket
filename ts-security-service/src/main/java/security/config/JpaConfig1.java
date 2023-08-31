package security.config;

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
@EnableJpaRepositories(basePackages = "security.repository.security", entityManagerFactoryRef = "entityManagerFactory1")
public class JpaConfig1 {

    @Autowired
    @Qualifier("dataSource1")
    private DataSource dataSource1;

    @Primary
    @Bean(name = "entityManagerFactory1")
    public LocalContainerEntityManagerFactoryBean entityManagerFactory1(EntityManagerFactoryBuilder builder) {
        return builder
                .dataSource(dataSource1)
                .packages("security.entity.security")
                .persistenceUnit("datasource1")
                .build();
    }
}

