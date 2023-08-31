package security.config;

import javax.persistence.EntityManagerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

@Configuration
public class TransactionManagerConfig {

    @Autowired
    @Qualifier("entityManagerFactory1")
    private EntityManagerFactory entityManagerFactory1;

    @Autowired
    @Qualifier("entityManagerFactory2")
    private EntityManagerFactory entityManagerFactory2;

    @Primary
    @Bean(name = "transactionManager")
    public PlatformTransactionManager transactionManager1() {
        return new JpaTransactionManager(entityManagerFactory1);
    }

    @Bean(name = "transactionManager2")
    public PlatformTransactionManager transactionManager2() {
        return new JpaTransactionManager(entityManagerFactory2);
    }
}

