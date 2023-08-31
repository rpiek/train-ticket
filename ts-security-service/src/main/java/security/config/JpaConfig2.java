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
@EnableJpaRepositories(basePackages = "security.repository.order", entityManagerFactoryRef = "entityManagerFactory2")
public class JpaConfig2 {

    @Autowired
    @Qualifier("dataSource2")
    private DataSource dataSource2;

    @Bean(name = "entityManagerFactory2")
    public LocalContainerEntityManagerFactoryBean entityManagerFactory2(EntityManagerFactoryBuilder builder) {
        return builder
                .dataSource(dataSource2)
                .packages("security.entity.order")
                .persistenceUnit("datasource2")
                .build();
    }
}

