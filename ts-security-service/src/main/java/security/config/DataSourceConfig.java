package security.config;

import javax.sql.DataSource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@Slf4j
@EnableTransactionManagement
public class DataSourceConfig {

    @Primary
    @Bean(name = "dataSource1")
    @ConfigurationProperties(prefix = "spring.datasource.datasource1")
    public DataSource dataSource1() {
        DataSource dataSource = DataSourceBuilder.create().build();
        DataSourceConfig.log.info("dataSource1 URL: {}", dataSource.toString());
        return dataSource;
    }

    @Bean(name = "dataSource2")
    @ConfigurationProperties(prefix = "spring.datasource.datasource2")
    public DataSource dataSource2() {
        return DataSourceBuilder.create().build();
    }
}

